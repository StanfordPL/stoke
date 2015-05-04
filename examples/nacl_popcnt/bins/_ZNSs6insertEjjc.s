  .text
  .globl _ZNSs6insertEjjc
  .type _ZNSs6insertEjjc, @function

#! file-offset 0x487e0
#! rip-offset  0x487e0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6insertEjjc:                      #        0x487e0  0      
  movl %edi, %edi                       #  1     0x487e0  2      
  subl $0x8, %esp                       #  2     0x487e2  3      
  addq %r15, %rsp                       #  3     0x487e5  3      
  movl %edi, %edi                       #  4     0x487e8  2      
  movl (%r15,%rdi,1), %eax              #  5     0x487ea  4      
  subl $0xc, %eax                       #  6     0x487ee  3      
  movl %eax, %eax                       #  7     0x487f1  2      
  cmpl (%r15,%rax,1), %esi              #  8     0x487f3  4      
  ja .L_48820                           #  9     0x487f7  6      
  movsbl %cl, %r8d                      #  10    0x487fd  4      
  nop                                   #  11    0x48801  1      
  addl $0x8, %esp                       #  12    0x48802  3      
  addq %r15, %rsp                       #  13    0x48805  3      
  movl %edx, %ecx                       #  14    0x48808  2      
  xorl %edx, %edx                       #  15    0x4880a  2      
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  16    0x4880c  5      
  xchgw %ax, %ax                        #  17    0x48811  3      
  nop                                   #  18    0x48814  1      
.L_48820:                               #        0x48815  0      
  movl $0x10020a6a, %edi                #  19    0x48815  5      
  nop                                   #  20    0x4881a  1      
  nop                                   #  21    0x4881b  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  22    0x4881c  5      
                                                                 
.size _ZNSs6insertEjjc, .-_ZNSs6insertEjjc

