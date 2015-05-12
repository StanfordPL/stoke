  .text
  .globl std
  .type std, @function

#! file-offset 0x7afc0
#! rip-offset  0x7afc0
#! capacity    192 bytes

# Text                               #  Line  RIP      Bytes  
.std:                                #        0x7afc0  0      
  pushq %rbx                         #  1     0x7afc0  2      
  movl %edi, %ebx                    #  2     0x7afc2  2      
  leal 0x70(%rbx), %edi              #  3     0x7afc4  3      
  movl %ebx, %ebx                    #  4     0x7afc7  2      
  movw %si, 0xc(%r15,%rbx,1)         #  5     0x7afc9  6      
  movl %ebx, %ebx                    #  6     0x7afcf  2      
  movw %dx, 0xe(%r15,%rbx,1)         #  7     0x7afd1  6      
  movl %ebx, %ebx                    #  8     0x7afd7  2      
  movl $0x0, (%r15,%rbx,1)           #  9     0x7afd9  8      
  movl %ebx, %ebx                    #  10    0x7afe1  2      
  movl $0x0, 0x4(%r15,%rbx,1)        #  11    0x7afe3  9      
  movl $0x8, %edx                    #  12    0x7afec  5      
  movl %ebx, %ebx                    #  13    0x7aff1  2      
  movl $0x0, 0x8(%r15,%rbx,1)        #  14    0x7aff3  9      
  nop                                #  15    0x7affc  1      
  movl %ebx, %ebx                    #  16    0x7affd  2      
  movl $0x0, 0x78(%r15,%rbx,1)       #  17    0x7afff  9      
  xorl %esi, %esi                    #  18    0x7b008  2      
  movl %ebx, %ebx                    #  19    0x7b00a  2      
  movl $0x0, 0x10(%r15,%rbx,1)       #  20    0x7b00c  9      
  nop                                #  21    0x7b015  1      
  movl %ebx, %ebx                    #  22    0x7b016  2      
  movl $0x0, 0x14(%r15,%rbx,1)       #  23    0x7b018  9      
  movl %ebx, %ebx                    #  24    0x7b021  2      
  movl $0x0, 0x18(%r15,%rbx,1)       #  25    0x7b023  9      
  nop                                #  26    0x7b02c  1      
  callq .memset                      #  27    0x7b02d  5      
  movl %ebx, %ebx                    #  28    0x7b032  2      
  movl %ebx, 0x1c(%r15,%rbx,1)       #  29    0x7b034  5      
  movl %ebx, %ebx                    #  30    0x7b039  2      
  movl $0x80160, 0x20(%r15,%rbx,1)   #  31    0x7b03b  9      
  leal 0x5c(%rbx), %edi              #  32    0x7b044  3      
  movl %ebx, %ebx                    #  33    0x7b047  2      
  movl $0x800c0, 0x24(%r15,%rbx,1)   #  34    0x7b049  9      
  movl %ebx, %ebx                    #  35    0x7b052  2      
  movl $0x80040, 0x28(%r15,%rbx,1)   #  36    0x7b054  9      
  movl %ebx, %ebx                    #  37    0x7b05d  2      
  movl $0x80020, 0x2c(%r15,%rbx,1)   #  38    0x7b05f  9      
  popq %rbx                          #  39    0x7b068  2      
  jmpq .__local_lock_init_recursive  #  40    0x7b06a  5      
  nop                                #  41    0x7b06f  1      
                                                              
.size std, .-std

