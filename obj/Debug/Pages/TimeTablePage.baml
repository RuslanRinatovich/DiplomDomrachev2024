   M S B A M L   `   `   `  ����M  IWpfAssortmentCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WpfAssortmentCheck.PagesWpfAssortmentCheck.Pages  5      ,    &WpfAssortmentCheck.Pages.TimeTablePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:WpfAssortmentCheck.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        N� Title$  Расписание��5
   	      	base_page#��[  6   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��300 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��2��6.   .+�5      �� $%��Выберите тренера��6    $  MaterialDesignSubtitle2TextBlock#��[ 64   �� 5      -   5         ��Name$ 
ComboGoods��5   5   $��Stretch=�6   $	��400��6I    �� SelectedValuePath$ Id��5       �� DisplayMemberPath$ GetFio��5      5      � 5   
   -   5         �Name$ GridGood��5      $	��300��6!   $��1��6-   $��0��6:    5      �� 5       $	��310 �6    �� 5"      $
��auto �6    .+�5%      �� $	��240��6   $��0��6    $��Uniform=�6-   $��Center=�5&       ��5'       ��  �� Path$ GetPhoto��� 5(      $��1��65   $
��Wrap=�6B   	 �� TextAlignment$	 Center=�6V    
 akcent#��[ 6m   $��Center=�5)   1   $
��Bold"�6N   $��Center=�6`   $��14(�5*   1   $��10q�6?   $	��280��6K   ��5(      �� *GetFio+5*   K   5-      &   System.Windows.Controls.DataGrid  5.   
   -   5        
  Name$
 DtData��5.         AutoGenerateColumns .  $��1��6@   $��1��6M      
IsReadOnly .    SelectionMode$ Single =�50         Columns 51      0  *System.Windows.Controls.DataGridTextColumn  52      ,  &System.Windows.Controls.DataGridColumn   Header$ № п��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *Id+  53      $ Программа��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6j    68   �� *CategoryTrainer.Category.Name+6j     54      $ День недели��6%    6:   �� *	DayWeek+  55      $ Время занятий��6%   $ * 6j    6<   �� *	DayTime+ �� StringFormat$ t��6j   4  .System.Windows.Controls.DataGridTemplateColumn  56      $
 auto 6)      CellTemplate 57      �� 58      .R�59      ��  ��Name$ BtnEdit��6%   -   5          MaterialDesignFlatButton#��[ 59   7   $��0q�5:   i   ��6%   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$
 Edit=�6i   5;      5=        5>      $
 auto 6)    5?      �� 5@      .R�5A      �� $ 	BtnDelete��6%   -   5        #��[ 5A   9   $��0q�5B   m   ��6%     $ Delete=�6m   5C      5E      5G      �� 5H   
   -   5        $ btnAdd��5H   0   $��2��6   $��1��6   $��Right=�6A   $��3q�6]   ��5I        $ AddBold=�6B   5J      5K      