   M S B A M L   `   `   `  ����  Text Editor    Text_Editor.MainWindow   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      /ui&http://schemas.lepo.co/wpfui/2022/xaml  5        � Title$  
TextEditor��5	      $	��600��5
      $	��600��5       � WindowStartupLocation$ CenterScreen=�5       J� InputBindings 5      �� 5   
    �� Command$  ApplicationCommands.SaveAs��6    �� Gesture$ Ctrl+Shift+S��6:   �� 5   
   $ ApplicationCommands.Close��6   $	 Esc��69    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Open��5      6<     5   
   -   5        $  ApplicationCommands.SaveAs��5      6>     5   
   -   5        $ ApplicationCommands.Save��5      6<     5   
   -   5        $ ApplicationCommands.Close��5      6=     5   
   -   5        $ ApplicationCommands.New��5      6;     5   
   -   5        $ ApplicationCommands.Find��5      6<   .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $��* �6    �� 5       $
��Auto �6    .+�5$      ]� $��0��6   .+�5%      o� 
������ $
��Left=�5'      $��15(�5(      .@�5)      m� $��0,0,0,0q�5*      $��6,6,6,6q�5+      $��_File��5,      .@�5-      m�  m� Command$ ApplicationCommands.New��5.      $	��New��5/      	 m� InputGestureText$	 Ctrl+N��51      
 m� Icon
 50      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ FilePlusOutline=�51      m� 52      -   5        $��
New window��52   5   m� 53      $ ApplicationCommands.Open��54      $
��Open��55      $	 Ctrl+O��56      m� 57      $ ApplicationCommands.Save��58      $
��Save��59      
 5:        $ ContentSave=�m� 5;      $  ApplicationCommands.SaveAs��5<      $��	Save As..��5=      $	 Ctrl+Shift+S��5>      �� 5?      m� 5@      $ ApplicationCommands.Close��5A      $
��Exit��5B      
 5C        $ 	ExitToApp=�5D      m� 5E      $��_Edit��6   .@�5F      m� $	 Cut��5G      $
��_Cut��5H      $	 Ctrl+X��5J      
 5I        $ 
ContentCut=�5J      m� 5K      $
 Copy��5L      $��_Copy��5M      $	 Ctrl+C��5O      
 5N        $ ContentCopy=�5O      m� 5P      $ Paste��5Q      $��_Paste��5R      $	 Ctrl+V��5T      
 5S        $ ContentPaste=�5T      �� 5U      m� 5V      $
 Find��5W      $��_Find��5X      $	 Ctrl+F��5Z      
 5Y        $ Magnify=�5Z      5[      5\      c� 5^      $��Right=�5`      $��LeftToRight=�5a      ��5_      Z� .@�5b      d� -   5        $��btnBold��5c      $ ��EditingCommands.ToggleBold��5d      ��5e        $ 
FormatBold=�   Size 20d� 5g      -	   5        $��	btnItalic��5h      $"��EditingCommands.ToggleItalic��5i      ��5j        $ FormatItalic=� 20d� 5l      -
   5        $��btnUnderline��5m      $%��EditingCommands.ToggleUnderline��5n      ��5o        $ FormatUnderline=� 20�� 5q      �� 5r      -   5        $��cmbFontFamily��5s      $	��150��5t      5u      �� 5v      -   5        $��cmbFontSize��5w      $��50��5x       �� 
IsEditable$
 True��5y      5z      5{      5|      �� 5~      -   5        $��	rtbEditor��5      $��1��5�      " �� VerticalScrollBarVisibility$
 Auto=�5�      �� 5�      $��2��6   .@�5�      �� .��5�      �� -   5        $��lblCursorPosition��5�       5�      5�      5�      5�      5�      