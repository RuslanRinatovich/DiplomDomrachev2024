   M S B A M L   `   `   `  ����M  IWpfAssortmentCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:WpfAssortmentCheck.WindowsWpfAssortmentCheck.Windows  5   	   0    *WpfAssortmentCheck.Windows.AbonementWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:WpfAssortmentCheck.Windows     5   	   X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   
   -   5          � Title$  Абонемент��5	   	   $	��260��6   $	��800��6(      base_window_1#��[  64    � WindowStartupLocation$ CenterScreen=�6[   .��5
      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      $	��187 �6   �� 5      .+�5   
   �� $��Тренер��6   $��Center=�6"   $��0��6=   $��20 0 0 0q�6J   $��0��6]   $��16��6m   �� 5   
   -   5         ��Name$ 	TbTrainer��5   >   $��1��6   $��Center=�6#   $��0��6Q   $��30��6^   $	��0,7q�6j    �� 
IsReadOnly . 6w   $  Xceed.Wpf.Toolkit.DoubleUpDown  5   
   -   5          Name$ UpDownCount��5      $	��100��62   $
��Left=�5   4   �  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   	Increment$ 1X�5   6   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 0X�6D   $��1��6P   $��1��6]   	   Value	 5   O   �� *LessonCount+5   ]   �� 5!   
   $!��Стоимость, руб ��6   $��Center=�6+   $��2��6F   $��20 0 0 0q�6T   $��0��6g   $��20��6w     5"   
   -   5        $ UpDownPrice��5"      $
��Left=�6J   ,  &Xceed.Wpf.Toolkit.Primitives.InputBase
   CultureInfo$
 ru-RU��6e   $��2��5#      $��1��6,   $	��240��6<   $��2��6H   	 5"   2   �� *Price+5#   H   �� 5&   
   $��1��6   $��0��6!   $)��#Количество занятий��61   $��20 0 0 0q�6M   $��Center=�6`   �� 5'   
   $��3��6   $��0��6!   $��Секция��61   $��20 0 0 0q�6A   $��Center=�6T   �� 5(   
   -   5         ��Name$ ComboCategory��5(      $��3��6M   $��1��6Z    �� DisplayMemberPath$
 Name��6k    �� SelectedValuePath$ Id��5)       �� SelectedItem 5(   +   �� *
Category+5)      �� 5*   
   $��Center=�6    �� Orientation$ 
Horizontal=�62   $��7��6K   $��2��6X   $��127,0,103,0q�6l   $	��162��6�   .+�5+      �� -   5         �� 	IsDefault . $��60��5+   '   $��5q�65   .��6U   OK6Y   �� 5,       �� IsCancel . $��60��6%   $��5q�63   .��6>   Отмена6F   5-      5.      5/      