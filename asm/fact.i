; The factorial function
; 
; features:
;   * prints a prompt
;   * checks for negative numbers
;   * has a nasty bug

.start:
  ; print "n? "
  movr c 110
  put c
  movr c 63
  put c
  movr c 32
  put c

fact:
  ; read input number
  in c

  ; this part requires bonus!
  ; if zero (in a) > c then print error and halt
  cmp a c
  jgt error

fact_run:
  movr a 1

fact_loop:
  mul c
  dec c
  loop fact_loop

fact_swap_result:
  swap c a

output:
  out c
  movr c 10
  put c
  halt

error:
  ; print "ERR\n"
  movr c 69
  put c
  movr c 82
  put c
  movr c 82
  put c
  movr c 10
  put c
  halt

; vi:syntax=asm
