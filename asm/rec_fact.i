; recursive factorial
    in A  
    inc a
    push A
    movr A 0
    push A ; return value
    call FACT  ;10 11
    pop A
    out A
    pop A
    movr A 10
    put A
    halt
	;stop program
    nop

FACT:
    movr D 0 
    load A 2 ;21 22 23
    movr B 1
    cmp A B 
    jnz F_CON ; if zero then break recursion
    movr A 1
    store A 1 
    ret ;38
F_CON:
    load B 2
    dec B ; 42 43
    push B ; push  arg 1
    movr B 0
    push B ; push return value

    call FACT ; call fact
    pop B ; pop return value to B
    pop A ; dump stack
    mul B
    store A 1 ; save return value
    ret
