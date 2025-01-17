FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Domain Account Converter     � 	 	 2   D o m a i n   A c c o u n t   C o n v e r t e r   
  
 l     ��  ��    �  GUI app to convert local account to domain account or migrate one domain account to another. Example: contractor to employee.      �   �   G U I   a p p   t o   c o n v e r t   l o c a l   a c c o u n t   t o   d o m a i n   a c c o u n t   o r   m i g r a t e   o n e   d o m a i n   a c c o u n t   t o   a n o t h e r .   E x a m p l e :   c o n t r a c t o r   t o   e m p l o y e e .        l     ��  ��      Version 1.0     �      V e r s i o n   1 . 0      l     ��  ��    ( " Copyright � 2013 by Sergio Aviles     �   D   C o p y r i g h t   �   2 0 1 3   b y   S e r g i o   A v i l e s      l     ��  ��      Created 2013-12-11      �   (   C r e a t e d   2 0 1 3 - 1 2 - 1 1        l     ��   !��     H B 1.0.1 added additional domain check to verify AD bind. 2013-12-18    ! � " " �   1 . 0 . 1   a d d e d   a d d i t i o n a l   d o m a i n   c h e c k   t o   v e r i f y   A D   b i n d .   2 0 1 3 - 1 2 - 1 8   # $ # l     �� % &��   % %  1.1 added Filevault subroutine    & � ' ' >   1 . 1   a d d e d   F i l e v a u l t   s u b r o u t i n e $  ( ) ( l     �� * +��   * 0 * 1.2 sanitized for general use. 2015-10-19    + � , , T   1 . 2   s a n i t i z e d   f o r   g e n e r a l   u s e .   2 0 1 5 - 1 0 - 1 9 )  - . - l     ��������  ��  ��   .  / 0 / l     ��������  ��  ��   0  1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5 , &Disclaimer (Change to suit your needs)    6 � 7 7 L D i s c l a i m e r   ( C h a n g e   t o   s u i t   y o u r   n e e d s ) 4  8 9 8 l    
 :���� : O    
 ; < ; I   	�� =��
�� .sysodlogaskr        TEXT = m     > > � ? ?� T h i s   a p p   w i l l   r e m o v e   t h e   c u r r e n t   d o m a i n   a c c o u n t ,   r e n a m e   t h e   h o m e   f o l d e r ,   a d d   t h e   n e w   d o m a i n   a c c o u n t ,   r e n a m e   t h e   o l d   h o m e   f o l d e r   a n d   c h a n g e   o w n e r s h i p   t o   m a t c h   t h a t   o f   t h e   n e w   d o m a i n   a c c o u n t .   C l i c k   " O K "   t o   c o n t i n u e .��   < m      @ @�                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   9  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E 2 , Check to see if Mac is joined to the domain    F � G G X   C h e c k   t o   s e e   i f   M a c   i s   j o i n e d   t o   t h e   d o m a i n D  H I H l    J���� J r     K L K c     M N M l    O���� O I   �� P Q
�� .sysoexecTEXT���     TEXT P m     R R � S S � s u d o   d s c o n f i g a d   - s h o w   | a w k   ' / A c t i v e   D i r e c t o r y   F o r e s t /   { p r i n t $ 5 } ' Q �� T��
�� 
badm T m    ��
�� boovtrue��  ��  ��   N m    ��
�� 
ctxt L o      ���� 0 adbound ADbound��  ��   I  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y s mSet to a domain that will return when using the command above. If detected it will set the joinedAD to true.     Z � [ [ � S e t   t o   a   d o m a i n   t h a t   w i l l   r e t u r n   w h e n   u s i n g   t h e   c o m m a n d   a b o v e .   I f   d e t e c t e d   i t   w i l l   s e t   t h e   j o i n e d A D   t o   t r u e .   X  \ ] \ l   $ ^���� ^ Z   $ _ `���� _ =     a b a o    ���� 0 adbound ADbound b m     c c � d d  d o m a i n . c o m ` r      e f e m    ��
�� boovtrue f o      ���� 0 joinedad joinedAD��  ��  ��  ��   ]  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k + %display dialog if joinedAD is false.     l � m m J d i s p l a y   d i a l o g   i f   j o i n e d A D   i s   f a l s e .   j  n o n l  % J p���� p Z  % J q r���� q =  % ( s t s o   % &���� 0 joinedad joinedAD t m   & '��
�� boovfals r I  + F�� u v
�� .sysodlogaskr        TEXT u m   + , w w � x x � T h i s   M a c   i s   n o t   j o i n e d   t o   t h e   d o m a i n .   P l e a s e   j o i n   t h i s   M a c   t o   t h e   d o m a i n   b e f o r e   p r o c e e d i n g . v �� y z
�� 
btns y J   - 0 { {  |�� | m   - . } } � ~ ~  C a n c e l��   z ��  �
�� 
dflt  m   1 2����  � �� ���
�� 
givu � F   3 @ � � � m   3 4����  � l  7 < ����� � I  7 <������
�� .aevtquitnull��� ��� null��  ��  ��  ��  ��  ��  ��  ��  ��   o  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   determine Domain    � � � � "   d e t e r m i n e   D o m a i n �  � � � l  K X ����� � r   K X � � � l  K T ����� � I  K T�� � �
�� .sysoexecTEXT���     TEXT � m   K N � � � � � z d s c o n f i g a d   - s h o w   |   a w k   ' / A c t i v e   D i r e c t o r y   D o m a i n /   { p r i n t   $ 5 } ' � �� ���
�� 
badm � m   O P��
�� boovtrue��  ��  ��   � o      ���� 0 joineddomain joinedDomain��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   get account to convert    � � � � .   g e t   a c c o u n t   t o   c o n v e r t �  � � � l  Y � ����� � O   Y � � � � k   ] � � �  � � � I  ] b������
�� .miscactvnull��� ��� obj ��  ��   �  � � � r   c j � � � m   c f � � � � �   � o      ���� 0 
oldaccount 
oldAccount �  ��� � V   k � � � � k   w � � �  � � � r   w � � � � n   w � � � � 1   � ���
�� 
ttxt � l  w � ����� � I  w ��� � �
�� .sysodlogaskr        TEXT � l 	 w z ����� � m   w z � � � � � z P l e a s e   e n t e r   t h e   l o g i n   i d   o f   t h e   a c c o u n t   y o u   w a n t   t o   c o n v e r t .��  ��   � �� ���
�� 
dtxt � m   } � � � � � �  ��  ��  ��   � o      ���� 0 
oldaccount 
oldAccount �  ��� � Z  � � � ����� � =   � � � � � o   � ����� 0 
oldaccount 
oldAccount � m   � � � � � � �   � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � �  I n v a l i d   E n t r y !��  ��  ��  ��   � =   o v � � � o   o r���� 0 
oldaccount 
oldAccount � m   r u � � � � �  ��   � m   Y Z � ��                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   get new account    � � � �     g e t   n e w   a c c o u n t �  � � � l  � � ����� � O   � � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� obj ��  ��   �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 
newaccount 
newAccount �  ��� � V   � � � � � k   � � � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � l 	 � � ����� � m   � � � � � � � Z P l e a s e   e n t e r   t h e   l o g i n   i d   o f   t h e   n e w   a c c o u n t .��  ��   � � ��~
� 
dtxt � m   � � � � � � �  �~  ��  ��   � o      �}�} 0 
newaccount 
newAccount �  ��| � Z  � � � ��{�z � =   � � � � � o   � ��y�y 0 
newaccount 
newAccount � m   � � � � � � �   � I  � ��x ��w
�x .sysodlogaskr        TEXT � m   � � � � � � �  I n v a l i d   E n t r y !�w  �{  �z  �|   � =   � �   o   � ��v�v 0 
newaccount 
newAccount m   � � �  ��   � m   � ��                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  l     �u�t�s�u  �t  �s    l     �r	
�r  	 0 * get new account password for domain check   
 � T   g e t   n e w   a c c o u n t   p a s s w o r d   f o r   d o m a i n   c h e c k  l  �H�q�p O   �H k   �G  I  ��o�n�m
�o .miscactvnull��� ��� obj �n  �m    r  
 m   �   o      �l�l  0 newaccountpass newAccountPass �k V  G k  B  r  , !  n  ("#" 1  $(�j
�j 
ttxt# l $$�i�h$ I $�g%&
�g .sysodlogaskr        TEXT% l 	'�f�e' m  (( �)) x P l e a s e   e n t e r   t h e   n e w   a c c o u n t   p a s s w o r d   t o   v e r i f y   t h e   a c c o u n t .�f  �e  & �d*�c
�d 
dtxt* m   ++ �,,  �c  �i  �h  ! o      �b�b  0 newaccountpass newAccountPass -�a- Z -B./�`�_. =  -4010 o  -0�^�^  0 newaccountpass newAccountPass1 m  0322 �33  / I 7>�]4�\
�] .sysodlogaskr        TEXT4 m  7:55 �66  I n v a l i d   E n t r y !�\  �`  �_  �a   =  787 o  �[�[  0 newaccountpass newAccountPass8 m  99 �::  �k   m   � �;;�                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �q  �p   <=< l     �Z�Y�X�Z  �Y  �X  = >?> l     �W@A�W  @ _ Y check to make sure this app isn't being run from one of the users that's being converted   A �BB �   c h e c k   t o   m a k e   s u r e   t h i s   a p p   i s n ' t   b e i n g   r u n   f r o m   o n e   o f   t h e   u s e r s   t h a t ' s   b e i n g   c o n v e r t e d? CDC l IVE�V�UE r  IVFGF n  IRHIH 1  NR�T
�T 
sisnI l INJ�S�RJ I IN�Q�P�O
�Q .sysosigtsirr   ��� null�P  �O  �S  �R  G o      �N�N 0 currentuser currentUser�V  �U  D KLK l W�M�M�LM Z W�NO�K�JN = W^PQP o  WZ�I�I 0 currentuser currentUserQ o  Z]�H�H 0 
oldaccount 
oldAccountO I a~�GRS
�G .sysodisAaleR        TEXTR m  adTT �UU  Y o u   c a n n o t   r u n   t h i s   a p p   a s   o n e   o f   t h e   u s e r s   t h a t   y o u   a r e   t r y i n g   t o   c o n v e r t .   P l e a s e   q u i t   t h i s   a p p   a n d   l o g   i n   a s   a   d i f f e r e n t   u s e r   t o   r u n   t h i s   a p p .S �FVW
�F 
btnsV J  ejXX Y�EY m  ehZZ �[[  C a n c e l�E  W �D\�C
�D 
givu\ F  kx]^] m  kl�B�B ^ l ot_�A�@_ I ot�?�>�=
�? .aevtquitnull��� ��� null�>  �=  �A  �@  �C  �K  �J  �M  �L  L `a` l     �<�;�:�<  �;  �:  a bcb l     �9de�9  d = 7 verify domain connection using new account credentials   e �ff n   v e r i f y   d o m a i n   c o n n e c t i o n   u s i n g   n e w   a c c o u n t   c r e d e n t i a l sc ghg l � i�8�7i Q  � jklj Z  ��mno�6m = ��pqp o  ���5�5 0 joineddomain joinedDomainq m  ��rr �ss  d o m a i n . c o mn I ���4tu
�4 .sysoexecTEXT���     TEXTt b  ��vwv b  ��xyx b  ��z{z m  ��|| �}} j d s c l   " / A c t i v e   D i r e c t o r y / C A B L E / A l l   D o m a i n s "   - a u t h o n l y  { o  ���3�3 0 
newaccount 
newAccounty 1  ���2
�2 
spacw o  ���1�1  0 newaccountpass newAccountPassu �0~�/
�0 
badm~ m  ���.
�. boovtrue�/  o � = ����� o  ���-�- 0 joineddomain joinedDomain� m  ���� ���  o t h e r d o m a i n . c o m� ��,� I ���+��
�+ .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� l d s c l   " / A c t i v e   D i r e c t o r y / C O R P H Q / A l l   D o m a i n s "   - a u t h o n l y  � o  ���*�* 0 
newaccount 
newAccount� 1  ���)
�) 
spac� o  ���(�(  0 newaccountpass newAccountPass� �'��&
�' 
badm� m  ���%
�% boovtrue�&  �,  �6  k R      �$��
�$ .ascrerr ****      � ****� l     ��#�"� o      �!�! 0 error_message  �#  �"  � � ��
�  
errn� l     ���� o      �� 0 error_number  �  �  �  l I � ���
� .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� � U n a b l e   t o   v e r i f y   n e w   a c c o u n t .   P l e a s e   r e - j o i n   t h i s   M a c   t o   t h e   d o m a i n   b e f o r e   p r o c e e d i n g .� o  ���
� 
ret � m  ���� ���  E r r o r :  � l ������ o  ���� 0 error_number  �  �  � m  ���� ���  .  � l ������ o  ���� 0 error_message  �  �  � ���
� 
btns� J  ���� ��� m  ���� ���  C a n c e l�  � ���
� 
dflt� F  ����� m  ���� � l ������ I �����

� .aevtquitnull��� ��� null�  �
  �  �  �  �8  �7  h ��� l     �	���	  �  �  � ��� l     ����  � : 4 remove old account from the local directory service   � ��� h   r e m o v e   o l d   a c c o u n t   f r o m   t h e   l o c a l   d i r e c t o r y   s e r v i c e� ��� l ���� I ���
� .sysoexecTEXT���     TEXT� b  ��� m  �� ��� ( d s c l   .   d e l e t e   U s e r s /� o  �� 0 
oldaccount 
oldAccount� ��� 
� 
badm� m  	
��
�� boovtrue�   �  �  � ��� l     ��������  ��  ��  � ��� l     ������  � - ' rename the old home folder temporarily   � ��� N   r e n a m e   t h e   o l d   h o m e   f o l d e r   t e m p o r a r i l y� ��� l ,������ I ,����
�� .sysoexecTEXT���     TEXT� b  &��� b  "��� b  ��� b  ��� b  ��� m  �� ���  m v   / U s e r s /� o  ���� 0 
oldaccount 
oldAccount� 1  ��
�� 
spac� m  �� ���  / U s e r s /� o  !���� 0 
oldaccount 
oldAccount� m  "%�� ���  ~ o l d� �����
�� 
badm� m  '(��
�� boovtrue��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   add new account to Mac   � ��� .   a d d   n e w   a c c o u n t   t o   M a c� ��� l -:������ I -:����
�� .sysoexecTEXT���     TEXT� b  -4��� m  -0�� ��� � / S y s t e m / L i b r a r y / C o r e S e r v i c e s / M a n a g e d C l i e n t . a p p / C o n t e n t s / R e s o u r c e s / c r e a t e m o b i l e a c c o u n t   - n  � o  03���� 0 
newaccount 
newAccount� �����
�� 
badm� m  56��
�� boovtrue��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � * $ remove new home folder if it exists   � ��� H   r e m o v e   n e w   h o m e   f o l d e r   i f   i t   e x i s t s� ��� l ;@������ r  ;@��� m  ;<��
�� boovfals� o      ����  0 newaccounthome newAccountHome��  ��  � � � l Aa���� O Aa Z E`���� I ET����
�� .coredoexbool        obj  c  EP b  EL	
	 m  EH �  / U s e r s /
 o  HK���� 0 
newaccount 
newAccount m  LO��
�� 
psxf��   r  W\ m  WX��
�� boovtrue o      ����  0 newaccounthome newAccountHome��  ��   m  AB�                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��     l b{���� Z b{���� = bg o  be����  0 newaccounthome newAccountHome m  ef��
�� boovtrue I jw��
�� .sysoexecTEXT���     TEXT b  jq m  jm �  r m   - r f   / U s e r s / o  mp���� 0 
newaccount 
newAccount ����
�� 
badm m  rs��
�� boovtrue��  ��  ��  ��  ��    l     ��������  ��  ��    !  l     ��"#��  " 4 . rename old Account Home Folder to new Account   # �$$ \   r e n a m e   o l d   A c c o u n t   H o m e   F o l d e r   t o   n e w   A c c o u n t! %&% l |�'����' I |���()
�� .sysoexecTEXT���     TEXT( b  |�*+* b  |�,-, b  |�./. m  |00 �11  m v   / U s e r s // o  ����� 0 
oldaccount 
oldAccount- m  ��22 �33  ~ o l d   / U s e r s /+ o  ������ 0 
newaccount 
newAccount) ��4��
�� 
badm4 m  ����
�� boovtrue��  ��  ��  & 565 l     ��������  ��  ��  6 787 l     ��9:��  9 @ : change permissions on the home folder for the new Account   : �;; t   c h a n g e   p e r m i s s i o n s   o n   t h e   h o m e   f o l d e r   f o r   t h e   n e w   A c c o u n t8 <=< l ��>����> I ����?@
�� .sysoexecTEXT���     TEXT? b  ��ABA b  ��CDC b  ��EFE m  ��GG �HH  c h o w n   - R  F o  ������ 0 
newaccount 
newAccountD m  ��II �JJ    / U s e r s /B o  ������ 0 
newaccount 
newAccount@ ��K��
�� 
badmK m  ����
�� boovtrue��  ��  ��  = LML l     ��������  ��  ��  M NON l     ��PQ��  P !  display final instructions   Q �RR 6   d i s p l a y   f i n a l   i n s t r u c t i o n sO STS l ��U����U O ��VWV I ����X��
�� .sysodlogaskr        TEXTX l 	��Y����Y m  ��ZZ �[[ h Y o u   c a n   n o w   l o g   o u t   a n d   l o g   b a c k   i n   a s   t h e   n e w   u s e r .��  ��  ��  W m  ��\\�                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  T ]^] l     ��������  ��  ��  ^ _��_ l     ��������  ��  ��  ��       ��`a��  ` ��
�� .aevtoappnull  �   � ****a ��b����cd��
�� .aevtoappnull  �   � ****b k    �ee  8ff  Hgg  \hh  nii  �jj  �kk  �ll mm Cnn Koo gpp �qq �rr �ss �tt �uu vv %ww <xx S����  ��  ��  c ������ 0 error_message  �� 0 error_number  d O @ >�� R�������� c�� w�� }������������ ����� ��� � ��� ��� � � ��� � � � ���9(+25������TZ���r|�~���}y��|���������{�z�y02GIZ
�� .sysodlogaskr        TEXT
�� 
badm
�� .sysoexecTEXT���     TEXT
�� 
ctxt�� 0 adbound ADbound�� 0 joinedad joinedAD
�� 
btns
�� 
dflt
�� 
givu�� 
�� .aevtquitnull��� ��� null
�� 
bool�� �� 0 joineddomain joinedDomain
�� .miscactvnull��� ��� obj �� 0 
oldaccount 
oldAccount
�� 
dtxt
�� 
ttxt�� 0 
newaccount 
newAccount��  0 newaccountpass newAccountPass
�� .sysosigtsirr   ��� null
�� 
sisn�� 0 currentuser currentUser�� 
� .sysodisAaleR        TEXT
�~ 
spac�} 0 error_message  y �x�w�v
�x 
errn�w 0 error_number  �v  
�| 
ret �{  0 newaccounthome newAccountHome
�z 
psxf
�y .coredoexbool        obj ���� �j UO��el �&E�O��  eE�Y hO�f   ���kv�k��	 *j a &a  Y hOa �el E` O� L*j Oa E` O ;h_ a  a a a l a ,E` O_ a   a j Y h[OY��UO� L*j Oa E`  O ;h_  a ! a "a a #l a ,E`  O_  a $  a %j Y h[OY��UO� L*j Oa &E` 'O ;h_ 'a ( a )a a *l a ,E` 'O_ 'a +  a ,j Y h[OY��UO*j -a .,E` /O_ /_   "a 0�a 1kv�k	 *j a &a 2 3Y hO J_ a 4  a 5_  %_ 6%_ '%�el Y %_ a 7  a 8_  %_ 6%_ '%�el Y hW 4X 9 :a ;_ <%a =%�%a >%�%�a ?kv�k	 *j a &a 2 Oa @_ %�el Oa A_ %_ 6%a B%_ %a C%�el Oa D_  %�el OfE` EO� a F_  %a G&j H 
eE` EY hUO_ Ee  a I_  %�el Y hOa J_ %a K%_  %�el Oa L_  %a M%_  %�el O� 	a Nj Uascr  ��ޭ