5 PRINT:PRINT "BITMAP TEXT DEMO. PRESS [SPACE] TO QUIT...":PRINT
10 C=0:M=0:N=22:B=65506:POKE B+9,0
12 PRINT "NORMAL MODE, CHAR BANK ";N*2048
15 POKE B+13,N:POKE B+17,0:POKE B+18,0
20 FOR Y=0 TO 24
30 FOR X=0 TO 39
40 POKE B+14,X:POKE B+15,Y
50 POKE B+16,C
60 C=C+1:IF C<256 THEN 120
70 IF N=22 THEN N=23:GOTO 100
80 N=22:IF M=0 THEN M=1:GOTO 100
90 M=0
100 POKE B+13,N:POKE B+18,M
110 Y=Y+1:X=-1:C=0
115 IF M=0 THEN PRINT "NORMAL"; ELSE PRINT "REVERSE";
116 PRINT " MODE, CHAR BANK ";N*2048
120 GET K$:IF K$=" " THEN END
130 NEXT X
140 NEXT Y
150 GOTO 5
