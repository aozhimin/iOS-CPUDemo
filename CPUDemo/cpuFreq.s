//
//  cpuFreq.s
//  CPUDemo
//
//  Created by dev-aozhimin on 2018/2/23.
//  Copyright © 2018年 dev-aozhimin. All rights reserved.
//

.text
.align 4
.globl _freqTest

_freqTest:

push    {r4-r11, lr}

freqTest_LOOP:

// loop 1
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 2
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 3
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 4
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 5
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 6
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 7
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 8
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 9
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

// loop 10
add     r2, r2, r1
add     r3, r3, r2
add     r4, r4, r3
add     r5, r5, r4
add     r6, r6, r5
add     r7, r7, r6
add     r8, r8, r7
add     r9, r9, r8
add     r10, r10, r9
add     r11, r11, r10
add     r12, r12, r11
add     r14, r14, r12
add     r1, r1, r14

subs    r0, r0, #1
bne     freqTest_LOOP
pop     {r4-r11, pc}
