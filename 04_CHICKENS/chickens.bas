10 CLEAR:ON KEY GOSUB 1000:KEY (1) ON
20 '
30 ' == MAIN INIT & DATA (3 LINE) ==
40 SCREEN1,2,0:KEYOFF:DEFINTA-Z:N=6144:K=32:DIMJ(K),D(K),C(K),Q(K)
42 DATA-4,4,-4,4,,4,4,,4,-4,4,-4,,-4,-4,1,1,1,32,-32,32,64,223,32,215,32,195,32
44 DATA18,32,7,512,18,32,7,32,44,2,188,2,244,12,28,8,147,2,101,1,69,1:FORI=3TO22
48 READJ(I):NEXT
50 '
60 ' === DRAW PLAYFIELD (1 LINE) ====
85 D=N:FORJ=1TO15:D=D-1280*(J=9):READT,U:FORI=1TOU:VPOKED,T:D=D+1:NEXTI,J
90 '
100 ' === INIT IMAGES (? LINES) ===
110 SPRITE$(0)="p��p>}���8|fff�"
120 FORJ=32TO51:FORI=0TO7:T=VPEEK(176*8+I):VPOKEJ*32+I,(T\4)OR(T\2)ORT:NEXTI,J
130 FORI=1TO7:VPOKEBASE(6)+15+I,(I+3)*16+12:NEXT
140 '
150 ' === INIT IMG & LOOP (? LINES) ===
170 S=400+N:FORI=0TO31:D(I)=S:C(I)=I*4+128:Q(I)=I<5ORI>26:NEXT:Q(0)=1:L=1:X=80:Y=X
180 '
190 ' ====== GAME LOOP (4 LINES) ======
200 P=P+1:I=PAND15:T=IAND1:D=D(I):VPOKED,7:T=J(18+RND(1)*5)*Q(T)
210 IFI<LTHEND=D+T:VPOKED,C(I):D(I)=D:IFQ(DAND31)THENEND
220 T=STICK(0)*2:X=X+J(T):Y=Y+J(T+1):PUTSPRITE0,(X,Y):D=N+(Y\8)*32+X\8+32
230 T=VPEEK(D)\4-32:IFT>=0THENVPOKED,7:D(T)=S:L=1+P\99
240 GOTO 200
1000 ' SAVE "CHICKENS.BAS",A
1010 ' ----------
1020 '   N   = name table address
1030 '   T   = temporary var (1 line)
1040 '  I,J  = loops
1050 '  D(I) = chicken cur pos/address
1060 '   S   = chicken init pos/address
1070 '   P   = player points
1080 '  X,Y  = player coordinate
1090 ' J(17-)= player movement (joymap)
1100 ' J(18+)= chickens movement
1110 '  var  = ...details...
1120 '
1130 SCREEN0:COLOR15,4,4:C$=CHR$(13)
1140 WIDTH40:KEYON:KEY1,"run1000"+C$:KEY2,"run2000"+C$:KEY4,"list-1001"+C$:END
2000 '
2010 ' CHARACTER SPRITE GENERATOR
2020 '
2030 RESTORE 2040:FORI=1TO8:READA,B:A$=A$+CHR$(A):B$=B$+CHR$(B):NEXT:PRINT "3000 T$="+CHR$(34)+A$+B$+CHR$(34)
2040 DATA &B01110000,&B10111101
2050 DATA &B10101000,&B10111001
2060 DATA &B11111000,&B00111000
2070 DATA &B01110000,&B01111100
2080 DATA &B00011000,&B01100110
2090 DATA &B00111110,&B01100110
2100 DATA &B01111101,&B01100110
2110 DATA &B10111101,&B11101110
