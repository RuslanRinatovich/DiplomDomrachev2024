   M S B A M L   `   `   `  ����M  IWpfAssortmentCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:WpfAssortmentCheck.WindowsWpfAssortmentCheck.Windows  5      0    *WpfAssortmentCheck.Windows.AddNewOrderPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:WpfAssortmentCheck.Windows     5      X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      -   5           	base_page#��[  5
   0     N� Title$  Заявка��5   	   .��5      �  � RowDefinitions 5   
   �� 5      -   5         ��Name$ 
rwOrderNum��5   (   $��40 �6   6(   �� 5      $��90 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      -   5        $ rwPrice��5   (   $��40 �6   6(   �� 5      -   5        $ rwButton��5   (   $��60 �6   6(    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      .+�5   
   �� $��0��6   $��2��6!   �� 5    
   $��0��6   $��0��6   $"��Номер договора:��6-   $��Center=�6G   $
��Left=�6c   $
��20,0q�6~   $��18(�6�   �� 5!   
   -   5         ��Name$ 	tbOrderId��5!      $��0��6%   $��1��62    �� 
IsReadOnly . $��18(�6i   $	��0,2q�6w   ��6T   �� *Id+6w   �� 5$   
   -   5        $ tbClient��5$      $��1��6$   $��1��61    . $��18(�6T   $	��0,2q�6b   �� 5%   
   $��1��6   $��0��6"    �� Orientation$ 
Horizontal=�62   .+�5&      �� $��Клиент:��6   $	��Top=�6'   $
��Left=�6@   $
��20,0q�6[   $��18(�6i   �� 5'      -   5         ��Name$ btnLoadClient��5'      $	��Top=�6,   $��Right=�6E   $��0q�6a   $��40��6n   .��5(      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Search=�6*   5)      5*      �� 5+   
   $��Абонемент ��6   $��Center=�6&   $��4��6A   $��20 0 0 0q�6O   $��0��6b   $��20��6r   $��18(�6~   �� 5,   
   $��Дата покупки ��6   $��Center=�6)   $��5��6D   $��20 0 0 0q�6R   $��0��6e   $��20��6u   $��18(�6�   �� 5/   
   $��3��6   $��0��6!   $��Тренер��61   $��20 0 0 0q�6A   $��Center=�6T   $��18(�6p   �� 50   
   $��2��6   $��0��6!   $��Секция��61   $��20 0 0 0q�6A   $��Center=�6T   $��18(�6o   �� 51   
   -   5        	 ��Name$	 ComboCategory��51      $��2��6M   $��18(�6Z   $��1��6h   
 �� DisplayMemberPath$

 Name��6y    �� SelectedValuePath$ Id��52       �� SelectedItem 51   +   �� *
Category+52   *   �� 53   
   -	   5        $	 ComboTrainer��53      $ Id��6*   $��3��6B   $��1��6O   $��18(�6_   ��54      �� 55      .R�56      �� $ 
Horizontal=�6!   .+�57      �� $��15��6<   $��5 0 5 0q�6G   ��6    �� *
GetPhoto+6G   �� 58      ��6$   �� *GetFio+59      5:      5<      �� 5=   
   -
   5        $	 ComboAbonement��5=      $��4��6-   $��1��6:   $ Id��6J   $��18(�6a   ��5>      �� 5?      .R�5@      �� $ 
Horizontal=�6!   .+�5A      �� $��Center=�6,   $��Center=�6G   $
��Bold"�6d    
 akcent#��[ 5B   _   ��6%   �� *LessonCount+ �� StringFormat$ {0} занятий��6_   �� 5C      $��Center=�6-   $��Center=�6H   ���	#FF18BADE$
��Bold"�6}   ��5D   %   �� *Price+$ c�� �� ConverterCulture$ ru-RU��5F      5G      5I      &   Xceed.Wpf.Toolkit.DateTimePicker  5K   
   -   5          Name$ DatePickerDate��5K      $��5��66   $��1��6C   $��20 0 0 0q�6S   ,  &Xceed.Wpf.Toolkit.Primitives.InputBase   CultureInfo$ ru-RU��6�   $��18(�6�   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value 6g   �� *
DateTime+6�   �� 5L   
   $��6��6   $��0��6   $ ��Статус заявки:��6-   $��Center=�6F   $
��Left=�6b   $
��20,0q�6}   $��18(�6�   �� 5M   
   -   5        $	 ComboStatus��5M      $��6��6)   $��1��66   $

 Name��6G   $��18(�6a   {�.  $ Id��5N      �� 5P   
   $ 
Horizontal=�6   $��7��6/   $��2��6<   $��10q�6P   $��Center=�6\   .+�5Q      �� -   5        $ btnSave��5Q      $��Оформить��6'   $��Center=�6;   $��Bottom=�6X   $	��120��6s   6   �� 5R      -   5        $ btnExcel��5R      $��Квитанция��6(   $��Center=�6=   $��Bottom=�6Z   $	��120��6u   $y�	Collapsed=�6�   5S      5T      5U      