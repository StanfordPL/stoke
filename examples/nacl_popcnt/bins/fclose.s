  .text
  .globl fclose
  .type fclose, @function

#! file-offset 0x87ce0
#! rip-offset  0x87ce0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.fclose:                    #        0x87ce0  0      
  pushq %rbx                #  1     0x87ce0  2      
  movl %edi, %ebx           #  2     0x87ce2  2      
  nop                       #  3     0x87ce4  1      
  nop                       #  4     0x87ce5  1      
  callq .__nacl_read_tp     #  5     0x87ce6  5      
  leaq -0x480(%rax), %rax   #  6     0x87ceb  7      
  movl %ebx, %esi           #  7     0x87cf2  2      
  popq %rbx                 #  8     0x87cf4  2      
  movl %eax, %eax           #  9     0x87cf6  2      
  movl (%r15,%rax,1), %edi  #  10    0x87cf8  4      
  jmpq ._fclose_r           #  11    0x87cfc  5      
  nop                       #  12    0x87d01  1      
  nop                       #  13    0x87d02  1      
  nop                       #  14    0x87d03  1      
  nop                       #  15    0x87d04  1      
  nop                       #  16    0x87d05  1      
  nop                       #  17    0x87d06  1      
  nop                       #  18    0x87d07  1      
  nop                       #  19    0x87d08  1      
  nop                       #  20    0x87d09  1      
  nop                       #  21    0x87d0a  1      
  nop                       #  22    0x87d0b  1      
                                                     
.size fclose, .-fclose

