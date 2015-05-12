  .text
  .globl _ZNSs7replaceEjjjc
  .type _ZNSs7replaceEjjjc, @function

#! file-offset 0x48680
#! rip-offset  0x48680
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs7replaceEjjjc:                    #        0x48680  0      
  movl %edi, %edi                       #  1     0x48680  2      
  subl $0x8, %esp                       #  2     0x48682  3      
  addq %r15, %rsp                       #  3     0x48685  3      
  movl %edx, %eax                       #  4     0x48688  2      
  movl %edi, %edi                       #  5     0x4868a  2      
  movl (%r15,%rdi,1), %edx              #  6     0x4868c  4      
  subl $0xc, %edx                       #  7     0x48690  3      
  movl %edx, %edx                       #  8     0x48693  2      
  movl (%r15,%rdx,1), %edx              #  9     0x48695  4      
  cmpl %edx, %esi                       #  10    0x48699  2      
  nop                                   #  11    0x4869b  1      
  ja .L_486c0                           #  12    0x4869c  6      
  subl %esi, %edx                       #  13    0x486a2  2      
  movsbl %r8b, %r8d                     #  14    0x486a4  4      
  cmpl %eax, %edx                       #  15    0x486a8  2      
  cmoval %eax, %edx                     #  16    0x486aa  3      
  addl $0x8, %esp                       #  17    0x486ad  3      
  addq %r15, %rsp                       #  18    0x486b0  3      
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  19    0x486b3  5      
  nop                                   #  20    0x486b8  1      
.L_486c0:                               #        0x486b9  0      
  movl $0x10020a54, %edi                #  21    0x486b9  5      
  nop                                   #  22    0x486be  1      
  nop                                   #  23    0x486bf  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  24    0x486c0  5      
                                                                 
.size _ZNSs7replaceEjjjc, .-_ZNSs7replaceEjjjc

