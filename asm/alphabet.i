; simple alphabet printing demo

movr c 26
movr a 65

alphabet:
	put a
	inc a
	dec c
	loop alphabet
	
movr c 2
linebreaks:
	movr b 10
	put b
	dec c
	loop linebreaks
            halt
