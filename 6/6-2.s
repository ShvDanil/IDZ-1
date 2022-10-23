        .file   "5.c"
        .text
        .section        .rodata
.LC0:
        .string "%d"
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
        subq    $104, %rsp
        .cfi_offset 15, -24
        .cfi_offset 14, -32
        .cfi_offset 13, -40
        .cfi_offset 12, -48
        .cfi_offset 3, -56
        movq    %fs:40, %rax
        movq    %rax, -56(%rbp)
        xorl    %eax, %eax
        movq    %rsp, %rax
        movq    %rax, %rbx
        leaq    -100(%rbp), %rax
        movq    %rax, %rsi
        leaq    .LC0(%rip), %rdi
        movl    $0, %eax
        call    __isoc99_scanf@PLT
        movl    -100(%rbp), %eax
        cltq
        salq    $2, %rax
        movq    %rax, %rdx
        subq    $1, %rdx
        movq    %rdx, -88(%rbp)
        movq    %rax, -128(%rbp)
        movq    $0, -120(%rbp)
        movq    %rax, -144(%rbp)
        movq    $0, -136(%rbp)
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
        movl    -100(%rbp), %eax
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
        movl    $16, %edi
        movl    $0, %edx
        divq    %rdi
        imulq   $16, %rax, %rax
        subq    %rax, %rsp
        movq    %rsp, %rax
        addq    $3, %rax
        shrq    $2, %rax
        salq    $2, %rax
        movq    %rax, -64(%rbp)
        movl    -100(%rbp), %edx
        movq    -80(%rbp), %rax
        movl    %edx, %esi
        movq    %rax, %rdi
        call    get_input_and_find_min
        movl    %eax, -96(%rbp)
        movl    -100(%rbp), %edx
        movq    -64(%rbp), %rsi
        movq    -80(%rbp), %rax
        movl    -96(%rbp), %ecx
        movq    %rax, %rdi
        call    func
        movl    %eax, -92(%rbp)
        movq    -64(%rbp), %rax
        movl    -92(%rbp), %edx
        movl    %edx, %esi
        movq    %rax, %rdi
        call    print_result
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