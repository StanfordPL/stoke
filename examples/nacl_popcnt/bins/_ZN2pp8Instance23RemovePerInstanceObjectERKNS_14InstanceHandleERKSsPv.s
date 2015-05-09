  .text
  .globl _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv
  .type _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv, @function

#! file-offset 0x211c0
#! rip-offset  0x211c0
#! capacity    192 bytes

# Text                                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv:  #        0x211c0  0      
  movl %edi, %edi                                                        #  1     0x211c0  2      
  movq %rbx, -0x18(%rsp)                                                 #  2     0x211c2  5      
  movq %r12, -0x10(%rsp)                                                 #  3     0x211c7  5      
  movq %r13, -0x8(%rsp)                                                  #  4     0x211cc  5      
  subl $0x18, %esp                                                       #  5     0x211d1  3      
  addq %r15, %rsp                                                        #  6     0x211d4  3      
  movl %edi, %edi                                                        #  7     0x211d7  2      
  movl (%r15,%rdi,1), %r13d                                              #  8     0x211d9  4      
  movl %esi, %ebx                                                        #  9     0x211dd  2      
  nop                                                                    #  10    0x211df  1      
  movl %edx, %r12d                                                       #  11    0x211e0  3      
  nop                                                                    #  12    0x211e3  1      
  nop                                                                    #  13    0x211e4  1      
  callq ._ZN2pp6Module3GetEv                                             #  14    0x211e5  5      
  movl %r13d, %esi                                                       #  15    0x211ea  3      
  movl %eax, %edi                                                        #  16    0x211ed  2      
  nop                                                                    #  17    0x211ef  1      
  nop                                                                    #  18    0x211f0  1      
  callq ._ZN2pp6Module21InstanceForPPInstanceEi                          #  19    0x211f1  5      
  movl %eax, %edi                                                        #  20    0x211f6  2      
  testq %rdi, %rdi                                                       #  21    0x211f8  3      
  je .L_21260                                                            #  22    0x211fb  6      
  movl %r12d, %edx                                                       #  23    0x21201  3      
  movl %ebx, %esi                                                        #  24    0x21204  2      
  movq 0x8(%rsp), %r12                                                   #  25    0x21206  5      
  movq (%rsp), %rbx                                                      #  26    0x2120b  4      
  movq 0x10(%rsp), %r13                                                  #  27    0x2120f  5      
  addl $0x18, %esp                                                       #  28    0x21214  3      
  addq %r15, %rsp                                                        #  29    0x21217  3      
  jmpq ._ZN2pp8Instance23RemovePerInstanceObjectERKSsPv                  #  30    0x2121a  5      
  nop                                                                    #  31    0x2121f  1      
  nop                                                                    #  32    0x21220  1      
.L_21260:                                                                #        0x21221  0      
  movq (%rsp), %rbx                                                      #  33    0x21221  4      
  movq 0x8(%rsp), %r12                                                   #  34    0x21225  5      
  movq 0x10(%rsp), %r13                                                  #  35    0x2122a  5      
  addl $0x18, %esp                                                       #  36    0x2122f  3      
  addq %r15, %rsp                                                        #  37    0x21232  3      
  popq %r11                                                              #  38    0x21235  3      
  andl $0xffffffe0, %r11d                                                #  39    0x21238  7      
  addq %r15, %r11                                                        #  40    0x2123f  3      
  jmpq %r11                                                              #  41    0x21242  3      
                                                                                                  
.size _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv, .-_ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv

