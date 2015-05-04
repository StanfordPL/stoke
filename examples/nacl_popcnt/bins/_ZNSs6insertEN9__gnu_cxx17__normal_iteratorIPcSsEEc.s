  .text
  .globl _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc
  .type _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, @function

#! file-offset 0x48760
#! rip-offset  0x48760
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc:  #        0x48760  0      
  movq %rbx, -0x10(%rsp)                               #  1     0x48760  5      
  movl %edi, %ebx                                      #  2     0x48765  2      
  movq %r12, -0x8(%rsp)                                #  3     0x48767  5      
  subl $0x18, %esp                                     #  4     0x4876c  3      
  addq %r15, %rsp                                      #  5     0x4876f  3      
  movl %esi, %r12d                                     #  6     0x48772  3      
  movl %ebx, %ebx                                      #  7     0x48775  2      
  subl (%r15,%rbx,1), %r12d                            #  8     0x48777  4      
  movsbl %dl, %r8d                                     #  9     0x4877b  4      
  nop                                                  #  10    0x4877f  1      
  movl %ebx, %edi                                      #  11    0x48780  2      
  xorl %edx, %edx                                      #  12    0x48782  2      
  movl $0x1, %ecx                                      #  13    0x48784  5      
  movl %r12d, %esi                                     #  14    0x48789  3      
  nop                                                  #  15    0x4878c  1      
  callq ._ZNSs14_M_replace_auxEjjjc                    #  16    0x4878d  5      
  movl %ebx, %ebx                                      #  17    0x48792  2      
  movl (%r15,%rbx,1), %eax                             #  18    0x48794  4      
  leal -0xc(%rax), %edx                                #  19    0x48798  3      
  leal (%r12,%rax,1), %eax                             #  20    0x4879b  4      
  movl %edx, %edx                                      #  21    0x4879f  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                   #  22    0x487a1  9      
  movq 0x8(%rsp), %rbx                                 #  23    0x487aa  5      
  nop                                                  #  24    0x487af  1      
  movq 0x10(%rsp), %r12                                #  25    0x487b0  5      
  addl $0x18, %esp                                     #  26    0x487b5  3      
  addq %r15, %rsp                                      #  27    0x487b8  3      
  popq %r11                                            #  28    0x487bb  3      
  andl $0xffffffe0, %r11d                              #  29    0x487be  7      
  addq %r15, %r11                                      #  30    0x487c5  3      
  jmpq %r11                                            #  31    0x487c8  3      
  nop                                                  #  32    0x487cb  1      
  nop                                                  #  33    0x487cc  1      
  nop                                                  #  34    0x487cd  1      
  nop                                                  #  35    0x487ce  1      
  nop                                                  #  36    0x487cf  1      
  nop                                                  #  37    0x487d0  1      
  nop                                                  #  38    0x487d1  1      
  nop                                                  #  39    0x487d2  1      
  nop                                                  #  40    0x487d3  1      
                                                                                
.size _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, .-_ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc

