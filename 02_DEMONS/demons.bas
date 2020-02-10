10 CLEAR:ON KEY GOSUB 1000:KEY (1) ON
20 '
30 ' == INITIALIZATION (2 LINES) ==
40 SCREEN1,1,0:COLOR1,6,14:DEFINTA-Z:P=BASE(7):C=BASE(6):N=BASE(5):DIMD(15),J(21),E(15)
50 FORI=3TO21:READJ(I):NEXT:DATA-8,5,-5,8,,5,5,,8,-5,5,-8,,-5,-5,-1,-1,32,-32
60 '
70 ' == IMAGES (? LINES) ==
80 T$="0123456789ABCDE":FORJ=16TO31:FORI=1TO15:VPOKEJ*64+I,ASC(MID$(T$,I)):NEXTI,J
90 FORI=0TO15:VPOKEC+16+I,I*16+1:NEXT
100 SPRITE$(0)="aslktfja"
110 X=100:Y=100:L=N+32:H=L+700:FORI=0TO15:D(I)=N+32*(I+4)-1:E(I)=I*8+129+(I>7):NEXT:I=0
120 '
130 ' == GAME LOOP (4-5 LINES) ==
140 D=D(I):VPOKED,0:D=D+J(18+RND(1)*4):D=D-(D<L)*32+(D>H)*32:VPOKED,E(I):D(I)=D
150 PUTSPRITE0,(X,Y):T=STICK(0)*2:X=X+J(T):Y=Y+J(T+1):I=(I<15)*(-I-1):IFSTRIG(0)=0GOTO140
160 BEEP:GOTO140
1000 '
1010 ' DEMONS.BAS
1020 ' ----------
1030 ' I,J,K = loops & temps
1040 '   T   = temporary var (1 line)
1050 '   N   = name table
1060 '   P   = patern table
1070 '  D(I) = demon pos/address
1080 '  E(I) = demon character
1090 '  L,H  = demons min/max address
1100 '  X,Y  = target coord
1110 ' J(17-)= target movement
1120 ' J(18+)= demon movement
1130 SCREEN0:COLOR15,4,4:C$=CHR$(13)
1140 WIDTH40:KEYON:KEY1,"run1000"+C$:KEY4,"list-1010"+C$:END
