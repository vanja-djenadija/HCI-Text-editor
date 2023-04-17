using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Text_Editor
{
    /// <summary>
    /// Interaction logic for FindDialog.xaml
    /// </summary>
    public partial class FindDialog : Window
    {
        private RichTextBox rtbEditor;
        List<TextRange> ranges = new();
        static List<String> words = new();
        MatchCollection matchCollection = null;
        string previousString = "";
        int count = 0;

        public FindDialog(RichTextBox rtbEditor)
        {
            this.rtbEditor = rtbEditor;
            InitializeComponent();
            foreach (string word in words)
            {
                findComboBox.Items.Add(word);
                findComboBox.SelectedItem = previousString;
            }
        }

        private void Count(object sender, RoutedEventArgs e)
        {
            string text = new TextRange(rtbEditor.Document.ContentStart, rtbEditor.Document.ContentEnd).Text;
            MatchCollection matches = Regex.Matches(text, findComboBox.Text);
            MessageBox.Show("Found " + matches.Count + " occurences.");
        }

        private void FindNext(object sender, RoutedEventArgs e)
        {
            if (findComboBox.Text.Trim().Equals(previousString))
            {
                count++;
            }
            else
            {
                ranges.Clear();
                count = 0;
                string newWord = findComboBox.Text.Trim();
                if (String.IsNullOrEmpty(newWord))
                    return;
                if (!words.Contains(newWord))
                    words.Add(newWord);
                Regex reg = new Regex(newWord, RegexOptions.Compiled | RegexOptions.IgnoreCase);
                TextPointer position = rtbEditor.Document.ContentStart;

                while (position != null)
                {
                    if (position.GetPointerContext(LogicalDirection.Forward) == TextPointerContext.Text)
                    {
                        string text = position.GetTextInRun(LogicalDirection.Forward);
                        matchCollection = reg.Matches(text);

                        foreach (Match match in matchCollection)
                        {
                            TextPointer start = position.GetPositionAtOffset(match.Index);
                            TextPointer end = start.GetPositionAtOffset(newWord.Length);

                            TextRange textrange = new TextRange(start, end);
                            ranges.Add(textrange);
                        }
                    }
                    position = position.GetNextContextPosition(LogicalDirection.Forward);
                }
            }
            rtbEditor.SelectAll();
            rtbEditor.Selection.ApplyPropertyValue(TextElement.BackgroundProperty, new SolidColorBrush(Colors.White));

            previousString = findComboBox.Text.Trim();

            if (matchCollection == null)
                return;
            if (count < matchCollection.Count)
            {
                TextRange range = ranges.ElementAt(count);
                range.ApplyPropertyValue(TextElement.BackgroundProperty, new SolidColorBrush(Colors.Yellow));
            }
            else
            {
                previousString = "";
            }


            // upadate all searched words in combobox
            findComboBox.Items.Clear();
            foreach (string word in words)
            {
                findComboBox.Items.Add(word);
                findComboBox.SelectedItem = previousString;
            }
        }

        private void FindAll(object sender, RoutedEventArgs e)
        {
            rtbEditor.SelectAll();
            rtbEditor.Selection.ApplyPropertyValue(TextElement.BackgroundProperty, new SolidColorBrush(Colors.White));

            Regex reg = new Regex(findComboBox.Text.Trim(), RegexOptions.Compiled | RegexOptions.IgnoreCase);
            TextPointer position = rtbEditor.Document.ContentStart;
            List<TextRange> ranges = new List<TextRange>();
            while (position != null)
            {
                if (position.GetPointerContext(LogicalDirection.Forward) == TextPointerContext.Text)
                {
                    string text = position.GetTextInRun(LogicalDirection.Forward);
                    var matchs = reg.Matches(text);

                    foreach (Match match in matchs)
                    {
                        TextPointer start = position.GetPositionAtOffset(match.Index);
                        TextPointer end = start.GetPositionAtOffset(findComboBox.Text.Trim().Length);


                        TextRange textrange = new TextRange(start, end);
                        ranges.Add(textrange);
                    }
                }
                position = position.GetNextContextPosition(LogicalDirection.Forward);
            }

            foreach (TextRange range in ranges)
            {
                range.ApplyPropertyValue(TextElement.BackgroundProperty, new SolidColorBrush(Colors.Yellow));
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            rtbEditor.SelectAll();
            rtbEditor.Selection.ApplyPropertyValue(TextElement.BackgroundProperty, new SolidColorBrush(Colors.White));
            MainWindow.findWindowOpen = false;
        }
    }
}
