   M S B A M L   `   `   `  ����  GUI_RegexLexer    GUI_RegexLexer.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F   -   5          � Title$  
MainWindow��5   	   $	��480��5   	   $
��1101��5   	    � WindowState$ 	Maximized=�5	   	   .��5
      �  � RowDefinitions 5   
   �� 5      $	��50* �6   �� 5      $	��50* �6   .+�5   
   �� -   5         ��Name$ lvToken��5      $��1��5       %� IsVirtualizing .  � 	Resources 5       	  Error �� 
TargetType �� Content �� ColumnCollection	 �� Columns��%�   &	        �� 5      " ��5   "   .R�5      �� 
���Gc��.+�5      �� # z��6/   #	 z 5   /   5      5      5      ��5      �� 5      
 �� 
TargetType"
 ��6    �� Triggers 5      �� 5        �� Binding 6&   �� *Name+ �� Value	 ERROR5!   &   .a�5"      ��  �� Property � �� �� Value# [  5#   %   5$      5&       �� View 5)      �� 5*      .P�5+      �� $��Token��6%    �� Width$	 150��5-   %    �� DisplayMemberBinding 5,   %   �� *Name+5-   %   �� 5.      $��Lexema��6%   $	 600��50   %    5/   %   �� *Lexema+50   %   �� 51      $��Linea��6%   $ 70��53   %    52   %   �� *Linea+53   %   �� 54      $��Columna��6%   $ 70��56   %    55   %   �� *	Columna+56   %   �� 57      $��Indice��6%   $ 70��59   %    58   %   �� *Index+59   %   5:      5<      �� 5=   
   -   5         ��Name$ tbxCode��5=       �� TextWrapping$
 Wrap=�5>      $.��(preparar(){} iniciar programa(){}��5?      " �� VerticalScrollBarVisibility$ Visible=�5A       �� AcceptsReturn .  �� 
AcceptsTab . $��5,0,0,0q�5E      $��0,82,0,0q�6$   (� 5F   
   $
��Left=�6   $��63��6-   $	��Top=�69   $
��1800��6Q   .��5G      �� ���	#FF7E7DCF$��59��6)   
���   �$
��1800��6D   5H      (� 5I   
   $
��Left=�6   $��49��6-   $	��Top=�69   $	��287��6Q   .��5J      �� $��</Pseuduino/>��6   $	��145��61   $$��Tw Cen MT Condensed Extra Bold)�6=   $��Italic$�6j   $��20(�6}   ���	#FFE3E3E86�   5K      o� 5L   
   $
��Left=�6   $��19��6*   $��0,63,0,0q�66   $	��Top=�6H   $
��1800��6`   ���	#FF7D7DCF.@�5M      m� -   5        ���	#FF3D1DAA$��Archivo��5M   .   ���	#FFF9F0F0 m� Icon 5N      �� 5O      $��./img/nuevo.png��6   67   .@�5Q      m� ���	#FFF9EDED$��Nuevo��62   ���	#FF0F0F0F6A   m� 5S      -   5        ���	#FFF5EEEE$��Abrir��5S   2   ���	#FF0E0D0D6Z   m� 5T      -   5        ���	#FFF5EEEE$��Crear proyecto��5T   2   ���	#FF0C0B0B6c   5U      m� 5V      -   5        ���	#FF3D1DAA$��Herramientas��5V   .   ���	#FFF7F2F2 5W      �� 5X      $��./img/sett.png��6   66   .@�5Z      m� ���	#FFF9EDED$��Preferencias��62   ���	#FF0F0F0F6H   m� 5[      ���	#FFF9EDED$��Color de editor��62   ���	#FF0F0F0F6K   5\      m� 5^      -   5        ���	#FF3D1DAA$��Ayuda��5^   .   ���	#FFF3E9E9$��83��6k    5_      �� 5`      $��./img/help.png��6   66   .@�5b      m� ���	#FFF9EDED$��Acerca��63   ���	#FF0F0F0F6C   5c      5d      5e      5f      