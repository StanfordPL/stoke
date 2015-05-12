  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, @function

#! file-offset 0x488e0
#! rip-offset  0x488e0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE:  #        0x488e0  0      
  movq %r12, -0x8(%rsp)                              #  1     0x488e0  5      
  movl %edi, %r12d                                   #  2     0x488e5  3      
  movq %rbx, -0x10(%rsp)                             #  3     0x488e8  5      
  subl $0x18, %esp                                   #  4     0x488ed  3      
  addq %r15, %rsp                                    #  5     0x488f0  3      
  movl %esi, %ebx                                    #  6     0x488f3  2      
  movl %r12d, %r12d                                  #  7     0x488f5  3      
  subl (%r15,%r12,1), %ebx                           #  8     0x488f8  4      
  nop                                                #  9     0x488fc  1      
  movl $0x1, %edx                                    #  10    0x488fd  5      
  movl %r12d, %edi                                   #  11    0x48902  3      
  xorl %ecx, %ecx                                    #  12    0x48905  2      
  movl %ebx, %esi                                    #  13    0x48907  2      
  nop                                                #  14    0x48909  1      
  callq ._ZNSs9_M_mutateEjjj                         #  15    0x4890a  5      
  movl %r12d, %r12d                                  #  16    0x4890f  3      
  movl (%r15,%r12,1), %eax                           #  17    0x48912  4      
  leal -0xc(%rax), %edx                              #  18    0x48916  3      
  leal (%rbx,%rax,1), %eax                           #  19    0x48919  3      
  movl %edx, %edx                                    #  20    0x4891c  2      
  movl $0xffffffff, 0x8(%r15,%rdx,1)                 #  21    0x4891e  9      
  movq 0x8(%rsp), %rbx                               #  22    0x48927  5      
  nop                                                #  23    0x4892c  1      
  movq 0x10(%rsp), %r12                              #  24    0x4892d  5      
  addl $0x18, %esp                                   #  25    0x48932  3      
  addq %r15, %rsp                                    #  26    0x48935  3      
  popq %r11                                          #  27    0x48938  3      
  andl $0xffffffe0, %r11d                            #  28    0x4893b  7      
  addq %r15, %r11                                    #  29    0x48942  3      
  jmpq %r11                                          #  30    0x48945  3      
  nop                                                #  31    0x48948  1      
  nop                                                #  32    0x48949  1      
  nop                                                #  33    0x4894a  1      
  nop                                                #  34    0x4894b  1      
  nop                                                #  35    0x4894c  1      
  nop                                                #  36    0x4894d  1      
  nop                                                #  37    0x4894e  1      
  nop                                                #  38    0x4894f  1      
  nop                                                #  39    0x48950  1      
                                                                              
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE

