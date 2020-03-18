.global lab1
.syntax unified
#define A #1
#define B #15
#define C #2

lab1:
    push {lr}
    // calculate 
    mov r1, A
    mov r2, B
    mov r3, C
    bl test_var
    pop {pc}
test_var:
    push { r4, r5, lr }
    sub r0, r1, r2
    cmp r0, #0
    it ge
    addge r0, r2, r1
    sdiv r0, r3
    pop { r4, r5, pc }

