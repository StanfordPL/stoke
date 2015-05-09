  .text
  .globl _ZN2pp23Instance_DidChangeFocusEi7PP_Bool
  .type _ZN2pp23Instance_DidChangeFocusEi7PP_Bool, @function

#! file-offset 0x24460
#! rip-offset  0x24460
#! capacity    320 bytes

# Text                                       #  Line  RIP      Bytes  
._ZN2pp23Instance_DidChangeFocusEi7PP_Bool:  #        0x24460  0      
  pushq %r12                                 #  1     0x24460  3      
  movl %esi, %r12d                           #  2     0x24463  3      
  pushq %rbx                                 #  3     0x24466  2      
  movl %edi, %ebx                            #  4     0x24468  2      
  subl $0x8, %esp                            #  5     0x2446a  3      
  addq %r15, %rsp                            #  6     0x2446d  3      
  nop                                        #  7     0x24470  1      
  callq ._ZN2pp6Module3GetEv                 #  8     0x24471  5      
  movl %eax, %eax                            #  9     0x24476  2      
  testq %rax, %rax                           #  10    0x24478  3      
  je .L_24580                                #  11    0x2447b  6      
  leal 0x8(%rax), %esi                       #  12    0x24481  3      
  movl %eax, %eax                            #  13    0x24484  2      
  movl 0xc(%r15,%rax,1), %eax                #  14    0x24486  5      
  movq %rsi, %rcx                            #  15    0x2448b  3      
  testq %rax, %rax                           #  16    0x2448e  3      
  nop                                        #  17    0x24491  1      
  jne .L_24500                               #  18    0x24492  6      
  jmpq .L_24520                              #  19    0x24498  5      
  nop                                        #  20    0x2449d  1      
  nop                                        #  21    0x2449e  1      
.L_244c0:                                    #        0x2449f  0      
  movl %eax, %eax                            #  22    0x2449f  2      
  movl 0x8(%r15,%rax,1), %edx                #  23    0x244a1  5      
  movq %rax, %rcx                            #  24    0x244a6  3      
  testq %rdx, %rdx                           #  25    0x244a9  3      
  je .L_24520                                #  26    0x244ac  6      
  xchgw %ax, %ax                             #  27    0x244b2  3      
  nop                                        #  28    0x244b5  1      
.L_244e0:                                    #        0x244b6  0      
  movq %rdx, %rax                            #  29    0x244b6  3      
  nop                                        #  30    0x244b9  1      
  nop                                        #  31    0x244ba  1      
.L_24500:                                    #        0x244bb  0      
  movl %eax, %eax                            #  32    0x244bb  2      
  cmpl 0x10(%r15,%rax,1), %ebx               #  33    0x244bd  5      
  jle .L_244c0                               #  34    0x244c2  6      
  movl %eax, %eax                            #  35    0x244c8  2      
  movl 0xc(%r15,%rax,1), %edx                #  36    0x244ca  5      
  testq %rdx, %rdx                           #  37    0x244cf  3      
  jne .L_244e0                               #  38    0x244d2  6      
  nop                                        #  39    0x244d8  1      
.L_24520:                                    #        0x244d9  0      
  cmpl %ecx, %esi                            #  40    0x244d9  2      
  je .L_24580                                #  41    0x244db  6      
  movl %ecx, %ecx                            #  42    0x244e1  2      
  cmpl 0x10(%r15,%rcx,1), %ebx               #  43    0x244e3  5      
  jl .L_24580                                #  44    0x244e8  6      
  movl %ecx, %ecx                            #  45    0x244ee  2      
  movl 0x14(%r15,%rcx,1), %edi               #  46    0x244f0  5      
  testq %rdi, %rdi                           #  47    0x244f5  3      
  je .L_24580                                #  48    0x244f8  6      
  movl %edi, %edi                            #  49    0x244fe  2      
  movl (%r15,%rdi,1), %eax                   #  50    0x24500  4      
  nop                                        #  51    0x24504  1      
  xorl %esi, %esi                            #  52    0x24505  2      
  testl %r12d, %r12d                         #  53    0x24507  3      
  setne %sil                                 #  54    0x2450a  4      
  movl %eax, %eax                            #  55    0x2450e  2      
  movl 0x14(%r15,%rax,1), %eax               #  56    0x24510  5      
  addl $0x8, %esp                            #  57    0x24515  3      
  addq %r15, %rsp                            #  58    0x24518  3      
  popq %rbx                                  #  59    0x2451b  2      
  popq %r12                                  #  60    0x2451d  3      
  nop                                        #  61    0x24520  1      
  andl $0xffffffe0, %eax                     #  62    0x24521  5      
  addq %r15, %rax                            #  63    0x24526  3      
  jmpq %rax                                  #  64    0x24529  2      
  nop                                        #  65    0x2452b  1      
  nop                                        #  66    0x2452c  1      
.L_24580:                                    #        0x2452d  0      
  addl $0x8, %esp                            #  67    0x2452d  3      
  addq %r15, %rsp                            #  68    0x24530  3      
  popq %rbx                                  #  69    0x24533  2      
  popq %r12                                  #  70    0x24535  3      
  popq %r11                                  #  71    0x24538  3      
  andl $0xffffffe0, %r11d                    #  72    0x2453b  7      
  addq %r15, %r11                            #  73    0x24542  3      
  jmpq %r11                                  #  74    0x24545  3      
  nop                                        #  75    0x24548  1      
                                                                      
.size _ZN2pp23Instance_DidChangeFocusEi7PP_Bool, .-_ZN2pp23Instance_DidChangeFocusEi7PP_Bool

