  .text
  .globl _ZNSs7replaceEjjjc
  .type _ZNSs7replaceEjjjc, @function

#! file-offset 0x48700
#! rip-offset  0x48700
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs7replaceEjjjc:                    #        0x48700  0      
  movl %edi, %edi                       #  1     0x48700  2      
  subl $0x8, %esp                       #  2     0x48702  3      
  addq %r15, %rsp                       #  3     0x48705  3      
  movl %edx, %eax                       #  4     0x48708  2      
  movl %edi, %edi                       #  5     0x4870a  2      
  movl (%r15,%rdi,1), %edx              #  6     0x4870c  4      
  subl $0xc, %edx                       #  7     0x48710  3      
  movl %edx, %edx                       #  8     0x48713  2      
  movl (%r15,%rdx,1), %edx              #  9     0x48715  4      
  cmpl %edx, %esi                       #  10    0x48719  2      
  nop                                   #  11    0x4871b  1      
  ja .L_48740                           #  12    0x4871c  6      
  subl %esi, %edx                       #  13    0x48722  2      
  movsbl %r8b, %r8d                     #  14    0x48724  4      
  cmpl %eax, %edx                       #  15    0x48728  2      
  cmoval %eax, %edx                     #  16    0x4872a  3      
  addl $0x8, %esp                       #  17    0x4872d  3      
  addq %r15, %rsp                       #  18    0x48730  3      
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  19    0x48733  5      
  nop                                   #  20    0x48738  1      
.L_48740:                               #        0x48739  0      
  movl $0x10020a54, %edi                #  21    0x48739  5      
  nop                                   #  22    0x4873e  1      
  nop                                   #  23    0x4873f  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  24    0x48740  5      
                                                                 
.size _ZNSs7replaceEjjjc, .-_ZNSs7replaceEjjjc

