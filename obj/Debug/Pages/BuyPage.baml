   M S B A M L   `   `   `  ����M  IWpfAssortmentCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WpfAssortmentCheck.PagesWpfAssortmentCheck.Pages  5      &     WpfAssortmentCheck.Pages.BuyPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      2local&clr-namespace:WpfAssortmentCheck.Pages  5      -   5           	base_page#��[  5        N� Title$+  %Покупка абонементов��5       � 	Resources 5      )  #System.Windows.Controls.DataGridRow �� 
TargetType  	grid_item �� Property �� Value��%   &	       �� 5   
   "  6   .�5      ��  � �� 6+   �� *Color+�� 5       � ��$ 1q�60   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DataGridGood��5      $��0��6)      AutoGenerateColumns .     
IsReadOnly . 	   SelectionMode$	 Single=�5      #��[ 5      
   RowStyle
 5      �� 5       "  6   .�5!      ��  � �� 63   �� *Status.Color+5"         Columns 5$      0  *System.Windows.Controls.DataGridTextColumn  5&      ,  &System.Windows.Controls.DataGridColumn   Header$% Номер абонемента��6<      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6V   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Id+6V     5'      $ Статус��6E   $ * 6U    6%   �� *Status.Name+6U     5(      $ Клиент��6E   $ 2* 6U    6%   �� *User.GetFio+6U     5)      $ Секция��6a   $ 2* 6q    6%   �� *)'Abonement.CategoryTrainer.Category.Name+6q     5*      $ Тренер��6b   $ * 6r    6%   �� **(Abonement.CategoryTrainer.Trainer.GetFio+6r     5+      $> 8Оставшееся количество занятий��6J   $ * 6q    6%   �� *LessonsLeftCount+6q     5,      $2 ,Дата покупки абонемента��6[   $ * 6|    6%   �� *
DateTime+ �� ConverterCulture$ ru-RU��6|     5.      $ Стоимость��6I   $ * 6\    6%   �� *Abonement.Price+6\   4  .System.Windows.Controls.DataGridTemplateColumn  50      $
 auto 6)   $ Подробнее��66   -   5        
EditColumn��   CellTemplate 51      �� 52      .R�53      ��  ��Name$ BtnEdit��6%   -   5          MaterialDesignFlatButton#��[ 53   L   $��0q�6~   .��54   "   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 
DotsSquare=�6:   55      56      58        59      $
 auto 6)   $ Посещение��66    5:      �� 5;      .R�5<      �� $ BtnLook��6%   -   5        #��[ 5<   L   $��0q�6�   ��6~   0	  *MaterialDesignThemes.Wpf.PackIconExtension	   	  Kind$	 Eye=�5>      5?      5A      5D      �� 5E   
    �� Orientation$ 
Horizontal=�6   $��1��6.   $��Center=�6;   .+�5I      �� -   5        $ BtnAdd��5I      $��1��6%   $	��100��62   $��Добавить��5J      6$   �� 5K      -   5        $ 	BtnDelete��5K      $��1��6(   $	��100��65   $��3q�6A   $��Удалить��5L      6#   �� 5M      -   5        $ 	BtnStatus��5M      $��1��6(   $	��100��65   $��3q�6A   $��Статусы��5N      6#   �� 5O      $ 
Horizontal=�6   .+�5P      �� -	   5         ��Name$ cmbSearchType��5P      
�������$��Stretch=�6F   $��Center=�6b   $	��200��6�    �� SelectedIndex$ 0��6�   $��10,0,0,0q�6�   .@�5Q      �� $7��1Поиск по номеру абонемента��6#   �� 5R      $$��Поиск по клиенту��6#   5T      �� 5U      -
   5         ��Name$ 
tbSearchID��5U      $
�� 100��6.   $��1q�6<   
�������6P   �� 5V      -   5        $ 	btnSearch��5V      $��60��6,   
�������
���   �.��5X        $ Search=�6.   ���#FF0000$��Center=�6Q   5[      �� 5\      -   5        $ btnClearSearch��5\      $��60��61   
�������
���   �.��5^        $ Cancel=�6.   ���#FF0000$��Center=�6Q   5a      �� 5b      -   5        $ btnExcel��5b      $��60��6+   
�������
���   �.��5d        $ 	FileExcel=�6.   ���	#FF087008$��Center=�6V   5g      5h      5i      5k      5l      