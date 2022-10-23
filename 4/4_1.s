        .file   "4.c"
        .text
        .section        .rodata
.LC0:
        .string "%d"
.LC1:
        .string "%d "
        .text
        .globl  main
        .type   main, @function
main:
.LFB0:
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
        leaq    -112(%rbp), %rax
        movq    %rax, %rsi
        leaq    .LC0(%rip), %rdi
        movl    $0, %eax
        call    __isoc99_scanf@PLT
        movl    -112(%rbp), %eax        # int N (scaned variable from users's keyboard)
        cltq
        salq    $2, %rax                # array A, where all input data from user's keyboard will be stored
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
        movl    -112(%rbp), %eax
        cltq
        salq    $2, %rax                # array B, where all proccessed data according to the task will be stored
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
        movl    $16, %esi
        movl    $0, %edx
        divq    %rsi
        imulq   $16, %rax, %rax
        subq    %rax, %rsp
        movq    %rsp, %rax
        addq    $3, %rax
        shrq    $2, %rax
        salq    $2, %rax
        movq    %rax, -64(%rbp)
        movl    $100000, -92(%rbp)      # mi = 100000 - initial min value
        movl    $0, -96(%rbp)           # int i = 0 - variable of main 
loop
        jmp     .L2
.L4:
        movl    -96(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -80(%rbp), %rax
        addq    %rdx, %rax
        movq    %rax, %rsi
        leaq    .LC0(%rip), %rdi
        movl    $0, %eax
        call    __isoc99_scanf@PLT
        movq    -80(%rbp), %rax         # A[i] - scaned number from user's input
        movl    -96(%rbp), %edx
        movslq  %edx, %rdx
        movl    (%rax,%rdx,4), %eax
        cmpl    %eax, -92(%rbp)         # if A[i] < mi -> condition of comparison for finding min el
        jle     .L3
        movq    -80(%rbp), %rax
        movl    -96(%rbp), %edx
        movslq  %edx, %rdx
        movl    (%rax,%rdx,4), %eax
        movl    %eax, -92(%rbp)
.L3:
        addl    $1, -96(%rbp)
.L2:
        movl    -112(%rbp), %eax
        cmpl    %eax, -96(%rbp)
        jl      .L4
        movl    $0, -100(%rbp)          # counter = 0 - initializing counter for finding amount of elements not equal with minimum
        movl    $0, -104(%rbp)          # int i = 0 - variable of loop
        jmp     .L5     
.L7:
        movq    -80(%rbp), %rax
        movl    -104(%rbp), %edx
        movslq  %edx, %rdx
        movl    (%rax,%rdx,4), %eax
        cmpl    %eax, -92(%rbp)
        je      .L6
        movq    -80(%rbp), %rax
        movl    -104(%rbp), %edx
        movslq  %edx, %rdx
        movl    (%rax,%rdx,4), %ecx
        movq    -64(%rbp), %rax
        movl    -100(%rbp), %edx
        movslq  %edx, %rdx
        movl    %ecx, (%rax,%rdx,4)
        addl    $1, -100(%rbp)
.L6:
        addl    $1, -104(%rbp)
.L5:
        movl    -112(%rbp), %eax
        cmpl    %eax, -104(%rbp)
        jl      .L7
        movl    $0, -108(%rbp)
        jmp     .L8
.L9:
        movq    -64(%rbp), %rax
        movl    -108(%rbp), %edx
        movslq  %edx, %rdx
        movl    (%rax,%rdx,4), %eax
        movl    %eax, %esi
        leaq    .LC1(%rip), %rdi
        movl    $0, %eax
        call    printf@PLT
        addl    $1, -108(%rbp)
.L8:
        movl    -108(%rbp), %eax
        cmpl    -100(%rbp), %eax
        jl      .L9
        movl    $0, %eax
        movq    %rbx, %rsp
        movq    -56(%rbp), %rcx
        xorq    %fs:40, %rcx
        je      .L11
        call    __stack_chk_fail@PLT
.L11:
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
.LFE0:
        .size   main, .-main
        .ident  "GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
        .section        .note.GNU-stack,"",@progbits
