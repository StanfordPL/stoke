  .text
  .globl _ZNSs6insertEjjc
  .type _ZNSs6insertEjjc, @function

#! file-offset 0x48740
#! rip-offset  0x48740
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6insertEjjc:                      #        0x48740  0      
  movl %edi, %edi                       #  1     0x48740  2      
  subl $0x8, %esp                       #  2     0x48742  3      
  addq %r15, %rsp                       #  3     0x48745  3      
  movl %edi, %edi                       #  4     0x48748  2      
  movl (%r15,%rdi,1), %eax              #  5     0x4874a  4      
  subl $0xc, %eax                       #  6     0x4874e  3      
  movl %eax, %eax                       #  7     0x48751  2      
  cmpl (%r15,%rax,1), %esi              #  8     0x48753  4      
  ja .L_48780                           #  9     0x48757  6      
  movsbl %cl, %r8d                      #  10    0x4875d  4      
  nop                                   #  11    0x48761  1      
  addl $0x8, %esp                       #  12    0x48762  3      
  addq %r15, %rsp                       #  13    0x48765  3      
  movl %edx, %ecx                       #  14    0x48768  2      
  xorl %edx, %edx                       #  15    0x4876a  2      
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  16    0x4876c  5      
  xchgw %ax, %ax                        #  17    0x48771  3      
  nop                                   #  18    0x48774  1      
.L_48780:                               #        0x48775  0      
  movl $0x10020a6a, %edi                #  19    0x48775  5      
  nop                                   #  20    0x4877a  1      
  nop                                   #  21    0x4877b  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  22    0x4877c  5      
                                                                 
.size _ZNSs6insertEjjc, .-_ZNSs6insertEjjc

