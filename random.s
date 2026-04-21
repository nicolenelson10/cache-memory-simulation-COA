.data
array: .word 1,2,3,4,5,6,7,8,9,10
size:  .word 10

.text
.globl main
main:
    la t0, array
    lw t1, size

    li t2, 0
    li t3, 0
    li t7, 3        # multiplier

loop:
    bge t2, t1, end

    mul t4, t2, t7
    rem t4, t4, t1   # pseudo-random index

    slli t5, t4, 2
    add t6, t0, t5
    lw t8, 0(t6)

    add t3, t3, t8

    addi t2, t2, 1
    j loop

end:
    nop
