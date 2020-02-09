10 CLEAR:ON KEY GOSUB 1000:KEY (1) ON
20 '
30 ' == INITIALIZATION (1 LINE?) ==
40 SCREEN1,1,0:COLOR12,1:DEFINTA-Z:P=BASE(7):C=BASE(6):N=BASE(5):DIMD(15),E(15),J(17)
50 FORI=0TO17:READJ(I):NEXT:DATA0,0,0,-8,5,-5,8,0,5,5,0,8,-5,5,-8,0,-5,-5
60 M(0)=-1:M(1)=-1:M(2)=32:M(3)=-32
70 '
80 ' == IMAGES (? LINES) ==
95 T$="0123456789ABCDE":FORJ=16TO31:FORI=1TO15:VPOKEJ*64+I,ASC(MID$(T$,I)):NEXTI,J
100 FORI=0TO15:VPOKEC+16+I,I*16+1:NEXT
110 SPRITE$(0)="aslktfja"
120 X=100:Y=100:L=N+32:H=L+700:FORI=0TO15:D%(I)=N+32*(I+4)-1:E%(I)=I*8+129+(I>7):NEXT:I=0
130 '
140 ' == GAME LOOP (4 LINES) ==
150 D=D(I):VPOKED,0:D=D+M(RND(1)*4):IFD<LTHEND=D+32ELSEIFD>HTHEND=D-32
180 VPOKED,E(I):D(I)=D
200 PUTSPRITE0,(X,Y):T=STICK(0)*2:X=X+J(T):Y=Y+J(T+1)
210 I=(I<15)*(-I-1):GOTO150
211 ''IF I<15 THEN I=I+1:GOTO150 ELSE I=0:GOTO150
1000 ' DEMONS.BAS
1010 ' ---------
1020 ' I,J,K = loops & temps
1030 '   T   = temporary var (1 line)
1040 '   N   = name table
1050 '   P   = patern table
1060 '  D(I) = demon pos/address
1070 '  E(I) = demon character
1072 '  L,H  = demons min/max address
1075 '  X,Y  = target coord
1076 '  J(.) = joystick movement
1080 SCREEN0:COLOR15,4,4:C$=CHR$(13)
1090 WIDTH40:KEYON:KEY1,"run1000"+C$:KEY4,"list-1000"+C$:END
