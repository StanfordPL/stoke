  .text
  .globl _ZN2pp23Instance_DidChangeFocusEi7PP_Bool
  .type _ZN2pp23Instance_DidChangeFocusEi7PP_Bool, @function

#! file-offset 0x24480
#! rip-offset  0x24480
#! capacity    320 bytes

# Text                                       #  Line  RIP      Bytes  
._ZN2pp23Instance_DidChangeFocusEi7PP_Bool:  #        0x24480  0      
  pushq %r12                                 #  1     0x24480  3      
  movl %esi, %r12d                           #  2     0x24483  3      
  pushq %rbx                                 #  3     0x24486  2      
  movl %edi, %ebx                            #  4     0x24488  2      
  subl $0x8, %esp                            #  5     0x2448a  3      
  addq %r15, %rsp                            #  6     0x2448d  3      
  nop                                        #  7     0x24490  1      
  callq ._ZN2pp6Module3GetEv                 #  8     0x24491  5      
  movl %eax, %eax                            #  9     0x24496  2      
  testq %rax, %rax                           #  10    0x24498  3      
  je .L_245a0                                #  11    0x2449b  6      
  leal 0x8(%rax), %esi                       #  12    0x244a1  3      
  movl %eax, %eax                            #  13    0x244a4  2      
  movl 0xc(%r15,%rax,1), %eax                #  14    0x244a6  5      
  movq %rsi, %rcx                            #  15    0x244ab  3      
  testq %rax, %rax                           #  16    0x244ae  3      
  nop                                        #  17    0x244b1  1      
  jne .L_24520                               #  18    0x244b2  6      
  jmpq .L_24540                              #  19    0x244b8  5      
  nop                                        #  20    0x244bd  1      
  nop                                        #  21    0x244be  1      
.L_244e0:                                    #        0x244bf  0      
  movl %eax, %eax                            #  22    0x244bf  2      
  movl 0x8(%r15,%rax,1), %edx                #  23    0x244c1  5      
  movq %rax, %rcx                            #  24    0x244c6  3      
  testq %rdx, %rdx                           #  25    0x244c9  3      
  je .L_24540                                #  26    0x244cc  6      
  xchgw %ax, %ax                             #  27    0x244d2  3      
  nop                                        #  28    0x244d5  1      
.L_24500:                                    #        0x244d6  0      
  movq %rdx, %rax                            #  29    0x244d6  3      
  nop                                        #  30    0x244d9  1      
  nop                                        #  31    0x244da  1      
.L_24520:                                    #        0x244db  0      
  movl %eax, %eax                            #  32    0x244db  2      
  cmpl 0x10(%r15,%rax,1), %ebx               #  33    0x244dd  5      
  jle .L_244e0                               #  34    0x244e2  6      
  movl %eax, %eax                            #  35    0x244e8  2      
  movl 0xc(%r15,%rax,1), %edx                #  36    0x244ea  5      
  testq %rdx, %rdx                           #  37    0x244ef  3      
  jne .L_24500                               #  38    0x244f2  6      
  nop                                        #  39    0x244f8  1      
.L_24540:                                    #        0x244f9  0      
  cmpl %ecx, %esi                            #  40    0x244f9  2      
  je .L_245a0                                #  41    0x244fb  6      
  movl %ecx, %ecx                            #  42    0x24501  2      
  cmpl 0x10(%r15,%rcx,1), %ebx               #  43    0x24503  5      
  jl .L_245a0                                #  44    0x24508  6      
  movl %ecx, %ecx                            #  45    0x2450e  2      
  movl 0x14(%r15,%rcx,1), %edi               #  46    0x24510  5      
  testq %rdi, %rdi                           #  47    0x24515  3      
  je .L_245a0                                #  48    0x24518  6      
  movl %edi, %edi                            #  49    0x2451e  2      
  movl (%r15,%rdi,1), %eax                   #  50    0x24520  4      
  nop                                        #  51    0x24524  1      
  xorl %esi, %esi                            #  52    0x24525  2      
  testl %r12d, %r12d                         #  53    0x24527  3      
  setne %sil                                 #  54    0x2452a  4      
  movl %eax, %eax                            #  55    0x2452e  2      
  movl 0x14(%r15,%rax,1), %eax               #  56    0x24530  5      
  addl $0x8, %esp                            #  57    0x24535  3      
  addq %r15, %rsp                            #  58    0x24538  3      
  popq %rbx                                  #  59    0x2453b  2      
  popq %r12                                  #  60    0x2453d  3      
  nop                                        #  61    0x24540  1      
  andl $0xffffffe0, %eax                     #  62    0x24541  5      
  addq %r15, %rax                            #  63    0x24546  3      
  jmpq %rax                                  #  64    0x24549  2      
  nop                                        #  65    0x2454b  1      
  nop                                        #  66    0x2454c  1      
.L_245a0:                                    #        0x2454d  0      
  addl $0x8, %esp                            #  67    0x2454d  3      
  addq %r15, %rsp                            #  68    0x24550  3      
  popq %rbx                                  #  69    0x24553  2      
  popq %r12                                  #  70    0x24555  3      
  popq %r11                                  #  71    0x24558  3      
  andl $0xffffffe0, %r11d                    #  72    0x2455b  7      
  addq %r15, %r11                            #  73    0x24562  3      
  jmpq %r11                                  #  74    0x24565  3      
  nop                                        #  75    0x24568  1      
                                                                      
.size _ZN2pp23Instance_DidChangeFocusEi7PP_Bool, .-_ZN2pp23Instance_DidChangeFocusEi7PP_Bool

