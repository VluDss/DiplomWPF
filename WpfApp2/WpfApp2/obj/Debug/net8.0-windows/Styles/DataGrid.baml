   M S B A M L   `   `   `  ����c  _PresentationFramework.Royale, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35iLclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.RoyaleMicrosoft.Windows.Themes  5   L   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ColumnHeaderGripperStyle  �� 
TargetType �� Property �� Value �� 
TargetType �� Padding �� 
ResourceId �� TypeInTargetAssembly&    System.Windows.Controls.DataGrid ��Name J� SnapsToDevicePixels	 �Name
 J� Opacity � Points �� Stretch �� Triggers P� Property P� Value �� 
TargetName  DataGridStyle15  /System.Windows.Controls.DataGridLengthConverter ��Name � ColumnDefinitions � RowDefinitions    SelectAllCommand7  1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter!    HeadersVisibilityConverter �� 	Converter �� RelativeSource �� AncestorTypeG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  Name   Column ��Name �� CanContentScroll ��Name  �� ScrollableHeight! � Maximum" �� Orientation# �� ViewportHeight$ �� ViewportSize*% �� #ComputedVerticalScrollBarVisibility& � Value' �� Mode( �� Mode) �� ScrollableWidth* �� ViewportWidth,+ �� %ComputedHorizontalScrollBarVisibility, �� Triggers- ]� 
Conditions. �� Property/ �� Value  DataGridCellStyle1*  $System.Windows.Controls.DataGridCell  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader3   -Microsoft.Windows.Themes.DataGridHeaderBorder0   	IsPressed1 J� IsMouseOver2   	IsHovered3   CanUserSort4   IsClickable5   SortDirection6   SortDirection7   SeparatorVisibility8   SeparatorVisibility9   SeparatorBrush:   SeparatorBrush; n�Name  DataGridRowStyle1)  #System.Windows.Controls.DataGridRow< ��Name= �� CornerRadius?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid?	  9System.Windows.Controls.Primitives.DataGridCellsPresenter>   
ItemsPanelA
  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter?   DetailsVisibility$@   SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientationA   Vertical#B    RowDetailsScrollingConverter:  4System.Windows.Controls.Primitives.DataGridRowHeader
C   Row�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      VthemeLclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Royale  6L   %E  &	        (��     5      $" DataGridSelectAllButtonStyle��"   )&	 �    &	 �    &	 >    7   7   &	 �    �� 5      "  n�6-   .�5   
   ��  � ��$ 8��6"   �� 5   
    � ��
 ���� 6'   �� 5   
    �@�Cursor$ SizeWE��6#   �� 5   
    � �� 5	      �� 5
      " n�6"   .R�5      �� #��z��6   # z��6G   5      5      5      �� 5      "  ��6{   .�5   
   ��  � �� 5      �� 5      " ��6"   .R�5      � .+�5      �� $ Border��6$   #��� ��64   $
 True��6u   � 5      $	 Arrow��6"   
���   �$��Right=�6>   $��8,8,3,3q�6Z   $

 0.15Q�6k    �   ��� ��� ��� ��� $ Uniform=�6�   $��Bottom=�6�   5       5      P� 5       �@J�IsMouseOver$
 True��69   . �5      �� $ Border��67   # � ��6K    � ��5      P� 5       � ��$
 True��67   . �5      �� $ Border��65   # � ��6I    � ��5      P� 5        � {�$ False��67   . �5!      �� $ Arrow��6;    � y�$ 	Collapsed=�6N   5"      5$      5&      5'      �� 5)      "    6#   .�5*   
   ��  � ��
 ���� 6'   �� 5+   
    � �� �#2225286'   �� 5,   
    � ��$ 0q�6,   �� 5-   
     �@  RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 5.   
    � ��$
 true��6:   �� 5/   
    �@��PanningMode$
 Both=�65   �� 50   
    �@��IsFlicksEnabled$ False��63   �� 51   
    �@  AutoGenerateColumns$ False��60   �� 52   
    �@  HeadersVisibility$ Column=�6.   �� 53   
    � ��$ 0 10 0 0q�6#   �� 54   
    �@  SelectionMode$ Single=�6*   �� 55   
    �@  SelectionUnit$ FullRow=�6*   �� 56   
    �@  CanUserAddRows$ False��6+   �� 57   
    �@  CanUserDeleteRows$ False��6.   �� 58   
    �@  CanUserResizeRows$ False��6.   �� 59   
    �@  CanUserReorderColumns$ False��62   �� 5:   
    � ��$ 13(�6%   �� 5;   
    �@  ColumnWidth$ * 6(   �� 5<   
    �@  GridLinesVisibility$
 None=�60   �� 5=   
    � �� 5>      �� 5?      "   6"   .R�5@      �� #��z��6   #��z��6G   #��z��6s   # z��6�   $
 True��6�   ._�5A      �� $ DG_ScrollViewer��6'   $|�false��6@   ��5B      �� 5C   "   " ��62   .R�5D   &   �  5E   *   �� 5F   .   $
��Auto �6?   �� 5G   .   $��* �6?   �� 5H   .   $
��Auto �6?    5J   *   �� 5K   .   $
��Auto �6<   �� 5L   .   $��* �6<   �� 5M   .   $
��Auto �6<   .+�5O   *   �� #��Z 61   $|�false��6`   ��6r   C� *�� $" DataGridSelectAllButtonStyle��"   +y�6�   �� *HeadersVisibility+# Z # Z  �� "   ��6�  �� *CellsPanelHorizontalOffset+ �� "     5P   *   $! PART_ColumnHeadersPresenter��6I   $��1��6n   y�6~   �� *HeadersVisibility+# Z # Z  �� "   �� 5Q   *   $! PART_ScrollContentPresenter��6A   # z��6f   $��2��6�   $��1��6�   �� 5R   *   $ PART_VerticalScrollBar��64   $��2��6T   #! z  6d   $" Vertical=�6�   $��1��6�   #$ z# 6  #y�z% 6I  & 6�   �� *VerticalOffset+$' OneWay=� �� $( TemplatedParent=�6I  � 5S   *   $��1��6/   $��2��6?    5T   .   �� 5U   2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "   �� 5V   2   $��* �6C   .+�5X   .   �� $ PART_HorizontalScrollBar��68   $��1��6Z   #! z) 6j   $" 
Horizontal=�6�   #$ z* 6  #y�z+ 6D  & 6�   �� *HorizontalOffset+$' OneWay=� �� $( TemplatedParent=�6D  5Y   +   5Z   '   5[   #   .��5]      �� # z 6-   5^      5_      5`      5b      , 5c   
   ]� 5d      - 5e      �� 5f      . �@��
