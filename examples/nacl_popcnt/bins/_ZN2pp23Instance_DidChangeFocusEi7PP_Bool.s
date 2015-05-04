  .text
  .globl _ZN2pp23Instance_DidChangeFocusEi7PP_Bool
  .type _ZN2pp23Instance_DidChangeFocusEi7PP_Bool, @function

#! file-offset 0x24500
#! rip-offset  0x24500
#! capacity    320 bytes

# Text                                       #  Line  RIP      Bytes  
._ZN2pp23Instance_DidChangeFocusEi7PP_Bool:  #        0x24500  0      
  pushq %r12                                 #  1     0x24500  3      
  movl %esi, %r12d                           #  2     0x24503  3      
  pushq %rbx                                 #  3     0x24506  2      
  movl %edi, %ebx                            #  4     0x24508  2      
  subl $0x8, %esp                            #  5     0x2450a  3      
  addq %r15, %rsp                            #  6     0x2450d  3      
  nop                                        #  7     0x24510  1      
  callq ._ZN2pp6Module3GetEv                 #  8     0x24511  5      
  movl %eax, %eax                            #  9     0x24516  2      
  testq %rax, %rax                           #  10    0x24518  3      
  je .L_24620                                #  11    0x2451b  6      
  leal 0x8(%rax), %esi                       #  12    0x24521  3      
  movl %eax, %eax                            #  13    0x24524  2      
  movl 0xc(%r15,%rax,1), %eax                #  14    0x24526  5      
  movq %rsi, %rcx                            #  15    0x2452b  3      
  testq %rax, %rax                           #  16    0x2452e  3      
  nop                                        #  17    0x24531  1      
  jne .L_245a0                               #  18    0x24532  6      
  jmpq .L_245c0                              #  19    0x24538  5      
  nop                                        #  20    0x2453d  1      
  nop                                        #  21    0x2453e  1      
.L_24560:                                    #        0x2453f  0      
  movl %eax, %eax                            #  22    0x2453f  2      
  movl 0x8(%r15,%rax,1), %edx                #  23    0x24541  5      
  movq %rax, %rcx                            #  24    0x24546  3      
  testq %rdx, %rdx                           #  25    0x24549  3      
  je .L_245c0                                #  26    0x2454c  6      
  xchgw %ax, %ax                             #  27    0x24552  3      
  nop                                        #  28    0x24555  1      
.L_24580:                                    #        0x24556  0      
  movq %rdx, %rax                            #  29    0x24556  3      
  nop                                        #  30    0x24559  1      
  nop                                        #  31    0x2455a  1      
.L_245a0:                                    #        0x2455b  0      
  movl %eax, %eax                            #  32    0x2455b  2      
  cmpl 0x10(%r15,%rax,1), %ebx               #  33    0x2455d  5      
  jle .L_24560                               #  34    0x24562  6      
  movl %eax, %eax                            #  35    0x24568  2      
  movl 0xc(%r15,%rax,1), %edx                #  36    0x2456a  5      
  testq %rdx, %rdx                           #  37    0x2456f  3      
  jne .L_24580                               #  38    0x24572  6      
  nop                                        #  39    0x24578  1      
.L_245c0:                                    #        0x24579  0      
  cmpl %ecx, %esi                            #  40    0x24579  2      
  je .L_24620                                #  41    0x2457b  6      
  movl %ecx, %ecx                            #  42    0x24581  2      
  cmpl 0x10(%r15,%rcx,1), %ebx               #  43    0x24583  5      
  jl .L_24620                                #  44    0x24588  6      
  movl %ecx, %ecx                            #  45    0x2458e  2      
  movl 0x14(%r15,%rcx,1), %edi               #  46    0x24590  5      
  testq %rdi, %rdi                           #  47    0x24595  3      
  je .L_24620                                #  48    0x24598  6      
  movl %edi, %edi                            #  49    0x2459e  2      
  movl (%r15,%rdi,1), %eax                   #  50    0x245a0  4      
  nop                                        #  51    0x245a4  1      
  xorl %esi, %esi                            #  52    0x245a5  2      
  testl %r12d, %r12d                         #  53    0x245a7  3      
  setne %sil                                 #  54    0x245aa  4      
  movl %eax, %eax                            #  55    0x245ae  2      
  movl 0x14(%r15,%rax,1), %eax               #  56    0x245b0  5      
  addl $0x8, %esp                            #  57    0x245b5  3      
  addq %r15, %rsp                            #  58    0x245b8  3      
  popq %rbx                                  #  59    0x245bb  2      
  popq %r12                                  #  60    0x245bd  3      
  nop                                        #  61    0x245c0  1      
  andl $0xffffffe0, %eax                     #  62    0x245c1  5      
  addq %r15, %rax                            #  63    0x245c6  3      
  jmpq %rax                                  #  64    0x245c9  2      
  nop                                        #  65    0x245cb  1      
  nop                                        #  66    0x245cc  1      
.L_24620:                                    #        0x245cd  0      
  addl $0x8, %esp                            #  67    0x245cd  3      
  addq %r15, %rsp                            #  68    0x245d0  3      
  popq %rbx                                  #  69    0x245d3  2      
  popq %r12                                  #  70    0x245d5  3      
  popq %r11                                  #  71    0x245d8  3      
  andl $0xffffffe0, %r11d                    #  72    0x245db  7      
  addq %r15, %r11                            #  73    0x245e2  3      
  jmpq %r11                                  #  74    0x245e5  3      
  nop                                        #  75    0x245e8  1      
                                                                      
.size _ZN2pp23Instance_DidChangeFocusEi7PP_Bool, .-_ZN2pp23Instance_DidChangeFocusEi7PP_Bool

