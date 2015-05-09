  .text
  .globl fatal_error
  .type fatal_error, @function

#! file-offset 0x3fa00
#! rip-offset  0x3fa00
#! capacity    96 bytes

# Text              #  Line  RIP      Bytes  
.fatal_error:       #        0x3fa00  0      
  pushq %rbx        #  1     0x3fa00  2      
  movl %edi, %ebx   #  2     0x3fa02  2      
  movl %ebx, %edi   #  3     0x3fa04  2      
  nop               #  4     0x3fa06  1      
  nop               #  5     0x3fa07  1      
  callq .strlen     #  6     0x3fa08  5      
  movl $0x2, %edi   #  7     0x3fa0d  5      
  movl %eax, %edx   #  8     0x3fa12  2      
  movl %ebx, %esi   #  9     0x3fa14  2      
  nop               #  10    0x3fa16  1      
  nop               #  11    0x3fa17  1      
  callq .write      #  12    0x3fa18  5      
  movl $0x7f, %edi  #  13    0x3fa1d  5      
  nop               #  14    0x3fa22  1      
  nop               #  15    0x3fa23  1      
  callq ._exit      #  16    0x3fa24  5      
                                             
.size fatal_error, .-fatal_error

