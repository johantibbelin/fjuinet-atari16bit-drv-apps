code:	move.l text(pc),-(sp)
	move.w #9,-(sp)
	trap #1
	addq.l #6,sp
	rts
text:	dc.b "Reset resident!",10,13,0
