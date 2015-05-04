  .text
  .globl fclose
  .type fclose, @function

#! file-offset 0x87d80
#! rip-offset  0x87d80
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
.fclose:                    #        0x87d80  0      
  pushq %rbx                #  1     0x87d80  2      
  movl %edi, %ebx           #  2     0x87d82  2      
  nop                       #  3     0x87d84  1      
  nop                       #  4     0x87d85  1      
  callq .__nacl_read_tp     #  5     0x87d86  5      
  leaq -0x480(%rax), %rax   #  6     0x87d8b  7      
  movl %ebx, %esi           #  7     0x87d92  2      
  popq %rbx                 #  8     0x87d94  2      
  movl %eax, %eax           #  9     0x87d96  2      
  movl (%r15,%rax,1), %edi  #  10    0x87d98  4      
  jmpq ._fclose_r           #  11    0x87d9c  5      
  nop                       #  12    0x87da1  1      
  nop                       #  13    0x87da2  1      
  nop                       #  14    0x87da3  1      
  nop                       #  15    0x87da4  1      
  nop                       #  16    0x87da5  1      
  nop                       #  17    0x87da6  1      
  nop                       #  18    0x87da7  1      
  nop                       #  19    0x87da8  1      
  nop                       #  20    0x87da9  1      
  nop                       #  21    0x87daa  1      
  nop                       #  22    0x87dab  1      
                                                     
.size fclose, .-fclose

