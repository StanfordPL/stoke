  .text
  .globl PPP_InitializeModule
  .type PPP_InitializeModule, @function

#! file-offset 0x26b60
#! rip-offset  0x26b60
#! capacity    192 bytes

# Text                                           #  Line  RIP      Bytes  
.PPP_InitializeModule:                           #        0x26b60  0      
  movq %rbx, -0x18(%rsp)                         #  1     0x26b60  5      
  movq %r12, -0x10(%rsp)                         #  2     0x26b65  5      
  movl %edi, %r12d                               #  3     0x26b6a  3      
  movq %r13, -0x8(%rsp)                          #  4     0x26b6d  5      
  subl $0x18, %esp                               #  5     0x26b72  3      
  addq %r15, %rsp                                #  6     0x26b75  3      
  movl %esi, %r13d                               #  7     0x26b78  3      
  callq ._ZN2pp12CreateModuleEv                  #  8     0x26b7b  5      
  movl %eax, %ebx                                #  9     0x26b80  2      
  movl $0xfffffffe, %eax                         #  10    0x26b82  5      
  testq %rbx, %rbx                               #  11    0x26b87  3      
  je .L_26bc0                                    #  12    0x26b8a  6      
  movl %r13d, %edx                               #  13    0x26b90  3      
  movl %r12d, %esi                               #  14    0x26b93  3      
  movl %ebx, %edi                                #  15    0x26b96  2      
  nop                                            #  16    0x26b98  1      
  callq ._ZN2pp6Module12InternalInitEiPFPKvPKcE  #  17    0x26b99  5      
  testb %al, %al                                 #  18    0x26b9e  2      
  je .L_26be0                                    #  19    0x26ba0  6      
  movl %ebx, 0x1000a0a8(%rip)                    #  20    0x26ba6  6      
  xorl %eax, %eax                                #  21    0x26bac  2      
  nop                                            #  22    0x26bae  1      
  nop                                            #  23    0x26baf  1      
.L_26bc0:                                        #        0x26bb0  0      
  movq (%rsp), %rbx                              #  24    0x26bb0  4      
  movq 0x8(%rsp), %r12                           #  25    0x26bb4  5      
  movq 0x10(%rsp), %r13                          #  26    0x26bb9  5      
  addl $0x18, %esp                               #  27    0x26bbe  3      
  addq %r15, %rsp                                #  28    0x26bc1  3      
  popq %r11                                      #  29    0x26bc4  3      
  andl $0xffffffe0, %r11d                        #  30    0x26bc7  7      
  addq %r15, %r11                                #  31    0x26bce  3      
  jmpq %r11                                      #  32    0x26bd1  3      
.L_26be0:                                        #        0x26bd4  0      
  movl %ebx, %ebx                                #  33    0x26bd4  2      
  movl (%r15,%rbx,1), %eax                       #  34    0x26bd6  4      
  movl %ebx, %edi                                #  35    0x26bda  2      
  movl %eax, %eax                                #  36    0x26bdc  2      
  movl 0x4(%r15,%rax,1), %eax                    #  37    0x26bde  5      
  nop                                            #  38    0x26be3  1      
  andl $0xffffffe0, %eax                         #  39    0x26be4  5      
  addq %r15, %rax                                #  40    0x26be9  3      
  callq %rax                                     #  41    0x26bec  2      
  movl $0xfffffffe, %eax                         #  42    0x26bee  5      
  jmpq .L_26bc0                                  #  43    0x26bf3  5      
  nop                                            #  44    0x26bf8  1      
  nop                                            #  45    0x26bf9  1      
  nop                                            #  46    0x26bfa  1      
  nop                                            #  47    0x26bfb  1      
  nop                                            #  48    0x26bfc  1      
  nop                                            #  49    0x26bfd  1      
  nop                                            #  50    0x26bfe  1      
  nop                                            #  51    0x26bff  1      
  nop                                            #  52    0x26c00  1      
  nop                                            #  53    0x26c01  1      
  nop                                            #  54    0x26c02  1      
  nop                                            #  55    0x26c03  1      
  nop                                            #  56    0x26c04  1      
  nop                                            #  57    0x26c05  1      
  nop                                            #  58    0x26c06  1      
  nop                                            #  59    0x26c07  1      
  nop                                            #  60    0x26c08  1      
  nop                                            #  61    0x26c09  1      
  nop                                            #  62    0x26c0a  1      
  nop                                            #  63    0x26c0b  1      
  nop                                            #  64    0x26c0c  1      
  nop                                            #  65    0x26c0d  1      
  nop                                            #  66    0x26c0e  1      
  nop                                            #  67    0x26c0f  1      
  nop                                            #  68    0x26c10  1      
                                                                          
.size PPP_InitializeModule, .-PPP_InitializeModule

