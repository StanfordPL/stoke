  .text
  .globl _ZNSs7replaceEjjjc
  .type _ZNSs7replaceEjjjc, @function

#! file-offset 0x48660
#! rip-offset  0x48660
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs7replaceEjjjc:                    #        0x48660  0      
  movl %edi, %edi                       #  1     0x48660  2      
  subl $0x8, %esp                       #  2     0x48662  3      
  addq %r15, %rsp                       #  3     0x48665  3      
  movl %edx, %eax                       #  4     0x48668  2      
  movl %edi, %edi                       #  5     0x4866a  2      
  movl (%r15,%rdi,1), %edx              #  6     0x4866c  4      
  subl $0xc, %edx                       #  7     0x48670  3      
  movl %edx, %edx                       #  8     0x48673  2      
  movl (%r15,%rdx,1), %edx              #  9     0x48675  4      
  cmpl %edx, %esi                       #  10    0x48679  2      
  nop                                   #  11    0x4867b  1      
  ja .L_486a0                           #  12    0x4867c  6      
  subl %esi, %edx                       #  13    0x48682  2      
  movsbl %r8b, %r8d                     #  14    0x48684  4      
  cmpl %eax, %edx                       #  15    0x48688  2      
  cmoval %eax, %edx                     #  16    0x4868a  3      
  addl $0x8, %esp                       #  17    0x4868d  3      
  addq %r15, %rsp                       #  18    0x48690  3      
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  19    0x48693  5      
  nop                                   #  20    0x48698  1      
.L_486a0:                               #        0x48699  0      
  movl $0x10020a54, %edi                #  21    0x48699  5      
  nop                                   #  22    0x4869e  1      
  nop                                   #  23    0x4869f  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  24    0x486a0  5      
                                                                 
.size _ZNSs7replaceEjjjc, .-_ZNSs7replaceEjjjc

