   M S B A M L   `   `   `  ����M  IWpfAssortmentCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:WpfAssortmentCheck.WindowsWpfAssortmentCheck.Windows  5   	   0    *WpfAssortmentCheck.Windows.MakeOrderWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      4local(clr-namespace:WpfAssortmentCheck.Windows  5   	     � Title$#  Оставить заявку��5
   	   $	��260��6!   $	��800��6.      base_window_1#��[  6:    � WindowStartupLocation$ CenterScreen=�6a   .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      $	��187 �6   �� 5      .+�5   
   �� $��Пользователь��6   $��Center=�6(   $��0��6C   $��20 0 0 0q�6P   $��0��6c   $��16��6s   �� 5   
   -   5         ��Name$ TbUser��5   >   $��1��6   $��Center=�6#   $��0��6N   $��30��6[   $	��0,7q�6g    �� 
IsReadOnly . 6t   �� 5!   
   $��Абонемент ��6   $��Center=�6&   $��3��6A   $��20 0 0 0q�6O   $��0��6b   $��20��6r   �� 5%   
   $��2��6   $��0��6!   $��Тренер��61   $��20 0 0 0q�6A   $��Center=�6T   �� 5&   
   $��1��6   $��0��6!   $��Секция��61   $��20 0 0 0q�6A   $��Center=�6T   �� 5'   
   -   5         ��Name$ ComboCategory��5'      $��1��6M   $��1��6Z    �� DisplayMemberPath$
 Name��6k    �� SelectedValuePath$ Id��5(      	 �� SelectedItem	 5'   +   �� *
Category+5(   *   �� 5)   
   -   5        $ ComboTrainer��5)      $ Id��6*   $��2��6B   $��1��6O   ��5*      �� 5+      .R�5,      �� 
 �� Orientation$
 
Horizontal=�6!   .+�5-      �� $��15��6<   $��5 0 5 0q�6G   ��6    �� *
GetPhoto+6G   �� 5.      ��6$   �� *GetFio+5/      50      52      �� 53   
   -   5        $ ComboAbonement��53      $��3��6-   $��1��6:   $ Id��6J   ��54      �� 55      .R�56      �� $
 
Horizontal=�6!   .+�57      �� $��Center=�6,   $��Center=�6G   $
��Bold"�6d    
 akcent#��[ 58   _   ��6%   �� *LessonCount+ �� StringFormat$ {0} занятий��6_   �� 59      $��Center=�6-   $��Center=�6H   ���	#FF18BADE$
��Bold"�6}   ��5:   %   �� *Price+$ c�� �� ConverterCulture$ ru-RU��5<      5=      5?      �� 5A   
   $��Center=�6   $
 
Horizontal=�62   $��8��6K   $��2��6X   $��127,0,103,0q�6l   $	��162��6�   .+�5B      �� -   5         �� 	IsDefault . $��60��5B   '   $��5q�65   .��6U   OK6Y   �� 5C       �� IsCancel . $��60��6%   $��5q�63   .��6>   Отмена6F   5D      5E      5F      