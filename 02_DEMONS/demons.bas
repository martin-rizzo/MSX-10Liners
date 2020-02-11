10 CLEAR:ON KEY GOSUB 1000:KEY (1) ON
20 '
30 ' == INITIALIZATION (2 LINES) ==
40 SCREEN1,1,0:COLOR1,6,14:DEFINTA-Z:P=BASE(7):N=BASE(5):K=32:DIMD(K),E(K),J(K)
50 FORI=3TO21:READJ(I):NEXT:DATA-8,5,-5,8,,5,5,,8,-5,5,-8,,-5,-5,-1,-1,32,-32
60 '
70 ' == IMAGES (2 LINES) ==
80 T$="0123456789ABCDE":FORJ=KTO51:FORI=1TO15:VPOKEJ*K+I,ASC(MID$(T$,I)):NEXTI,J
90 J=BASE(6)+16:FORI=0TO15:VPOKEJ+I,I*16+1:NEXT:SPRITE$(0)="ASLKTFJA"
100 '
110 ' == GAME LOOP (4 LINES) ==
120 X=K:Y=X:L=N+K:H=L+700:FORI=0TO19:J=I\2:S(J)=N+K*I-1:E(I)=I*4.1+128:D(I)=S(J):NEXT:I=0
130 D=D(I):VPOKED,0:D=D+J(18+RND(1)*4):D=D-(D<L)*32+(D>H)*32:VPOKED,E(I):D(I)=D
140 PUTSPRITE0,(X,Y):T=STICK(0)*2:X=X+J(T):Y=Y+J(T+1):I=(I+1)MOD20
150 IFSTRIG(0)THENP=N+(Y\8)*32+(X\8):T=VPEEK(P)\4-32:IFT>=0THENVPOKEP,43:D(T)=S(T\2)
160 GOTO 130
1000 '
1010 ' DEMONS.BAS
1020 ' ----------
1030 '   N   = name table
1040 '   P   = patern table
1050 '   T   = temporary var (1 line)
1060 '   K   = 32 (constant)
1070 '  I,J  = loops
1080 '  D(I) = demon cur pos/address
1090 '  S(I) = demon start pos/address
1100 '  E(I) = demon character
1110 '  L,H  = demons min/max address
1120 '  X,Y  = target coord
1130 ' J(17-)= target movement
1140 ' J(18+)= demon movement
1150 '
1160 SCREEN0:COLOR15,4,4:C$=CHR$(13)
1170 WIDTH40:KEYON:KEY1,"run1000"+C$:KEY4,"list-1010"+C$:END
