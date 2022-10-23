        .file   "7.c"
        .text
        .section        .rodata
.LC0:
        .string "%d"
        .text
        .globl  read_input_and_find_min
        .type   read_input_and_find_min, @function
read_input_and_find_min:
.LFB0:
        .cfi_startproc
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        subq    $48, %rsp
        movq    %rdi, -24(%rbp)
        movq    %rsi, -32(%rbp)
        movl    %edx, -36(%rbp)
        movl    $100000, -8(%rbp)
        movl    $0, -4(%rbp)
        jmp     .L2
.L4:
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -32(%rbp), %rax
        addq    %rax, %rdx
        movq    -24(%rbp), %rax
        leaq    .LC0(%rip), %rsi
        movq    %rax, %rdi
        movl    $0, %eax
        call    __isoc99_fscanf@PLT
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -32(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        cmpl    %eax, -8(%rbp)
        jle     .L3
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -32(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        movl    %eax, -8(%rbp)
.L3:
        addl    $1, -4(%rbp)
.L2:
        movl    -4(%rbp), %eax
        cmpl    -36(%rbp), %eax
        jl      .L4
        movl    -8(%rbp), %eax
        leave
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE0:
        .size   read_input_and_find_min, .-read_input_and_find_min
        .globl  func
        .type   func, @function
func:
.LFB1:
        .cfi_startproc
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        movq    %rdi, -24(%rbp)
        movq    %rsi, -32(%rbp)
        movl    %edx, -36(%rbp)
        movl    %ecx, -40(%rbp)
        movl    $0, -8(%rbp)
        movl    $0, -4(%rbp)
        jmp     .L7
.L9:
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -24(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        cmpl    %eax, -40(%rbp)
        je      .L8
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -24(%rbp), %rax
        addq    %rdx, %rax
        movl    -8(%rbp), %edx
        movslq  %edx, %rdx
        leaq    0(,%rdx,4), %rcx
        movq    -32(%rbp), %rdx
        addq    %rcx, %rdx
        movl    (%rax), %eax
        movl    %eax, (%rdx)
        addl    $1, -8(%rbp)
.L8:
        addl    $1, -4(%rbp)
.L7:
        movl    -4(%rbp), %eax
        cmpl    -36(%rbp), %eax
        jl      .L9
        movl    -8(%rbp), %eax
        popq    %rbp
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE1:
        .size   func, .-func
        .section        .rodata
.LC1:
        .string "%d "
        .text
        .globl  write_result
        .type   write_result, @function
write_result:
.LFB2:
        .cfi_startproc
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        subq    $48, %rsp
        movq    %rdi, -24(%rbp)
        movq    %rsi, -32(%rbp)
        movl    %edx, -36(%rbp)
        movl    $0, -4(%rbp)
        jmp     .L12
.L13:
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -32(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %edx
        movq    -24(%rbp), %rax
        leaq    .LC1(%rip), %rsi
        movq    %rax, %rdi
        movl    $0, %eax
        call    fprintf@PLT
        addl    $1, -4(%rbp)
.L12:
        movl    -4(%rbp), %eax
        cmpl    -36(%rbp), %eax
        jl      .L13
        nop
        leave
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE2:
        .size   write_result, .-write_result
        .section        .rodata
.LC2:
        .string "r"
.LC3:
        .string "w"
        .text
        .globl  main
        .type   main, @function