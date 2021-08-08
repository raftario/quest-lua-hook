str x29, [sp, #-8]!    // push the frame pointer
str x30, [sp, #-8]!    // push the link register
ldr w30, [x30, #-4]    // load the branch instruction to w30

// blr x0
0:
    ldr w29, 30f
    cmp w30, w29
    b.ne 1f
    ldr x30, ={hooked}
    str x0, [x30]
    b 80f
30:
    .byte 0x00, 0x00, 0x3f, 0xd6

// blr x1
1:
    ldr w29, 31f
    cmp w30, w29
    b.ne 2f
    ldr x30, ={hooked}
    str x1, [x30]
    b 80f
31:
    .byte 0x20, 0x00, 0x3f, 0xd6

// blr x2
2:
    ldr w29, 32f
    cmp w30, w29
    b.ne 3f
    ldr x30, ={hooked}
    str x2, [x30]
    b 80f
32:
    .byte 0x40, 0x00, 0x3f, 0xd6

// blr x3
3:
    ldr w29, 33f
    cmp w30, w29
    b.ne 4f
    ldr x30, ={hooked}
    str x3, [x30]
    b 80f
33:
    .byte 0x60, 0x00, 0x3f, 0xd6

// blr x4
4:
    ldr w29, 34f
    cmp w30, w29
    b.ne 5f
    ldr x30, ={hooked}
    str x4, [x30]
    b 80f
34:
    .byte 0x80, 0x00, 0x3f, 0xd6

// blr x5
5:
    ldr w29, 35f
    cmp w30, w29
    b.ne 6f
    ldr x30, ={hooked}
    str x5, [x30]
    b 80f
35:
    .byte 0xa0, 0x00, 0x3f, 0xd6

// blr x6
6:
    ldr w29, 36f
    cmp w30, w29
    b.ne 7f
    ldr x30, ={hooked}
    str x6, [x30]
    b 80f
36:
    .byte 0xc0, 0x00, 0x3f, 0xd6

// blr x7
7:
    ldr w29, 37f
    cmp w30, w29
    b.ne 8f
    ldr x30, ={hooked}
    str x7, [x30]
    b 80f
37:
    .byte 0xe0, 0x00, 0x3f, 0xd6

// blr x8
8:
    ldr w29, 38f
    cmp w30, w29
    b.ne 9f
    ldr x30, ={hooked}
    str x8, [x30]
    b 80f
38:
    .byte 0x00, 0x01, 0x3f, 0xd6

// blr x9
9:
    ldr w29, 39f
    cmp w30, w29
    b.ne 10f
    ldr x30, ={hooked}
    str x9, [x30]
    b 80f
39:
    .byte 0x20, 0x01, 0x3f, 0xd6

// blr x10
10:
    ldr w29, 40f
    cmp w30, w29
    b.ne 11f
    ldr x30, ={hooked}
    str x10, [x30]
    b 80f
40:
    .byte 0x40, 0x01, 0x3f, 0xd6

// blr x11
11:
    ldr w29, 41f
    cmp w30, w29
    b.ne 12f
    ldr x30, ={hooked}
    str x11, [x30]
    b 80f
41:
    .byte 0x60, 0x01, 0x3f, 0xd6

// blr x12
12:
    ldr w29, 42f
    cmp w30, w29
    b.ne 13f
    ldr x30, ={hooked}
    str x12, [x30]
    b 80f
42:
    .byte 0x80, 0x01, 0x3f, 0xd6

// blr x13
13:
    ldr w29, 43f
    cmp w30, w29
    b.ne 14f
    ldr x30, ={hooked}
    str x13, [x30]
    b 80f
43:
    .byte 0xa0, 0x01, 0x3f, 0xd6

// blr x14
14:
    ldr w29, 44f
    cmp w30, w29
    b.ne 15f
    ldr x30, ={hooked}
    str x14, [x30]
    b 80f
44:
    .byte 0xc0, 0x01, 0x3f, 0xd6

// blr x15
15:
    ldr w29, 45f
    cmp w30, w29
    b.ne 16f
    ldr x30, ={hooked}
    str x15, [x30]
    b 80f
45:
    .byte 0xe0, 0x01, 0x3f, 0xd6

// blr x16
16:
    ldr w29, 46f
    cmp w30, w29
    b.ne 17f
    ldr x30, ={hooked}
    str x16, [x30]
    b 80f
46:
    .byte 0x00, 0x02, 0x3f, 0xd6

// blr x17
17:
    ldr w29, 47f
    cmp w30, w29
    b.ne 18f
    ldr x30, ={hooked}
    str x17, [x30]
    b 80f
47:
    .byte 0x20, 0x02, 0x3f, 0xd6

// blr x18
18:
    ldr w29, 48f
    cmp w30, w29
    b.ne 19f
    ldr x30, ={hooked}
    str x18, [x30]
    b 80f
48:
    .byte 0x40, 0x02, 0x3f, 0xd6

// blr x19
19:
    ldr w29, 49f
    cmp w30, w29
    b.ne 20f
    ldr x30, ={hooked}
    str x19, [x30]
    b 80f
49:
    .byte 0x60, 0x02, 0x3f, 0xd6

// blr x20
20:
    ldr w29, 50f
    cmp w30, w29
    b.ne 21f
    ldr x30, ={hooked}
    str x20, [x30]
    b 80f
50:
    .byte 0x80, 0x02, 0x3f, 0xd6

// blr x21
21:
    ldr w29, 51f
    cmp w30, w29
    b.ne 22f
    ldr x30, ={hooked}
    str x21, [x30]
    b 80f
51:
    .byte 0xa0, 0x02, 0x3f, 0xd6

// blr x22
22:
    ldr w29, 52f
    cmp w30, w29
    b.ne 23f
    ldr x30, ={hooked}
    str x22, [x30]
    b 80f
52:
    .byte 0xc0, 0x02, 0x3f, 0xd6

// blr x23
23:
    ldr w29, 53f
    cmp w30, w29
    b.ne 24f
    ldr x30, ={hooked}
    str x23, [x30]
    b 80f
53:
    .byte 0xe0, 0x02, 0x3f, 0xd6

// blr x24
24:
    ldr w29, 54f
    cmp w30, w29
    b.ne 25f
    ldr x30, ={hooked}
    str x24, [x30]
    b 80f
54:
    .byte 0x00, 0x03, 0x3f, 0xd6

// blr x25
25:
    ldr w29, 55f
    cmp w30, w29
    b.ne 26f
    ldr x30, ={hooked}
    str x25, [x30]
    b 80f
55:
    .byte 0x20, 0x03, 0x3f, 0xd6

// blr x26
26:
    ldr w29, 56f
    cmp w30, w29
    b.ne 27f
    ldr x30, ={hooked}
    str x26, [x30]
    b 80f
56:
    .byte 0x40, 0x03, 0x3f, 0xd6

// blr x27
27:
    ldr w29, 57f
    cmp w30, w29
    b.ne 28f
    ldr x30, ={hooked}
    str x27, [x30]
    b 80f
57:
    .byte 0x60, 0x03, 0x3f, 0xd6

// blr x28
28:
    ldr w29, 58f
    cmp w30, w29
    b.ne 60f
    ldr x30, ={hooked}
    str x28, [x30]
    b 80f
58:
    .byte 0x80, 0x03, 0x3f, 0xd6

// bl
60:
    // calculate the branch offset by applying a 26 bit mask to the branch instruction
    ldr w29, 70f
    orr w29, w30, w29
    // calculate the address by adding the branch offset to the branch instruction address
    ldr x30, [sp]
    sub x30, x30, #4
    add x29, x30, x29
    // save the address and finish
    ldr x30, ={hooked}
    str x29, [x30]
    b 80f
70:
    .word 0x3FFFFFF

// restore everything and branch to handler
80:
    ldr x30, [sp], #8
    ldr x29, [sp], #8
    b {next}
