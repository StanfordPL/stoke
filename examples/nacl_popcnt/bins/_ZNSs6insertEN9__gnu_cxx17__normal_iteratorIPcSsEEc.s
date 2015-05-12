  .text
  .globl _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc
  .type _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, @function

#! file-offset 0x486e0
#! rip-offset  0x486e0
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc:  #        0x486e0  0      
  movq %rbx, -0x10(%rsp)                               #  1     0x486e0  5      
  movl %edi, %ebx                                      #  2     0x486e5  2      
  movq %r12, -0x8(%rsp)                                #  3     0x486e7  5      
  subl $0x18, %esp                                     #  4     0x486ec  3      
  addq %r15, %rsp                                      #  5     0x486ef  3      
  movl %esi, %r12d                                     #  6     0x486f2  3      
  movl %ebx, %ebx                                      #  7     0x486f5  2      
  subl (%r15,%rbx,1), %r12d                            #  8     0x486f7  4      
  movsbl %dl, %r8d                                     #  9     0x486fb  4      
  nop                                                  #  10    0x486ff  1      
  movl %ebx, %edi                                      #  11    0x48700  2      
  xorl %edx, %edx                                      #  12    0x48702  2      
  movl $0x1, %ecx                                      #  13    0x48704  5      
  movl %r12d, %esi                                     #  14    0x48709  3      
  nop                                                  #  15    0x4870c  1      
  callq ._ZNSs14_M_replace_auxEjjjc                    #  16    0x4870d  5      
  movl %ebx, %ebx                                      #  17    0x48712  2      
  movl (%r15,%rbx,1), %eax                             #  18    0x48714  4      
  leal -0xc(%rax), %edx                                #  19    0x48718  3      
  leal (%r12,%rax,1), %eax                             #  20    0x4871b  4      
  movl %edx, %edx                                      #  21    0x4871f  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                   #  22    0x48721  9      
  movq 0x8(%rsp), %rbx                                 #  23    0x4872a  5      
  nop                                                  #  24    0x4872f  1      
  movq 0x10(%rsp), %r12                                #  25    0x48730  5      
  addl $0x18, %esp                                     #  26    0x48735  3      
  addq %r15, %rsp                                      #  27    0x48738  3      
  popq %r11                                            #  28    0x4873b  3      
  andl $0xffffffe0, %r11d                              #  29    0x4873e  7      
  addq %r15, %r11                                      #  30    0x48745  3      
  jmpq %r11                                            #  31    0x48748  3      
  nop                                                  #  32    0x4874b  1      
  nop                                                  #  33    0x4874c  1      
  nop                                                  #  34    0x4874d  1      
  nop                                                  #  35    0x4874e  1      
  nop                                                  #  36    0x4874f  1      
  nop                                                  #  37    0x48750  1      
  nop                                                  #  38    0x48751  1      
  nop                                                  #  39    0x48752  1      
  nop                                                  #  40    0x48753  1      
                                                                                
.size _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, .-_ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc

