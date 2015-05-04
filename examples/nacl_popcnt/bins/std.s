  .text
  .globl std
  .type std, @function

#! file-offset 0x7b040
#! rip-offset  0x7b040
#! capacity    192 bytes

# Text                               #  Line  RIP      Bytes  
.std:                                #        0x7b040  0      
  pushq %rbx                         #  1     0x7b040  2      
  movl %edi, %ebx                    #  2     0x7b042  2      
  leal 0x70(%rbx), %edi              #  3     0x7b044  3      
  movl %ebx, %ebx                    #  4     0x7b047  2      
  movw %si, 0xc(%r15,%rbx,1)         #  5     0x7b049  6      
  movl %ebx, %ebx                    #  6     0x7b04f  2      
  movw %dx, 0xe(%r15,%rbx,1)         #  7     0x7b051  6      
  movl %ebx, %ebx                    #  8     0x7b057  2      
  movl $0x0, (%r15,%rbx,1)           #  9     0x7b059  8      
  movl %ebx, %ebx                    #  10    0x7b061  2      
  movl $0x0, 0x4(%r15,%rbx,1)        #  11    0x7b063  9      
  movl $0x8, %edx                    #  12    0x7b06c  5      
  movl %ebx, %ebx                    #  13    0x7b071  2      
  movl $0x0, 0x8(%r15,%rbx,1)        #  14    0x7b073  9      
  nop                                #  15    0x7b07c  1      
  movl %ebx, %ebx                    #  16    0x7b07d  2      
  movl $0x0, 0x78(%r15,%rbx,1)       #  17    0x7b07f  9      
  xorl %esi, %esi                    #  18    0x7b088  2      
  movl %ebx, %ebx                    #  19    0x7b08a  2      
  movl $0x0, 0x10(%r15,%rbx,1)       #  20    0x7b08c  9      
  nop                                #  21    0x7b095  1      
  movl %ebx, %ebx                    #  22    0x7b096  2      
  movl $0x0, 0x14(%r15,%rbx,1)       #  23    0x7b098  9      
  movl %ebx, %ebx                    #  24    0x7b0a1  2      
  movl $0x0, 0x18(%r15,%rbx,1)       #  25    0x7b0a3  9      
  nop                                #  26    0x7b0ac  1      
  callq .memset                      #  27    0x7b0ad  5      
  movl %ebx, %ebx                    #  28    0x7b0b2  2      
  movl %ebx, 0x1c(%r15,%rbx,1)       #  29    0x7b0b4  5      
  movl %ebx, %ebx                    #  30    0x7b0b9  2      
  movl $0x801e0, 0x20(%r15,%rbx,1)   #  31    0x7b0bb  9      
  leal 0x5c(%rbx), %edi              #  32    0x7b0c4  3      
  movl %ebx, %ebx                    #  33    0x7b0c7  2      
  movl $0x80140, 0x24(%r15,%rbx,1)   #  34    0x7b0c9  9      
  movl %ebx, %ebx                    #  35    0x7b0d2  2      
  movl $0x800c0, 0x28(%r15,%rbx,1)   #  36    0x7b0d4  9      
  movl %ebx, %ebx                    #  37    0x7b0dd  2      
  movl $0x800a0, 0x2c(%r15,%rbx,1)   #  38    0x7b0df  9      
  popq %rbx                          #  39    0x7b0e8  2      
  jmpq .__local_lock_init_recursive  #  40    0x7b0ea  5      
  nop                                #  41    0x7b0ef  1      
                                                              
.size std, .-std