IsGrouping$
/ true��66   �� 5g      ". �@%�IsVirtualizingWhenGrouping$/ false��6X   ./�5i      ��  � ��$ false��6B   5j      5l      �� 5n      "   6'   .�5o   
   ��  � ��
 ���� 6'   �� 5p   
    � ��$ Center=�6.   �� 5q   
    �@�FocusVisualStyle 6-   Z� �� 5r   
    � ��$
 15 0q�6#   �� 5s   
    � �� 5t      �� 5u      "  6"   .R�5v      �� #��z��6   $��0q�6G   $
 True��6[   ._�5w      �� # z 6+   5x      5y      5{      5|      �� 5~      "   6/   .�5   
   ��  � ��$ Center=�65   �� 5�   
    � ��
 ���� 6'   �� 5�   
    � �� �#69717d6'   �� 5�   
    � ��$ 
15 0 15 10q�6#   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      � .+�5�        #��z��65   #��z��6_   #��z��6�   #0 z��6�   #2 z1 6�   #4 z3 6  # z��6=  #6 z5 6a  #8 z7 6�  #: z9 6�  ._�5�      �� #��z��6/   $
��True��6r   # z 6�   #��z��6�   5�      n� 5�      $; PART_LeftHeaderGripper��6    $
��Left=�6@   8��  6[   n� 5�      $; PART_RightHeaderGripper��6    $��Right=�6A   8�� 6]   5�      5�      5�      5�      �� 5�      "   6&   .�5�   
   ��  � ��
 �����6'   �� 5�   
    � ��$ 0 4 0 0q�6#   �� 5�   
    �@J�SnapsToDevicePixels$
 true��60   �� 5�   
    �@=�ErrorTemplate 65   Z� �� 5�   
    �@ ValidationErrorTemplate 5�      �� 5�      .R�5�      �� 
���  ��$��2,0,0,0q�61   $��!��6B   $��Center=�6K   5�      5�      �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� $< 
DGR_Border��6   $	 0 8q�61   #��z��6?   $��0q�6i   $= 5��6}   $
 True��6�   ._�5�         5�      �� 5�   "   $
��Auto �63   �� 5�   "   $��* �63    5�      �� 5�   "   $��* �60   �� 5�   "   $
��Auto �60   .+�5�      	  $��1��65   #��z> 6E   # z 6o   
  5�      $��1��67   $��1��6G   #y�z? 6k  @ 6T   �� *AreRowDetailsFrozen+# ZA # ZB  �� "   6k    5�      $��2��60   $@ Vertical=�6A   y�6�   �� *HeadersVisibility+# ZC # Z  �� "   5�      5�      5�      5�      , 5�   
   P� 5�       �@J�IsMouseOver$
 True��6-   . �5�      ��  � �� �#623ed06/   �� 5�       � �� �#fff6/   5�      P� 5�       �@ 
IsSelected$
 True��6,   . �5�      ��  � �� �#623ed06/   �� 5�       � �� �#fff6/   5�      ]� 5�      - 5�      �� 5�      . �@ 
IsSelected$
/ True��66   �� 5�      . �@��IsSelectionActive$/ False��6F   ./�5�      ��  � �� �#dfdfdf6/   5�      5�      5�      