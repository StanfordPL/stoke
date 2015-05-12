  .text
  .globl PPP_InitializeModule
  .type PPP_InitializeModule, @function

#! file-offset 0x26ae0
#! rip-offset  0x26ae0
#! capacity    192 bytes

# Text                                           #  Line  RIP      Bytes  
.PPP_InitializeModule:                           #        0x26ae0  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x26ae0  5      
  movq %r12, -0x10(%rsp)                         #  2     0x26ae5  5      
  movl %edi, %r12d                               #  3     0x26aea  3      
  movq %r13, -0x8(%rsp)                          #  4     0x26aed  5      
  subl $0x18, %esp                               #  5     0x26af2  3      
  addq %r15, %rsp                                #  6     0x26af5  3      
  movl %esi, %r13d                               #  7     0x26af8  3      
  callq ._ZN2pp12CreateModuleEv                  #  8     0x26afb  5      
  movl %eax, %ebx                                #  9     0x26b00  2      
  movl $0xfffffffe, %eax                         #  10    0x26b02  5      
  testq %rbx, %rbx                               #  11    0x26b07  3      
  je .L_26b40                                    #  12    0x26b0a  6      
  movl %r13d, %edx                               #  13    0x26b10  3      
  movl %r12d, %esi                               #  14    0x26b13  3      
  movl %ebx, %edi                                #  15    0x26b16  2      
  nop                                            #  16    0x26b18  1      
  callq ._ZN2pp6Module12InternalInitEiPFPKvPKcE  #  17    0x26b19  5      
  testb %al, %al                                 #  18    0x26b1e  2      
  je .L_26b60                                    #  19    0x26b20  6      
  movl %ebx, 0x1000a128(%rip)                    #  20    0x26b26  6      
  xorl %eax, %eax                                #  21    0x26b2c  2      
  nop                                            #  22    0x26b2e  1      
  nop                                            #  23    0x26b2f  1      
.L_26b40:                                        #        0x26b30  0      
  movq (%rsp), %rbx                              #  24    0x26b30  4      
  movq 0x8(%rsp), %r12                           #  25    0x26b34  5      
  movq 0x10(%rsp), %r13                          #  26    0x26b39  5      
  addl $0x18, %esp                               #  27    0x26b3e  3      
  addq %r15, %rsp                                #  28    0x26b41  3      
  popq %r11                                      #  29    0x26b44  3      
  andl $0xffffffe0, %r11d                        #  30    0x26b47  7      
  addq %r15, %r11                                #  31    0x26b4e  3      
  jmpq %r11                                      #  32    0x26b51  3      
.L_26b60:                                        #        0x26b54  0      
  movl %ebx, %ebx                                #  33    0x26b54  2      
  movl (%r15,%rbx,1), %eax                       #  34    0x26b56  4      
  movl %ebx, %edi                                #  35    0x26b5a  2      
  movl %eax, %eax                                #  36    0x26b5c  2      
  movl 0x4(%r15,%rax,1), %eax                    #  37    0x26b5e  5      
  nop                                            #  38    0x26b63  1      
  andl $0xffffffe0, %eax                         #  39    0x26b64  5      
  addq %r15, %rax                                #  40    0x26b69  3      
  callq %rax                                     #  41    0x26b6c  2      
  movl $0xfffffffe, %eax                         #  42    0x26b6e  5      
  jmpq .L_26b40                                  #  43    0x26b73  5      
  nop                                            #  44    0x26b78  1      
  nop                                            #  45    0x26b79  1      
  nop                                            #  46    0x26b7a  1      
  nop                                            #  47    0x26b7b  1      
  nop                                            #  48    0x26b7c  1      
  nop                                            #  49    0x26b7d  1      
  nop                                            #  50    0x26b7e  1      
  nop                                            #  51    0x26b7f  1      
  nop                                            #  52    0x26b80  1      
  nop                                            #  53    0x26b81  1      
  nop                                            #  54    0x26b82  1      
  nop                                            #  55    0x26b83  1      
  nop                                            #  56    0x26b84  1      
  nop                                            #  57    0x26b85  1      
  nop                                            #  58    0x26b86  1      
  nop                                            #  59    0x26b87  1      
  nop                                            #  60    0x26b88  1      
  nop                                            #  61    0x26b89  1      
  nop                                            #  62    0x26b8a  1      
  nop                                            #  63    0x26b8b  1      
  nop                                            #  64    0x26b8c  1      
  nop                                            #  65    0x26b8d  1      
  nop                                            #  66    0x26b8e  1      
  nop                                            #  67    0x26b8f  1      
  nop                                            #  68    0x26b90  1      
                                                                          
.size PPP_InitializeModule, .-PPP_InitializeModule

