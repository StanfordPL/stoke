  .text
  .globl PPP_InitializeModule
  .type PPP_InitializeModule, @function

#! file-offset 0x26ac0
#! rip-offset  0x26ac0
#! capacity    192 bytes

# Text                                           #  Line  RIP      Bytes  
.PPP_InitializeModule:                           #        0x26ac0  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x26ac0  5      
  movq %r12, -0x10(%rsp)                         #  2     0x26ac5  5      
  movl %edi, %r12d                               #  3     0x26aca  3      
  movq %r13, -0x8(%rsp)                          #  4     0x26acd  5      
  subl $0x18, %esp                               #  5     0x26ad2  3      
  addq %r15, %rsp                                #  6     0x26ad5  3      
  movl %esi, %r13d                               #  7     0x26ad8  3      
  callq ._ZN2pp12CreateModuleEv                  #  8     0x26adb  5      
  movl %eax, %ebx                                #  9     0x26ae0  2      
  movl $0xfffffffe, %eax                         #  10    0x26ae2  5      
  testq %rbx, %rbx                               #  11    0x26ae7  3      
  je .L_26b20                                    #  12    0x26aea  6      
  movl %r13d, %edx                               #  13    0x26af0  3      
  movl %r12d, %esi                               #  14    0x26af3  3      
  movl %ebx, %edi                                #  15    0x26af6  2      
  nop                                            #  16    0x26af8  1      
  callq ._ZN2pp6Module12InternalInitEiPFPKvPKcE  #  17    0x26af9  5      
  testb %al, %al                                 #  18    0x26afe  2      
  je .L_26b40                                    #  19    0x26b00  6      
  movl %ebx, 0x1000a148(%rip)                    #  20    0x26b06  6      
  xorl %eax, %eax                                #  21    0x26b0c  2      
  nop                                            #  22    0x26b0e  1      
  nop                                            #  23    0x26b0f  1      
.L_26b20:                                        #        0x26b10  0      
  movq (%rsp), %rbx                              #  24    0x26b10  4      
  movq 0x8(%rsp), %r12                           #  25    0x26b14  5      
  movq 0x10(%rsp), %r13                          #  26    0x26b19  5      
  addl $0x18, %esp                               #  27    0x26b1e  3      
  addq %r15, %rsp                                #  28    0x26b21  3      
  popq %r11                                      #  29    0x26b24  3      
  andl $0xffffffe0, %r11d                        #  30    0x26b27  7      
  addq %r15, %r11                                #  31    0x26b2e  3      
  jmpq %r11                                      #  32    0x26b31  3      
.L_26b40:                                        #        0x26b34  0      
  movl %ebx, %ebx                                #  33    0x26b34  2      
  movl (%r15,%rbx,1), %eax                       #  34    0x26b36  4      
  movl %ebx, %edi                                #  35    0x26b3a  2      
  movl %eax, %eax                                #  36    0x26b3c  2      
  movl 0x4(%r15,%rax,1), %eax                    #  37    0x26b3e  5      
  nop                                            #  38    0x26b43  1      
  andl $0xffffffe0, %eax                         #  39    0x26b44  5      
  addq %r15, %rax                                #  40    0x26b49  3      
  callq %rax                                     #  41    0x26b4c  2      
  movl $0xfffffffe, %eax                         #  42    0x26b4e  5      
  jmpq .L_26b20                                  #  43    0x26b53  5      
  nop                                            #  44    0x26b58  1      
  nop                                            #  45    0x26b59  1      
  nop                                            #  46    0x26b5a  1      
  nop                                            #  47    0x26b5b  1      
  nop                                            #  48    0x26b5c  1      
  nop                                            #  49    0x26b5d  1      
  nop                                            #  50    0x26b5e  1      
  nop                                            #  51    0x26b5f  1      
  nop                                            #  52    0x26b60  1      
  nop                                            #  53    0x26b61  1      
  nop                                            #  54    0x26b62  1      
  nop                                            #  55    0x26b63  1      
  nop                                            #  56    0x26b64  1      
  nop                                            #  57    0x26b65  1      
  nop                                            #  58    0x26b66  1      
  nop                                            #  59    0x26b67  1      
  nop                                            #  60    0x26b68  1      
  nop                                            #  61    0x26b69  1      
  nop                                            #  62    0x26b6a  1      
  nop                                            #  63    0x26b6b  1      
  nop                                            #  64    0x26b6c  1      
  nop                                            #  65    0x26b6d  1      
  nop                                            #  66    0x26b6e  1      
  nop                                            #  67    0x26b6f  1      
  nop                                            #  68    0x26b70  1      
                                                                          
.size PPP_InitializeModule, .-PPP_InitializeModule

