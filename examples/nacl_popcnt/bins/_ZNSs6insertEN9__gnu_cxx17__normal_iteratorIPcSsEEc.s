  .text
  .globl _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc
  .type _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, @function

#! file-offset 0x486c0
#! rip-offset  0x486c0
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc:  #        0x486c0  0      
  movq %rbx, -0x10(%rsp)                               #  1     0x486c0  5      
  movl %edi, %ebx                                      #  2     0x486c5  2      
  movq %r12, -0x8(%rsp)                                #  3     0x486c7  5      
  subl $0x18, %esp                                     #  4     0x486cc  3      
  addq %r15, %rsp                                      #  5     0x486cf  3      
  movl %esi, %r12d                                     #  6     0x486d2  3      
  movl %ebx, %ebx                                      #  7     0x486d5  2      
  subl (%r15,%rbx,1), %r12d                            #  8     0x486d7  4      
  movsbl %dl, %r8d                                     #  9     0x486db  4      
  nop                                                  #  10    0x486df  1      
  movl %ebx, %edi                                      #  11    0x486e0  2      
  xorl %edx, %edx                                      #  12    0x486e2  2      
  movl $0x1, %ecx                                      #  13    0x486e4  5      
  movl %r12d, %esi                                     #  14    0x486e9  3      
  nop                                                  #  15    0x486ec  1      
  callq ._ZNSs14_M_replace_auxEjjjc                    #  16    0x486ed  5      
  movl %ebx, %ebx                                      #  17    0x486f2  2      
  movl (%r15,%rbx,1), %eax                             #  18    0x486f4  4      
  leal -0xc(%rax), %edx                                #  19    0x486f8  3      
  leal (%r12,%rax,1), %eax                             #  20    0x486fb  4      
  movl %edx, %edx                                      #  21    0x486ff  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                   #  22    0x48701  9      
  movq 0x8(%rsp), %rbx                                 #  23    0x4870a  5      
  nop                                                  #  24    0x4870f  1      
  movq 0x10(%rsp), %r12                                #  25    0x48710  5      
  addl $0x18, %esp                                     #  26    0x48715  3      
  addq %r15, %rsp                                      #  27    0x48718  3      
  popq %r11                                            #  28    0x4871b  3      
  andl $0xffffffe0, %r11d                              #  29    0x4871e  7      
  addq %r15, %r11                                      #  30    0x48725  3      
  jmpq %r11                                            #  31    0x48728  3      
  nop                                                  #  32    0x4872b  1      
  nop                                                  #  33    0x4872c  1      
  nop                                                  #  34    0x4872d  1      
  nop                                                  #  35    0x4872e  1      
  nop                                                  #  36    0x4872f  1      
  nop                                                  #  37    0x48730  1      
  nop                                                  #  38    0x48731  1      
  nop                                                  #  39    0x48732  1      
  nop                                                  #  40    0x48733  1      
                                                                                
.size _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, .-_ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc

