movr a 31
push a ; grid = 5
movr b -1
mul b
push a ; -grid = 4
movr b -2
div b
push a ; offset = 3
movr b -1
mul b
push a
pop b
mul b
movr b 4
mul b
push a	; r_squared = 2

load c 2
push c 		; radek = 1
movr b 2
swap a c
mul b
swap a c
push c		; sloupec = 0
load c 1

radek:
	; a = radek (c) + offset
	push c
	pop a
	load b 3
	add b
	inc a
	
	; a = a*a*4
	push a
	pop b
	mul b
	movr b 4
	mul b
	
	push a ;
	inc d
	
	inc c
	store c 1
	
	load c 0	; -grid

	sloupec:
		; a = sloupec(c) + offset
		push c
		pop a
		load b 3
		add b
		add b
		inc a
		inc a
		
		; a = a*a
		push a
		pop b
		mul b
		
		; ted a_r + a_s
		load b -1
		add b

		load b 2 ; r_squared
		
		; a = ar as -r
		cmp a b
		jgt space
		movr b 35
		jmp postif
		space:
			movr b 32
		postif:
		put b
		
		inc c
		loop sloupec
	pop a
	dec d
	movr b 10
	put b
	
	load c 1
	loop radek
movr b 10
put b
halt
