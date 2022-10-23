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
main:
.LFB3:
        .cfi_startproc
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        pushq   %r15
        pushq   %r14
        pushq   %r13
        pushq   %r12
        pushq   %rbx
        subq    $136, %rsp
        .cfi_offset 15, -24
        .cfi_offset 14, -32
        .cfi_offset 13, -40
        .cfi_offset 12, -48
        .cfi_offset 3, -56
        movl    %edi, -132(%rbp)
        movq    %rsi, -144(%rbp)
        movq    %fs:40, %rax
        movq    %rax, -56(%rbp)
        xorl    %eax, %eax
        movq    %rsp, %rax
        movq    %rax, %rbx
        movq    -144(%rbp), %rax
        addq    $8, %rax
        movq    (%rax), %rax
        leaq    .LC2(%rip), %rsi
        movq    %rax, %rdi
        call    fopen@PLT
        movq    %rax, -96(%rbp)
        movq    -144(%rbp), %rax
        addq    $16, %rax
        movq    (%rax), %rax
        leaq    .LC3(%rip), %rsi
        movq    %rax, %rdi
        call    fopen@PLT
        movq    %rax, -104(%rbp)
        leaq    -116(%rbp), %rdx
        movq    -96(%rbp), %rax
        leaq    .LC0(%rip), %rsi
        movq    %rax, %rdi
        movl    $0, %eax
        call    __isoc99_fscanf@PLT
        movl    -116(%rbp), %eax
        cltq
        salq    $2, %rax
        movq    %rax, %rdx
        subq    $1, %rdx
        movq    %rdx, -88(%rbp)
        movq    %rax, -160(%rbp)
        movq    $0, -152(%rbp)
        movq    %rax, -176(%rbp)
        movq    $0, -168(%rbp)
        salq    $2, %rax
        leaq    3(%rax), %rdx
        movl    $16, %eax
        subq    $1, %rax
        addq    %rdx, %rax
        movl    $16, %ecx
        movl    $0, %edx
        divq    %rcx
        imulq   $16, %rax, %rax
        subq    %rax, %rsp
        movq    %rsp, %rax
        addq    $3, %rax
        shrq    $2, %rax
        salq    $2, %rax
        movq    %rax, -80(%rbp)
        movl    -116(%rbp), %eax
        cltq
        salq    $2, %rax
        movq    %rax, %rdx
        subq    $1, %rdx
        movq    %rdx, -72(%rbp)
        movq    %rax, %r14
        movl    $0, %r15d
        movq    %rax, %r12
        movl    $0, %r13d
        salq    $2, %rax
        leaq    3(%rax), %rdx
        movl    $16, %eax
        subq    $1, %rax
        addq    %rdx, %rax
        movl    $16, %ecx
        movl    $0, %edx
        divq    %rcx
        imulq   $16, %rax, %rax
        subq    %rax, %rsp
        movq    %rsp, %rax
        addq    $3, %rax
        shrq    $2, %rax
        salq    $2, %rax
        movq    %rax, -64(%rbp)
        movl    -116(%rbp), %edx
        movq    -80(%rbp), %rcx
        movq    -96(%rbp), %rax
        movq    %rcx, %rsi
        movq    %rax, %rdi
        call    read_input_and_find_min
        movl    %eax, -112(%rbp)
        movl    -116(%rbp), %edx
        movq    -64(%rbp), %rsi
        movq    -80(%rbp), %rax
        movl    -112(%rbp), %ecx
        movq    %rax, %rdi
        call    func
        movl    %eax, -108(%rbp)
        movq    -64(%rbp), %rcx
        movl    -108(%rbp), %edx
        movq    -104(%rbp), %rax
        movq    %rcx, %rsi
        movq    %rax, %rdi
        call    write_result
        movq    -96(%rbp), %rax
        movq    %rax, %rdi
        call    fclose@PLT
        movq    -104(%rbp), %rax
        movq    %rax, %rdi
        call    fclose@PLT
        movl    $0, %eax
        movq    %rbx, %rsp
        movq    -56(%rbp), %rbx
        xorq    %fs:40, %rbx
        je      .L16
        call    __stack_chk_fail@PLT
.L16:
        leaq    -40(%rbp), %rsp
        popq    %rbx
        popq    %r12
        popq    %r13
        popq    %r14
        popq    %r15
        popq    %rbp
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE3:
        .size   main, .-main
        .ident  "GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
        .section        .note.GNU-stack,"",@progbits