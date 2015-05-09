  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, @function

#! file-offset 0x48840
#! rip-offset  0x48840
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_:  #        0x48840  0      
  movq %rbx, -0x10(%rsp)                                #  1     0x48840  5      
  movl %edi, %ebx                                       #  2     0x48845  2      
  movq %r12, -0x8(%rsp)                                 #  3     0x48847  5      
  subl $0x18, %esp                                      #  4     0x4884c  3      
  addq %r15, %rsp                                       #  5     0x4884f  3      
  movl %esi, %r12d                                      #  6     0x48852  3      
  movl %ebx, %ebx                                       #  7     0x48855  2      
  subl (%r15,%rbx,1), %r12d                             #  8     0x48857  4      
  subl %esi, %edx                                       #  9     0x4885b  2      
  movl %ebx, %edi                                       #  10    0x4885d  2      
  nop                                                   #  11    0x4885f  1      
  xorl %ecx, %ecx                                       #  12    0x48860  2      
  movl %r12d, %esi                                      #  13    0x48862  3      
  nop                                                   #  14    0x48865  1      
  nop                                                   #  15    0x48866  1      
  callq ._ZNSs9_M_mutateEjjj                            #  16    0x48867  5      
  movl %ebx, %ebx                                       #  17    0x4886c  2      
  movl (%r15,%rbx,1), %eax                              #  18    0x4886e  4      
  leal -0xc(%rax), %edx                                 #  19    0x48872  3      
  leal (%r12,%rax,1), %eax                              #  20    0x48875  4      
  movl %edx, %edx                                       #  21    0x48879  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                    #  22    0x4887b  9      
  movq 0x8(%rsp), %rbx                                  #  23    0x48884  5      
  nop                                                   #  24    0x48889  1      
  movq 0x10(%rsp), %r12                                 #  25    0x4888a  5      
  addl $0x18, %esp                                      #  26    0x4888f  3      
  addq %r15, %rsp                                       #  27    0x48892  3      
  popq %r11                                             #  28    0x48895  3      
  andl $0xffffffe0, %r11d                               #  29    0x48898  7      
  addq %r15, %r11                                       #  30    0x4889f  3      
  jmpq %r11                                             #  31    0x488a2  3      
  nop                                                   #  32    0x488a5  1      
  nop                                                   #  33    0x488a6  1      
  nop                                                   #  34    0x488a7  1      
  nop                                                   #  35    0x488a8  1      
  nop                                                   #  36    0x488a9  1      
  nop                                                   #  37    0x488aa  1      
  nop                                                   #  38    0x488ab  1      
  nop                                                   #  39    0x488ac  1      
  nop                                                   #  40    0x488ad  1      
                                                                                 
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_

