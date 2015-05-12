  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, @function

#! file-offset 0x48860
#! rip-offset  0x48860
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_:  #        0x48860  0      
  movq %rbx, -0x10(%rsp)                                #  1     0x48860  5      
  movl %edi, %ebx                                       #  2     0x48865  2      
  movq %r12, -0x8(%rsp)                                 #  3     0x48867  5      
  subl $0x18, %esp                                      #  4     0x4886c  3      
  addq %r15, %rsp                                       #  5     0x4886f  3      
  movl %esi, %r12d                                      #  6     0x48872  3      
  movl %ebx, %ebx                                       #  7     0x48875  2      
  subl (%r15,%rbx,1), %r12d                             #  8     0x48877  4      
  subl %esi, %edx                                       #  9     0x4887b  2      
  movl %ebx, %edi                                       #  10    0x4887d  2      
  nop                                                   #  11    0x4887f  1      
  xorl %ecx, %ecx                                       #  12    0x48880  2      
  movl %r12d, %esi                                      #  13    0x48882  3      
  nop                                                   #  14    0x48885  1      
  nop                                                   #  15    0x48886  1      
  callq ._ZNSs9_M_mutateEjjj                            #  16    0x48887  5      
  movl %ebx, %ebx                                       #  17    0x4888c  2      
  movl (%r15,%rbx,1), %eax                              #  18    0x4888e  4      
  leal -0xc(%rax), %edx                                 #  19    0x48892  3      
  leal (%r12,%rax,1), %eax                              #  20    0x48895  4      
  movl %edx, %edx                                       #  21    0x48899  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                    #  22    0x4889b  9      
  movq 0x8(%rsp), %rbx                                  #  23    0x488a4  5      
  nop                                                   #  24    0x488a9  1      
  movq 0x10(%rsp), %r12                                 #  25    0x488aa  5      
  addl $0x18, %esp                                      #  26    0x488af  3      
  addq %r15, %rsp                                       #  27    0x488b2  3      
  popq %r11                                             #  28    0x488b5  3      
  andl $0xffffffe0, %r11d                               #  29    0x488b8  7      
  addq %r15, %r11                                       #  30    0x488bf  3      
  jmpq %r11                                             #  31    0x488c2  3      
  nop                                                   #  32    0x488c5  1      
  nop                                                   #  33    0x488c6  1      
  nop                                                   #  34    0x488c7  1      
  nop                                                   #  35    0x488c8  1      
  nop                                                   #  36    0x488c9  1      
  nop                                                   #  37    0x488ca  1      
  nop                                                   #  38    0x488cb  1      
  nop                                                   #  39    0x488cc  1      
  nop                                                   #  40    0x488cd  1      
                                                                                 
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_

