   M S B A M L   `   `   `  ����M  IWpfAssortmentCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WpfAssortmentCheckWpfAssortmentCheck  5   	   #    WpfAssortmentCheck.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      ,local clr-namespace:WpfAssortmentCheck  5   	   -   5        $	��450��5   	   $	��800��6     � Icon$3  -/WpfAssortmentCheck;component/Resources/1.ico��6"    � WindowStartupLocation$ CenterScreen=�5   !      base_window_1#��[  6F    � Title 5	      ��  �� ElementName$ 	MainFrame�� �� Path$ Content.Title�.��5      �  � RowDefinitions 5   
   �� 5      $��75 �6   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   � �� 5   
     MaterialDesignBody#��[ 6   �� 5   
   $3��-/WpfAssortmentCheck;component/Resources/1.ico��6   $��
20,10,0,10q�5      $
��Left=�5      $��55��6+   $��63��67   �� 5   
   $��0��6   $0��*АИС «Спортивная школа»��6!   $��Center=�5      $��	20 0 0 0 q�61   $��Center=�5      
�������$��20(�5      $
��Bold"�5       � 5   
   -   5          �Name$ 	MainFrame��5      $��1��6#     � NavigationUIVisibility$ Hidden=�5       $��1q�5!      6$   �� 5"   
   $��0��6    �� Orientation$ 
Horizontal=�6"   $��Right=�6;   $��0 0 20 0q�6W   .+�5#      �� -   5        	 ��Name$	 BtnEditGoods��5#      
 � ToolTip$
 Тренеры��6F     MaterialDesignFlatButton#��[ 5$      $y�	Collapsed=�6G   ��5%      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ AccountMultiplePlus=��� 5'      -   5        $	 BtnOrder��5'      $
 Заявки��6?   #��[ 5(      $y�	Collapsed=�6G   ��5)        $ OrderBoolAscending=��� 5+      -   5        $	 BtnBuyes��5+      $
 Абонементы��6?   #��[ 5,      $y�	Collapsed=�6G   ��5-        $
 Cash=��� 5/      -   5        $	 BtnMyAccount��5/      $
 Мой профиль��6G   #��[ 50      $y�	Collapsed=�6F   ��51        $ Account=��� 54      -   5        $	 BtnEnter��54      $
 
Войти��6?   #��[ 6O   .��55      '  !MaterialDesignThemes.Wpf.PackIcon  -   5          Name$ 
IconBtnKey��55   *      Kind$ Login=�6?   $��0q�6L   56      �� 59      -	   5        $	 BtnBack��59      $
 
Назад��5:   '   #��[ 5;      $y�	Collapsed=�6H   ��5<        $ 	ArrowBack=�5>      �� 5?   
   $��2��6   #��[ 6!   5A      5B      