5 CLEAR:ON KEY GOSUB 1000:KEY (1) ON
10 '
11 '  === INIT DATA (2 LINES) ===
12 '
13 SCREEN1,1,0:COLOR1,12,14:KEYOFF:DEFINTA-Z:N=BASE(5):K=32:DIMD(K),E(K),J(K)
14 FORI=3TO21:READJ(I):NEXT:DATA-4,4,-4,4,,4,4,,4,-4,4,-4,,-4,-4,-1,-1,32,-32
20 '
21 '  === INIT IMAGES (2 LINES) ===
22 '
23 T$="���<x<&f||8��<6f":FORJ=KTO51:FORI=0TO15:VPOKEJ*K+I,ASC(MID$(T$,I+1))
24 NEXTI,J:J=BASE(6)+15:FORI=1TO10:VPOKEJ+I,I*16+12:NEXT:SPRITE$(0)="8D���D8"
30 '
31 ' === INIT GAME LOOP (1 LINE) ===
32 '
33 X=K:Y=X:L=N+K:H=L+700:FORI=0TO19:J=I\2:S(J)=N+K*I-1:E(I)=I*4.1+128:D(I)=S(J):NEXT:I=0
40 '
41 ' == GAME LOOP (4 LINES) ==
42 '
50 D=D(I):VPOKED,0:D=D+J(18+RND(1)*4):D=D-(D<L)*K+(D>H)*K:VPOKED,E(I):D(I)=D
60 PUTSPRITE0,(X-8,Y-8),1:T=STICK(0)*2:X=X+J(T):Y=Y+J(T+1):I=(I+1)MOD20:T=Y\8
70 IFSTRIG(0)THENP=N+T*K+(X\8):T=VPEEK(P)\4-K:IFT>=0THENVPOKEP,43:D(T)=S(T\2)
80 GOTO 50
1000 '
1010 ' DEMONS.BAS
1020 ' ----------
1030 '   N   = name table
1040 '   T   = temporary var (1 line)
1050 '   K   = 32 (constant)
1060 '  I,J  = loops
1070 '  D(I) = demon cur pos/address
1080 '  S(I) = demon start pos/address
1090 '  E(I) = demon character
1100 '  L,H  = demons min/max address
1110 '  X,Y  = target coord
1120 ' J(17-)= target movement
1130 ' J(18+)= demon movement
1140 '
1150 SCREEN0:COLOR15,4,4:C$=CHR$(13)
1160 WIDTH40:KEYON:KEY1,"run1000"+C$:KEY4,"list-1010"+C$:END
2000 RESTORE 2010:FORI=1TO8:READA,B:A$=A$+CHR$(A):B$=B$+CHR$(B):NEXT:PRINT A$+B$
2010 DATA &B11110000,&B01111100
2020 DATA &B11110000,&B01111100
2030 DATA &B11110000,&B00111000
2040 DATA &B00111100,&B11111110
2050 DATA &B01111000,&B10011101
2060 DATA &B00111100,&B00111100
2070 DATA &B00100110,&B00110110
2080 DATA &B01100110,&B01100110
