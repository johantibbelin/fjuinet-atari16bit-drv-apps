;**---- EQs

memtop	= $436
membot	= $432
phystop = $42e
bootdev = $446
hdv_rw	= $476
hdv_boot= $47a
hdv_bpb	= $472

install:

	;Supervisor	

	move.l #0,-(sp)
	move.w #32,-(sp)
	trap #1

	move.l $436,a0

	sub.l #$800,a0

	

resres:
magic:	dc.l $12123456
adr:	dc.l $0
code:	move.l text(pc),-(sp)
	move.w #7,-(sp)
	trap #1
	addq.l #6,sp
	rts
text:	dc.b "Reset resident!",10,13,0
zeros:  dcb.b 0,512
