XC4Dscrp  - ­î     ­â                 ˙˙˙˙ US         ˙˙˙˙          E x t r u d e M a k e r  č     Č / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
 / /   - - E x t r u d e M a k e r - -   b y   k o i c h i   2 0 0 7 0 2 1 2 
 
 v a r   t h i c k   =   1 . 0 ; / / zS0-[ 
 v a r   s t a r t _ c a p   =   1 ; / / 0 : N o n e   1 : C a p   2 : F i l l e t   3 : F i l l e t C a p 
 v a r   e n d _ c a p   =   1 ; 
 
 v a r   a c t   =   G e t A c t i v e O b j e c t ( d o c ) ; 
 v a r   t y p e   =   a c t - > G e t T y p e ( ) ; 
 i f ( t y p e ! = O s p l i n e ) 
 { 
 p r i n t l n ( t y p e ) ; 
 	 i f ( ( t y p e < O s p l i n e p r o f i l e ) | | ( t y p e > O s p l i n e c o n t o u r ) ) 
 	 	 r e t u r n ; 
 } 
 
 / * 
 / / t y p e 
 O s p l i n e 
 O s p l i n e p r o f i l e 
 O s p l i n e f l o w e r 
 O s p l i n e f o r m u l a 
 O s p l i n e t e x t 
 O s p l i n e n s i d e 
 O s p l i n e 4 s i d e 
 O s p l i n e c i r c l e 
 O s p l i n e a r c 
 O s p l i n e c i s s o i d 
 O s p l i n e c y c l o i d 
 O s p l i n e h e l i x 
 O s p l i n e r e c t a n g l e 
 O s p l i n e s t a r 
 O s p l i n e c o g w h e e l 
 O s p l i n e c o n t o u r 
 * / 
 
 v a r   a c t N a m e   =   a c t - > G e t N a m e ( ) ; 
 v a r   m g   =   a c t - > G e t M g ( ) ; 
 
 C a l l C o m m a n d ( 5 1 1 6 ) ; / / E x t r u d e N U R B S 
 v a r   e x t   =   G e t A c t i v e O b j e c t ( d o c ) ; 
 e x t - > S e t N a m e ( " E x t r u d e   N U R B S   ( "   +   a c t N a m e   +   " ) " ) ; 
 e x t - > S e t M g ( m g ) ; 
 
 / /\d˙OMn 
 e x t - > R e m o v e ( ) ; 
 e x t - > I n s e r t B e f o r e ( a c t ) ; 
 e x t - > S e t M g ( m g ) ; 
 a c t - > R e m o v e ( ) ; 
 a c t - > I n s e r t U n d e r ( e x t ) ; 
 a c t - > S e t M g ( m g ) ; 
 
 / / E x t r u d e N U R B S   o p t i o n 
 e x t # E X T R U D E O B J E C T _ M O V E   =   v e c t o r ( 0 , 0 , t h i c k ) ; 
 e x t # C A P _ S T A R T   =   s t a r t _ c a p ; 
 e x t # C A P _ E N D   =   e n d _ c a p ; 
 
 r e t u r n ; 
 
 
 
 
  ę        ë        î       E N A B L E = T R U E ;     E x t r u d e M a k e r                             alias2            ?4/M  3dX   ­ő                        ­đ     F}             