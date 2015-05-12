  .text
  .globl _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv
  .type _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv, @function

#! file-offset 0x211e0
#! rip-offset  0x211e0
#! capacity    192 bytes

# Text                                                                   #  Line  RIP      Bytes  
._ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv:  #        0x211e0  0      
  movl %edi, %edi                                                        #  1     0x211e0  2      
  movq %rbx, -0x18(%rsp)                                                 #  2     0x211e2  5      
  movq %r12, -0x10(%rsp)                                                 #  3     0x211e7  5      
  movq %r13, -0x8(%rsp)                                                  #  4     0x211ec  5      
  subl $0x18, %esp                                                       #  5     0x211f1  3      
  addq %r15, %rsp                                                        #  6     0x211f4  3      
  movl %edi, %edi                                                        #  7     0x211f7  2      
  movl (%r15,%rdi,1), %r13d                                              #  8     0x211f9  4      
  movl %esi, %ebx                                                        #  9     0x211fd  2      
  nop                                                                    #  10    0x211ff  1      
  movl %edx, %r12d                                                       #  11    0x21200  3      
  nop                                                                    #  12    0x21203  1      
  nop                                                                    #  13    0x21204  1      
  callq ._ZN2pp6Module3GetEv                                             #  14    0x21205  5      
  movl %r13d, %esi                                                       #  15    0x2120a  3      
  movl %eax, %edi                                                        #  16    0x2120d  2      
  nop                                                                    #  17    0x2120f  1      
  nop                                                                    #  18    0x21210  1      
  callq ._ZN2pp6Module21InstanceForPPInstanceEi                          #  19    0x21211  5      
  movl %eax, %edi                                                        #  20    0x21216  2      
  testq %rdi, %rdi                                                       #  21    0x21218  3      
  je .L_21280                                                            #  22    0x2121b  6      
  movl %r12d, %edx                                                       #  23    0x21221  3      
  movl %ebx, %esi                                                        #  24    0x21224  2      
  movq 0x8(%rsp), %r12                                                   #  25    0x21226  5      
  movq (%rsp), %rbx                                                      #  26    0x2122b  4      
  movq 0x10(%rsp), %r13                                                  #  27    0x2122f  5      
  addl $0x18, %esp                                                       #  28    0x21234  3      
  addq %r15, %rsp                                                        #  29    0x21237  3      
  jmpq ._ZN2pp8Instance23RemovePerInstanceObjectERKSsPv                  #  30    0x2123a  5      
  nop                                                                    #  31    0x2123f  1      
  nop                                                                    #  32    0x21240  1      
.L_21280:                                                                #        0x21241  0      
  movq (%rsp), %rbx                                                      #  33    0x21241  4      
  movq 0x8(%rsp), %r12                                                   #  34    0x21245  5      
  movq 0x10(%rsp), %r13                                                  #  35    0x2124a  5      
  addl $0x18, %esp                                                       #  36    0x2124f  3      
  addq %r15, %rsp                                                        #  37    0x21252  3      
  popq %r11                                                              #  38    0x21255  3      
  andl $0xffffffe0, %r11d                                                #  39    0x21258  7      
  addq %r15, %r11                                                        #  40    0x2125f  3      
  jmpq %r11                                                              #  41    0x21262  3      
                                                                                                  
.size _ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv, .-_ZN2pp8Instance23RemovePerInstanceObjectERKNS_14InstanceHandleERKSsPv

