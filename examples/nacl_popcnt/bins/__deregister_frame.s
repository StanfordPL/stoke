  .text
  .globl __deregister_frame
  .type __deregister_frame, @function

#! file-offset 0x603e0
#! rip-offset  0x603e0
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__deregister_frame:              #        0x603e0  0      
  movl %edi, %edi                 #  1     0x603e0  2      
  subl $0x8, %esp                 #  2     0x603e2  3      
  addq %r15, %rsp                 #  3     0x603e5  3      
  movl %edi, %edi                 #  4     0x603e8  2      
  movl (%r15,%rdi,1), %r11d       #  5     0x603ea  4      
  testl %r11d, %r11d              #  6     0x603ee  3      
  jne .L_60420                    #  7     0x603f1  6      
  addl $0x8, %esp                 #  8     0x603f7  3      
  addq %r15, %rsp                 #  9     0x603fa  3      
  popq %r11                       #  10    0x603fd  3      
  nop                             #  11    0x60400  1      
  andl $0xffffffe0, %r11d         #  12    0x60401  7      
  addq %r15, %r11                 #  13    0x60408  3      
  jmpq %r11                       #  14    0x6040b  3      
  nop                             #  15    0x6040e  1      
  nop                             #  16    0x6040f  1      
.L_60420:                         #        0x60410  0      
  nop                             #  17    0x60410  1      
  nop                             #  18    0x60411  1      
  callq .__deregister_frame_info  #  19    0x60412  5      
  addl $0x8, %esp                 #  20    0x60417  3      
  addq %r15, %rsp                 #  21    0x6041a  3      
  movl %eax, %edi                 #  22    0x6041d  2      
  jmpq .free                      #  23    0x6041f  5      
  nop                             #  24    0x60424  1      
  nop                             #  25    0x60425  1      
  nop                             #  26    0x60426  1      
  nop                             #  27    0x60427  1      
  nop                             #  28    0x60428  1      
  nop                             #  29    0x60429  1      
  nop                             #  30    0x6042a  1      
  nop                             #  31    0x6042b  1      
  nop                             #  32    0x6042c  1      
  nop                             #  33    0x6042d  1      
  nop                             #  34    0x6042e  1      
  nop                             #  35    0x6042f  1      
  nop                             #  36    0x60430  1      
  nop                             #  37    0x60431  1      
  nop                             #  38    0x60432  1      
  nop                             #  39    0x60433  1      
  nop                             #  40    0x60434  1      
  nop                             #  41    0x60435  1      
  nop                             #  42    0x60436  1      
                                                           
.size __deregister_frame, .-__deregister_frame

