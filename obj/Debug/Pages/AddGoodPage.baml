   M S B A M L   `   `   `  ����M  IWpfAssortmentCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WpfAssortmentCheck.PagesWpfAssortmentCheck.Pages  5      *    $WpfAssortmentCheck.Pages.AddGoodPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      2local&clr-namespace:WpfAssortmentCheck.Pages  5         	base_page#��[  6<     N� Title$:  4Добавление и редактирование��5      .��5      �  � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $	��100 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      $	��160 �6   �� 5      .+�5   
   �� $��4��6   $��2��6!   �� 5!   
   $��6��6   $��0��6!   $��Секции��61   $
��20 0q�6@   %  Xceed.Wpf.Toolkit.CheckComboBox  5"   
   -   5          Name$ ComboCategories��5"      $��6��67   $��1��6D    �� DisplayMemberPath$
 Name��5#   %   +  %Xceed.Wpf.Toolkit.Primitives.Selector   SelectedMemberPath$ Selected��6?   $��34��6]      MaxDropDownHeight$	 150Q�6k   �� 5%   
   $��4��6   $��0��6!   $ ��Дата рождения:��61   $
��20 0q�6H   (  "System.Windows.Controls.DatePicker  5&   
   -   5          Name$ DatePickerBirthday��5&      $��4��63   $��1��6@   $	��0,2q�6r      SelectedDate 6P   �� *
Birthday+6r   �� 5'   
   -   5        	 ��Name$	 TextBoxGoodId��5'      $��4��6A   $��1��6N   $	��0,2q�6^   
 �� 
IsReadOnly
 . $y�	Collapsed=�6~   ��6)   �� *GoodId+6~   �� 5(   
   $$��Стаж работы, лет.��6   $��5��6.   $��0��6;   $��Center=�6L   $��	20,7,20,6q�6g   %  Xceed.Wpf.Toolkit.IntegerUpDown  5)   
   -   5          Name$ UpDownWorkExperience��5)      $	��100��5*   5   $
��Left=�5+   4   �  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   	Increment$ 1X�6O   $��5��5,   U   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Minimum$ 0X�6b   $��1��5-   4   $	��0,2q�6D      Value 5,   4   �� *WorkExperience+5-   D   �� 5/   
   -   5         ��Name$ 
ImagePhoto��5/      $��7��6@   $��1��6M   $��Stretch=�50      $��Stretch=�6,   ��5/   $   �� *
GetPhoto+50   ,   �� 51   
   -   5         ��Name$ BtnLoad��51      $��7��6"   $��0��6/   $��	20,30,0,0q�6?   $
��Left=�52      $	��Top=�6,   $��Загрузить��53   &   �� 55   
   -   5        $ BtnSave��55      $��8��6"   $��Сохранить��6/   $��Center=�6D   $��140,5,340,0q�6a   $	��Top=�6v   $	��120��6�   $��1��56   &   �� 57   
   $��0��6   $��Фамилия:��6$   $
��20 0q�65   �� 58   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Фамилия��6,   $��20 5 0 0q�6V   $��1��6i   $��Center=�6y   $��0��6�   $��30��6�   $	��0,7q�6�   ��6   �� *
LastName+6�   �� 59   
   $ Имя��6-   $��20 5 0 0q�6S   $��1��6f   $��Center=�6v   $��1��6�   $��30��6�   $	��0,7q�6�   ��6   �� *	FirstName+6�   �� 5:   
   $ Отчество��6.   $��20 5 0 0q�6Y   $��1��6l   $��Center=�6|   $��2��6�   $��30��6�   $	��0,7q�6�   ��6   �� *
MiddleName+6�   �� 5;   
   $��0��6   $��Имя:��6$   $��1��60   $
��20 0q�6>   �� 5<   
   $��0��6   $��Отчество:��6$   $��2��65   $
��20 0q�6B   �� 5=   
   $��0��6   $��Информация:��6$   $��3��67   $
��20,0q�6D   �� 5>   
   $ Информация��6(   $��20 5 0 0q�5?      $��1��6%   $��Stretch=�5@      $��3��6.    �� TextWrapping$
 Wrap=�6;   $	��0,7q�6O   $��Disabled=�6\   $
��Auto=�5A   
   ��5>      �� *Info+5A   
   5B      5C      