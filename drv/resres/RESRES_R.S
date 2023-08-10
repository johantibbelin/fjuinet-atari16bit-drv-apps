	LIST
code	
	pea msg(pc)
	move.w #9,-(sp)
	trap #1
	addq.l #6,sp
	rts
msg	dc.b "Reset resident!",10,13,0
ssp	ds.l 1