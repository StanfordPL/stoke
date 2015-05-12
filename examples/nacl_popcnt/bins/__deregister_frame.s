  .text
  .globl __deregister_frame
  .type __deregister_frame, @function

#! file-offset 0x60400
#! rip-offset  0x60400
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__deregister_frame:              #        0x60400  0      
  movl %edi, %edi                 #  1     0x60400  2      
  subl $0x8, %esp                 #  2     0x60402  3      
  addq %r15, %rsp                 #  3     0x60405  3      
  movl %edi, %edi                 #  4     0x60408  2      
  movl (%r15,%rdi,1), %r11d       #  5     0x6040a  4      
  testl %r11d, %r11d              #  6     0x6040e  3      
  jne .L_60440                    #  7     0x60411  6      
  addl $0x8, %esp                 #  8     0x60417  3      
  addq %r15, %rsp                 #  9     0x6041a  3      
  popq %r11                       #  10    0x6041d  3      
  nop                             #  11    0x60420  1      
  andl $0xffffffe0, %r11d         #  12    0x60421  7      
  addq %r15, %r11                 #  13    0x60428  3      
  jmpq %r11                       #  14    0x6042b  3      
  nop                             #  15    0x6042e  1      
  nop                             #  16    0x6042f  1      
.L_60440:                         #        0x60430  0      
  nop                             #  17    0x60430  1      
  nop                             #  18    0x60431  1      
  callq .__deregister_frame_info  #  19    0x60432  5      
  addl $0x8, %esp                 #  20    0x60437  3      
  addq %r15, %rsp                 #  21    0x6043a  3      
  movl %eax, %edi                 #  22    0x6043d  2      
  jmpq .free                      #  23    0x6043f  5      
  nop                             #  24    0x60444  1      
  nop                             #  25    0x60445  1      
  nop                             #  26    0x60446  1      
  nop                             #  27    0x60447  1      
  nop                             #  28    0x60448  1      
  nop                             #  29    0x60449  1      
  nop                             #  30    0x6044a  1      
  nop                             #  31    0x6044b  1      
  nop                             #  32    0x6044c  1      
  nop                             #  33    0x6044d  1      
  nop                             #  34    0x6044e  1      
  nop                             #  35    0x6044f  1      
  nop                             #  36    0x60450  1      
  nop                             #  37    0x60451  1      
  nop                             #  38    0x60452  1      
  nop                             #  39    0x60453  1      
  nop                             #  40    0x60454  1      
  nop                             #  41    0x60455  1      
  nop                             #  42    0x60456  1      
                                                           
.size __deregister_frame, .-__deregister_frame

