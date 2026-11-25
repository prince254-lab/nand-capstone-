// Box: starts at row 64, 20 rows tall, 16 px wide (1 word)
// Start address = 16384 + 32*64 = 18432
// Key pressed -> black box, key released -> box disappears

(MAIN)
    @color
    M=0
    @KBD
    D=M
    @DRAW
    D;JEQ
    @color
    M=-1

(DRAW)
    @18432
    D=A
    @addr
    M=D
    @20
    D=A
    @n
    M=D

(ROW)
    @color
    D=M
    @addr
    A=M
    M=D
    @addr
    D=M
    @32
    D=D+A
    @addr
    M=D
    @n
    M=M-1
    D=M
    @ROW
    D;JGT

    @MAIN
    0;JMP