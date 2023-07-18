hirom

; make the game think you're on difficulty 7
; for the decision tree that determines the type of ending
org $c07727
        lda     #$07
        nop

org $c07747
        jsr     my_code

; increment the real difficulty, not the difficulty 7 from above
org $c0c130
my_code:
        lda     $1d23
        inc
        cmp     #$08
        rts
