  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, @function

#! file-offset 0x488e0
#! rip-offset  0x488e0
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_:  #        0x488e0  0      
  movq %rbx, -0x10(%rsp)                                #  1     0x488e0  5      
  movl %edi, %ebx                                       #  2     0x488e5  2      
  movq %r12, -0x8(%rsp)                                 #  3     0x488e7  5      
  subl $0x18, %esp                                      #  4     0x488ec  3      
  addq %r15, %rsp                                       #  5     0x488ef  3      
  movl %esi, %r12d                                      #  6     0x488f2  3      
  movl %ebx, %ebx                                       #  7     0x488f5  2      
  subl (%r15,%rbx,1), %r12d                             #  8     0x488f7  4      
  subl %esi, %edx                                       #  9     0x488fb  2      
  movl %ebx, %edi                                       #  10    0x488fd  2      
  nop                                                   #  11    0x488ff  1      
  xorl %ecx, %ecx                                       #  12    0x48900  2      
  movl %r12d, %esi                                      #  13    0x48902  3      
  nop                                                   #  14    0x48905  1      
  nop                                                   #  15    0x48906  1      
  callq ._ZNSs9_M_mutateEjjj                            #  16    0x48907  5      
  movl %ebx, %ebx                                       #  17    0x4890c  2      
  movl (%r15,%rbx,1), %eax                              #  18    0x4890e  4      
  leal -0xc(%rax), %edx                                 #  19    0x48912  3      
  leal (%r12,%rax,1), %eax                              #  20    0x48915  4      
  movl %edx, %edx                                       #  21    0x48919  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                    #  22    0x4891b  9      
  movq 0x8(%rsp), %rbx                                  #  23    0x48924  5      
  nop                                                   #  24    0x48929  1      
  movq 0x10(%rsp), %r12                                 #  25    0x4892a  5      
  addl $0x18, %esp                                      #  26    0x4892f  3      
  addq %r15, %rsp                                       #  27    0x48932  3      
  popq %r11                                             #  28    0x48935  3      
  andl $0xffffffe0, %r11d                               #  29    0x48938  7      
  addq %r15, %r11                                       #  30    0x4893f  3      
  jmpq %r11                                             #  31    0x48942  3      
  nop                                                   #  32    0x48945  1      
  nop                                                   #  33    0x48946  1      
  nop                                                   #  34    0x48947  1      
  nop                                                   #  35    0x48948  1      
  nop                                                   #  36    0x48949  1      
  nop                                                   #  37    0x4894a  1      
  nop                                                   #  38    0x4894b  1      
  nop                                                   #  39    0x4894c  1      
  nop                                                   #  40    0x4894d  1      
                                                                                 
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_

