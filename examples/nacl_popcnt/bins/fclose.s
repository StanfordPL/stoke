  .text
  .globl fclose
  .type fclose, @function

#! file-offset 0x87d00
#! rip-offset  0x87d00
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.fclose:                    #        0x87d00  0      
  pushq %rbx                #  1     0x87d00  2      
  movl %edi, %ebx           #  2     0x87d02  2      
  nop                       #  3     0x87d04  1      
  nop                       #  4     0x87d05  1      
  callq .__nacl_read_tp     #  5     0x87d06  5      
  leaq -0x480(%rax), %rax   #  6     0x87d0b  7      
  movl %ebx, %esi           #  7     0x87d12  2      
  popq %rbx                 #  8     0x87d14  2      
  movl %eax, %eax           #  9     0x87d16  2      
  movl (%r15,%rax,1), %edi  #  10    0x87d18  4      
  jmpq ._fclose_r           #  11    0x87d1c  5      
  nop                       #  12    0x87d21  1      
  nop                       #  13    0x87d22  1      
  nop                       #  14    0x87d23  1      
  nop                       #  15    0x87d24  1      
  nop                       #  16    0x87d25  1      
  nop                       #  17    0x87d26  1      
  nop                       #  18    0x87d27  1      
  nop                       #  19    0x87d28  1      
  nop                       #  20    0x87d29  1      
  nop                       #  21    0x87d2a  1      
  nop                       #  22    0x87d2b  1      
                                                     
.size fclose, .-fclose

