

	.FUNCT	NDESC,OBJ,S,TEMPROFF,?TMP1
	SET	'TEMPROFF,ROFF
	ZERO?	ROFF \?CND1
	SET	'ROFF,6
?CND1:	GETP	OBJ,P?OBJDESCS >?TMP1
	ADD	ROFF,SDOFF
	GET	?TMP1,STACK >S
	ZERO?	S /?ELS6
	PRINT	S
	JUMP	?CND4
?ELS6:	PRINTD	OBJ
?CND4:	SET	'ROFF,TEMPROFF
	RTRUE	


	.FUNCT	VPRINT,TMP,?TMP1
	GET	P-OTBL,P-VERBN >TMP
	ZERO?	TMP \?ELS5
	PRINTI	"tell"
	RTRUE	
?ELS5:	GETB	P-VTBL,2
	ZERO?	STACK \?ELS9
	GET	TMP,0
	PRINTB	STACK
	RTRUE	
?ELS9:	GETB	TMP,2 >?TMP1
	GETB	TMP,3
	CALL	WORD-PRINT,?TMP1,STACK
	RSTACK	


	.FUNCT	ZPROB,BASE
	RANDOM	100
	GRTR?	BASE,STACK /TRUE
	RFALSE	


	.FUNCT	PICK-ONE,FROB
	GET	FROB,0
	RANDOM	STACK
	GET	FROB,STACK
	RSTACK	

	.ENDI
