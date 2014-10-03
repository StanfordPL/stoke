  .text
  .globl main
  .type main, @function
main:
  pushq  %rbp                    # 1   
  movq   %rsp,%rbp               # 2   
  pushq  %r15                    # 3   
  pushq  %r14                    # 4   
  pushq  %r13                    # 5   
  pushq  %r12                    # 6   
  pushq  %rbx                    # 7   
  subq   $0x48,%rsp              # 8   
  movl   %edi,-0x64(%rbp)        # 9   
  movq   %rsi,-0x70(%rbp)        # 10  
  movq   %rsp,%rax               # 11  
  movq   %rax,%rbx               # 12  
  movq   -0x70(%rbp),%rax        # 13  
  addq   $0x8,%rax               # 14  
  movq   (%rax),%rax             # 15  
  movq   %rax,%rdi               # 16  
  callq  .L_400480               # 17  
  movl   %eax,-0x54(%rbp)        # 18  
  movl   -0x54(%rbp),%eax        # 19  
  movslq %eax,%rdx               # 20  
  subq   $0x1,%rdx               # 21  
  movq   %rdx,-0x40(%rbp)        # 22  
  movslq %eax,%rdx               # 23  
  movq   %rdx,%r14               # 24  
  movl   $0x0,%r15d              # 25  
  movslq %eax,%rdx               # 26  
  movq   %rdx,%r12               # 27  
  movl   $0x0,%r13d              # 28  
  cltq                           # 29  
  shlq   $0x3,%rax               # 30  
  leaq   0x7(%rax),%rdx          # 31  
  movl   $0x10,%eax              # 32  
  subq   $0x1,%rax               # 33  
  addq   %rdx,%rax               # 34  
  movl   $0x10,%esi              # 35  
  movl   $0x0,%edx               # 36  
  divq   %rsi                    # 37  
  imulq  $0x10,%rax,%rax         # 38  
  subq   %rax,%rsp               # 39  
  movq   %rsp,%rax               # 40  
  addq   $0x7,%rax               # 41  
  shrq   $0x3,%rax               # 42  
  shlq   $0x3,%rax               # 43  
  movq   %rax,-0x38(%rbp)        # 44  
  movq   -0x38(%rbp),%rax        # 45  
  movq   $0x0,(%rax)             # 46  
  movq   -0x38(%rbp),%rax        # 47  
  movq   $0x1,0x8(%rax)          # 48  
  movq   $0x0,-0x50(%rbp)        # 49  
  jmpq    .L_400684              # 50  
.L_400635:                             
  movq   $0x2,-0x48(%rbp)        # 51  
  jmpq    .L_400674              # 52  
.L_40063f:                             
  movq   -0x48(%rbp),%rax        # 53  
  leaq   -0x1(%rax),%rdx         # 54  
  movq   -0x38(%rbp),%rax        # 55  
  movq   (%rax,%rdx,8),%rdx      # 56  
  movq   -0x48(%rbp),%rax        # 57  
  leaq   -0x2(%rax),%rcx         # 58  
  movq   -0x38(%rbp),%rax        # 59  
  movq   (%rax,%rcx,8),%rax      # 60  
  leaq   (%rdx,%rax,1),%rcx      # 61  
  movq   -0x38(%rbp),%rax        # 62  
  movq   -0x48(%rbp),%rdx        # 63  
  movq   %rcx,(%rax,%rdx,8)      # 64  
  addq   $0x1,-0x48(%rbp)        # 65  
.L_400674:                             
  movl   -0x54(%rbp),%eax        # 66  
  cltq                           # 67  
  cmpq   -0x48(%rbp),%rax        # 68  
  ja     .L_40063f               # 69  
  addq   $0x1,-0x50(%rbp)        # 70  
.L_400684:                             
  cmpq   $0x2faf07f,-0x50(%rbp)  # 71  
  jbe    .L_400635               # 72  
  movl   -0x54(%rbp),%eax        # 73  
  leal   -0x1(%rax),%edx         # 74  
  movq   -0x38(%rbp),%rax        # 75  
  movslq %edx,%rdx               # 76  
  movq   (%rax,%rdx,8),%rax      # 77  
  movl   -0x54(%rbp),%edx        # 78  
  leal   -0x1(%rdx),%ecx         # 79  
  movq   %rax,%rdx               # 80  
  movl   %ecx,%esi               # 81  
  movl   $0x400754,%edi          # 82  
  movl   $0x0,%eax               # 83  
  callq  .L_400450               # 84  
  movq   %rbx,%rsp               # 85  
  movl   $0x0,%eax               # 86  
  leaq   -0x28(%rbp),%rsp        # 87  
  popq   %rbx                    # 88  
  popq   %r12                    # 89  
  popq   %r13                    # 90  
  popq   %r14                    # 91  
  popq   %r15                    # 92  
  popq   %rbp                    # 93  
  retq                           # 94  
                                       
.size main, .-main
