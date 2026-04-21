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

    lw t6, 0(t0)   # always same element

loop:
    bge t2, t1, end

    add t3, t3, t6

    addi t2, t2, 1
    j loop

end:
    nop
