   M S B A M L   `   `   `  ����M  IWpfAssortmentCheck, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:WpfAssortmentCheck.WindowsWpfAssortmentCheck.Windows  5   	   ,    &WpfAssortmentCheck.Windows.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   4local(clr-namespace:WpfAssortmentCheck.Windows  5   	     � Title$  Вход��5	      $	��250��6   $	��400��5
   	   $	��250��6   $	��400��6%    � WindowStartupLocation$ CenterScreen=�5   	      base_window_1#��[  6/    � 
ResizeMode$ NoResize=�5   	   .��5      �  � ColumnDefinitions 5   
   �� 5       � RowDefinitions 5   
   �� 5      $��75 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      �� 5      $��20 �6   .+�5   
   � '  !MaterialDesignThemes.Wpf.PackIcon  5   
      Kind$ LoginVariant=�6"     PrimaryHueMidBrush#��[ 66   $��	10,10,0,0q�5      $
��Left=�5      $��55��6+   $��62��67   �� 5   
   $��0��6   $,��&АИС Спортивная школа��6!   $��Center=�5      $��Center=�5      $��16(�5       $
��Wrap=�6"    �� TextAlignment$ Center=�66   $
��Bold"�5!      $��60��6&   $��
65,10,48,5q�62   $	��281��6F   �� 5$      -   5         ��Name$ TbLogin��5$      $��1��6(   $��1��5%      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин��6&   $	��300��5&      $��admin��6"   G� 5(   
   -   5        	 G�Name$	 TbPass��5(      $��30��6&   $	��300��62   $ Пароль��6>   
 G� Password$
 1��6f   $��2��6s   �� 5)   
    �� Orientation$ 
Horizontal=�6   $��3��6.   $��Center=�6;   .+�5*      �� -   5         ��Name$ BtnOk��5,      $	��100��5*      $��30��6!   $��OK��5+      5-      �� 5.      -   5        $ 	BtnCancel��51      $	��100��5.      $��30��5/      $��Cancel��50      52      53      �� 54   
   -   5        $��4��54      $��Регистрация��6   $��0q�64   $��10(�6@   $��20��6N   6Z   )  #MaterialDesignThemes.Wpf.DialogHost  55   
   -   5          Name$ 
DialogHost��55   $   $��1q�56   #      DialogContent 57      �� 5:      .+�5<      � $	��Top=�6   $��35, 60q�63   $	��180��6C   $	��420��6P   .+�5=      �� $��Регистрация ��6   $��Center=�63   $	��Top=�6P   $��0 0 0 20q�6h   
�������$��18(�6�   �� 5>      $��Center=�6!   $��15q�6<   .+�5?      �� -   5        $ 
tbRegLogin��5?   "   $��0, 10q�66    �� TextAlignment$
 Left=�6F   $ 
ЛОГИН��6[   $��18(�6�   G� 5@      -   5        $	 psbPassword1��5@   &   $
��0,10q�6<   $ ПАРОЛЬ��6J   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton . $��18(�6�   G� 5A      -	   5        $	 psbPassword2��5A   *   $
��0,10q�6@   $ ПАРОЛЬ��6N    . $��18(�6�   5B      5C      �� 5D      $��Center=�6   $��10 20q�6:   .+�5F      �� $ 
Horizontal=�6!   $��Center=�6:   .+�5G      �� -
   5        $ btnOk��5G   !   .��5H      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5I   "     $ Check=�6:   $��5q�6H   $��Center=�6S   �� 5J   "   $��Ok��6,   $��Center=�66   5K      5M      �� 5P      -   5        $ 	btnCancel��5P   !   .��5Q      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5R   "     $ Cancel=�6:   $��5q�6I   $��Center=�6T   �� 5S   "   $��Cancel��6,   $��Center=�6:   5T      5U      5V      5W      5X      5Z      5[      5\      