   M S B A M L   `   `   `  ����   GUI_RegexLexer    GUI_RegexLexer.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -     � Title$  
MainWindow��$	��480��$
��1101�� � WindowState$ 	Maximized=�.���  � RowDefinitions �� $	��50* ��� $	��50* �.+��� -    ��Name$ lvToken��$��1�� %� IsVirtualizing .  � 	Resources  	  Error �� 
TargetType �� Content �� ColumnCollection	 �� Columns��%=   &	        �� " ��.R��� 
���Gc��.+��� # z��#	 z ���� 
 �� 
TargetType"
 �� �� Triggers ��  �� Binding �� *Name+ �� Value	 ERROR.a���  �� Property � �� �� Value# [   �� View �� .P��� $��Token�� �� Width$	 150�� �� DisplayMemberBinding �� *Name+�� $��Lexema��$	 600�� �� *Lexema+�� $��Linea��$ 70�� �� *Linea+�� $��Columna��$ 70�� �� *	Columna+�� $��Indice��$ 70�� �� *Index+�� -    ��Name$ tbxCode�� �� TextWrapping$
 Wrap=�$.��(preparar(){} iniciar programa(){}��" �� VerticalScrollBarVisibility$ Visible=� �� AcceptsReturn .  �� 
AcceptsTab . $��5,0,0,0q�$��0,82,0,0q�(� $
��Left=�$��63��$	��Top=�$
��1800��.���� ���	#FF7E7DCF$��59��
���   �$
��1800��(� $
��Left=�$��49��$	��Top=�$	��287��.���� $��</Pseuduino/>��$	��145��$$��Tw Cen MT Condensed Extra Bold)�$��Italic$�$��20(����	#FFE3E3E8o� $
��Left=�$��19��$��0,63,0,0q�$	��Top=�$
��1800�����	#FF7D7DCF.@�m� -   ���	#FF3D1DAA$��Archivo�����	#FFF9F0F0 m� Icon �� $��./img/nuevo.png��.@�m� ���	#FFF9EDED$��Nuevo�����	#FF0F0F0Fm� -   ���	#FFF5EEEE$��Abrir�����	#FF0E0D0Dm� -   ���	#FFF5EEEE$��Crear proyecto�����	#FF0C0B0Bm� -   ���	#FF3D1DAA$��Herramientas�����	#FFF7F2F2 �� $��./img/sett.png��.@�m� ���	#FFF9EDED$��Preferencias�����	#FF0F0F0Fm� ���	#FFF9EDED$��Color de editor�����	#FF0F0F0Fm� -   ���	#FF3D1DAA$��Ayuda�����	#FFF3E9E9$��83�� �� $��./img/help.png��.@�m� ���	#FFF9EDED$��Acerca�����	#FF0F0F0F