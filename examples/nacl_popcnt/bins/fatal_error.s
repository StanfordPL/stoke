  .text
  .globl fatal_error
  .type fatal_error, @function

#! file-offset 0x3fa20
#! rip-offset  0x3fa20
#! capacity    96 bytes

# Text              #  Line  RIP      Bytes  
.fatal_error:       #        0x3fa20  0      
  pushq %rbx        #  1     0x3fa20  2      
  movl %edi, %ebx   #  2     0x3fa22  2      
  movl %ebx, %edi   #  3     0x3fa24  2      
  nop               #  4     0x3fa26  1      
  nop               #  5     0x3fa27  1      
  callq .strlen     #  6     0x3fa28  5      
  movl $0x2, %edi   #  7     0x3fa2d  5      
  movl %eax, %edx   #  8     0x3fa32  2      
  movl %ebx, %esi   #  9     0x3fa34  2      
  nop               #  10    0x3fa36  1      
  nop               #  11    0x3fa37  1      
  callq .write      #  12    0x3fa38  5      
  movl $0x7f, %edi  #  13    0x3fa3d  5      
  nop               #  14    0x3fa42  1      
  nop               #  15    0x3fa43  1      
  callq ._exit      #  16    0x3fa44  5      
                                             
.size fatal_error, .-fatal_error

