	.file   "5.c"
        .text
        .section        .rodata
.LC0:
        .string "%d"
        .text
        .globl  get_input_and_find_min
        .type   get_input_and_find_min, @function
get_input_and_find_min:
.LFB0:
        .cfi_startproc
        pushq   %rbp
        pushq   %r12                    # pointer to array A, where all input data entered from user's keyboard will be stored
        pushq   %r13                    # int N (scaned variable from users's keyboard)
        pushq   %r14                    # int mi - min element
        pushq   %r15                    # int i - local loop variable
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6 
        movq    %rdi, %r12              # pointer to array A, where all input data entered from user's keyboard will be stored
        movq    %rsi, %r13              # int N (scaned variable from users's keyboard)
        movq    $100000, %r14           # int mi - min element
        movq    $0, %r15
        jmp     .L2
.L4:
        movq    %r15, %rax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    %r12, %rax
        addq    %rdx, %rax
        movq    %rax, %rsi
        leaq    .LC0(%rip), %rdi
        movl    $0, %eax
        call    __isoc99_scanf@PLT
        movq    %r15, %rax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    %r12, %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        cmpq    %rax, %r14
        jle     .L3
        movq    %r15, %rax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    %r12, %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        movq    %rax, %r14
.L3:
        addq    $1, %r15
.L2:
        movq    %r15, %rax
        cmpq    %r13, %rax
        jl      .L4
        movq    %r14, %rax              # return mi
        movq    %rbp, %rsp
        popq    %r15
        popq    %r14
        popq    %r13
        popq    %r12
        popq    %rbp
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE0:
        .size   get_input_and_find_min, .-get_input_and_find_min
        .globl  func
        .type   func, @function
func:
.LFB1:
        .cfi_startproc
        pushq   %rbp
        pushq   %r12                    # pointer to array A, where all input data entered from user's keyboard is stored
        pushq   %r13                    # pointer to array B, where all proccessed data (elements not equal to min) will be stored
        pushq   %r14                    # int N
        pushq   %r15                    # int mi - min element
        pushq   %rbx                    # int counter - amount of elements not equal to min element
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        movq    %rdi, %r12              # pointer to array A, where all input data entered from user's keyboard is stored
        movq    %rsi, %r13              # pointer to array B, where all proccessed data (elements not equal to min) will be stored
        movq    %rdx, %r14              # int N
        movq    %rcx, %r15              # int mi - min element
        movq    $0, %rbx                # int counter = 0
        movl    $0, -4(%rbp)            # int i = 0
        jmp     .L7
.L9:
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    %r12, %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        cmpq    %rax, %r15
        je      .L8
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    %r12, %rax
        addq    %rdx, %rax
        movq    %rbx, %rdx
        movslq  %edx, %rdx
        leaq    0(,%rdx,4), %rcx
        movq    %r13, %rdx
        addq    %rcx, %rdx
        movl    (%rax), %eax
        movl    %eax, (%rdx)
        addq    $1, %rbx
.L8:
        addl    $1, -4(%rbp)
.L7:
        movl    -4(%rbp), %eax
        cmpq    %r14, %rax
        jl      .L9
        movq    %rbx, %rax              # return counter
        movq    %rbp, %rsp
        popq    %rbx
        popq    %r15
        popq    %r14
        popq    %r13
        popq    %r12
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
        .globl  print_result
        .type   print_result, @function
print_result:
.LFB2:
        .cfi_startproc
        pushq   %rbp
        pushq   %r12                    # pointer to array B, where all proccessed data (elements not equal to min) is stored
        pushq   %r13                    # int counter - amount of elements not equal to min element
        pushq   %r14                    # int i - local loop variable
        pushq   %r15                    
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        movq    %rdi, %r12              # pointer to array B, where all proccessed data (elements not equal to min) is stored
        movq    %rsi, %r13              # int counter
        movq    $0, %r14                # int i = 0
        jmp     .L12
.L13:
        movq    %r14, %rax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    %r12, %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        movl    %eax, %esi
        leaq    .LC1(%rip), %rdi
        movl    $0, %eax
        call    printf@PLT
        addq    $1, %r14
.L12:
        movq    %r14, %rax
        cmpq    %r13, %rax
        jl      .L13
        nop
        movq    %rbp, %rsp
        popq    %r15
        popq    %r14
        popq    %r13
        popq    %r12
        popq    %rbp
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE2:
        .size   print_result, .-print_result
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
