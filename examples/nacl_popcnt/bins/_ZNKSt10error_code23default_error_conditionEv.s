  .text
  .globl _ZNKSt10error_code23default_error_conditionEv
  .type _ZNKSt10error_code23default_error_conditionEv, @function

#! file-offset 0x4efc0
#! rip-offset  0x4efc0
#! capacity    96 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNKSt10error_code23default_error_conditionEv:  #        0x4efc0  0      
  movl %edi, %edx                                #  1     0x4efc0  2      
  subl $0x8, %esp                                #  2     0x4efc2  3      
  addq %r15, %rsp                                #  3     0x4efc5  3      
  movl %edx, %edx                                #  4     0x4efc8  2      
  movl 0x4(%r15,%rdx,1), %edi                    #  5     0x4efca  5      
  movl %edx, %edx                                #  6     0x4efcf  2      
  movl (%r15,%rdx,1), %esi                       #  7     0x4efd1  4      
  movl %edi, %edi                                #  8     0x4efd5  2      
  movl (%r15,%rdi,1), %eax                       #  9     0x4efd7  4      
  nop                                            #  10    0x4efdb  1      
  movl %eax, %eax                                #  11    0x4efdc  2      
  movl 0x10(%r15,%rax,1), %eax                   #  12    0x4efde  5      
  xchgw %ax, %ax                                 #  13    0x4efe3  3      
  nop                                            #  14    0x4efe6  1      
  andl $0xffffffe0, %eax                         #  15    0x4efe7  5      
  addq %r15, %rax                                #  16    0x4efec  3      
  callq %rax                                     #  17    0x4efef  2      
  addl $0x8, %esp                                #  18    0x4eff1  3      
  addq %r15, %rsp                                #  19    0x4eff4  3      
  popq %r11                                      #  20    0x4eff7  3      
  andl $0xffffffe0, %r11d                        #  21    0x4effa  7      
  addq %r15, %r11                                #  22    0x4f001  3      
  jmpq %r11                                      #  23    0x4f004  3      
  nop                                            #  24    0x4f007  1      
  nop                                            #  25    0x4f008  1      
  nop                                            #  26    0x4f009  1      
  nop                                            #  27    0x4f00a  1      
  nop                                            #  28    0x4f00b  1      
  nop                                            #  29    0x4f00c  1      
  nop                                            #  30    0x4f00d  1      
  nop                                            #  31    0x4f00e  1      
  nop                                            #  32    0x4f00f  1      
  nop                                            #  33    0x4f010  1      
  nop                                            #  34    0x4f011  1      
  nop                                            #  35    0x4f012  1      
  nop                                            #  36    0x4f013  1      
  nop                                            #  37    0x4f014  1      
                                                                          
.size _ZNKSt10error_code23default_error_conditionEv, .-_ZNKSt10error_code23default_error_conditionEv

