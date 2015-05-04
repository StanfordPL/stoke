  .text
  .globl fatal_error
  .type fatal_error, @function

#! file-offset 0x3faa0
#! rip-offset  0x3faa0
#! capacity    96 bytes

# Text              #  Line  RIP      Bytes  
.fatal_error:       #        0x3faa0  0      
  pushq %rbx        #  1     0x3faa0  2      
  movl %edi, %ebx   #  2     0x3faa2  2      
  movl %ebx, %edi   #  3     0x3faa4  2      
  nop               #  4     0x3faa6  1      
  nop               #  5     0x3faa7  1      
  callq .strlen     #  6     0x3faa8  5      
  movl $0x2, %edi   #  7     0x3faad  5      
  movl %eax, %edx   #  8     0x3fab2  2      
  movl %ebx, %esi   #  9     0x3fab4  2      
  nop               #  10    0x3fab6  1      
  nop               #  11    0x3fab7  1      
  callq .write      #  12    0x3fab8  5      
  movl $0x7f, %edi  #  13    0x3fabd  5      
  nop               #  14    0x3fac2  1      
  nop               #  15    0x3fac3  1      
  callq ._exit      #  16    0x3fac4  5      
                                             
.size fatal_error, .-fatal_error

