   M S B A M L   `   `   `  ����F  BText Editor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Text_EditorText_Editor  5          Text_Editor.FindDialog   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:Text_Editor     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      -   5          � Title$  
FindDialog��5      $	��400��5	      $	��200��5
       � 
ResizeMode$ NoResize=�5       � WindowStartupLocation$ CenterScreen=�5      .��5      � $��5q�6   .+�5   
   �� .@�5      �� $
��Find��6   ��5      � 5       � ColumnDefinitions 5      �� 5      $��2* �6/   �� 5      $��1* �6/    � RowDefinitions 5      �� 5      $
��Auto �6,   �� 5      $
��Auto �6,   �� 5      $
��Auto �6,   .+�5      �� $��0��5      $��0��5       �� Orientation$ 
Horizontal=�5       .+�5!      �� $��10q�6$   .��60   
Find what:6<   �� 5"      -   5         ��Name$ findComboBox��5#   !   $	��150��5$   !   $��10q�5%   !    �� 
IsEditable$
 True��5&   !   5'      �� 5(      -   5        $��0��5)      $��1��5*      $��70��5+      $��10q�5,      .��5-   .   	Find next5/      �� 50      -   5        $��1��51      $��1��52      $��70��53      $��10q�54      .��55   +   Count57      �� 58      -   5        $��2��59      $��1��5:      $��70��5;      $��10q�5<      .��5=   -   
Find All5?      5@      5B      5C      5D      5E      