  .text
  .globl std
  .type std, @function

#! file-offset 0x7afa0
#! rip-offset  0x7afa0
#! capacity    192 bytes

# Text                               #  Line  RIP      Bytes  
.std:                                #        0x7afa0  0      
  pushq %rbx                         #  1     0x7afa0  2      
  movl %edi, %ebx                    #  2     0x7afa2  2      
  leal 0x70(%rbx), %edi              #  3     0x7afa4  3      
  movl %ebx, %ebx                    #  4     0x7afa7  2      
  movw %si, 0xc(%r15,%rbx,1)         #  5     0x7afa9  6      
  movl %ebx, %ebx                    #  6     0x7afaf  2      
  movw %dx, 0xe(%r15,%rbx,1)         #  7     0x7afb1  6      
  movl %ebx, %ebx                    #  8     0x7afb7  2      
  movl $0x0, (%r15,%rbx,1)           #  9     0x7afb9  8      
  movl %ebx, %ebx                    #  10    0x7afc1  2      
  movl $0x0, 0x4(%r15,%rbx,1)        #  11    0x7afc3  9      
  movl $0x8, %edx                    #  12    0x7afcc  5      
  movl %ebx, %ebx                    #  13    0x7afd1  2      
  movl $0x0, 0x8(%r15,%rbx,1)        #  14    0x7afd3  9      
  nop                                #  15    0x7afdc  1      
  movl %ebx, %ebx                    #  16    0x7afdd  2      
  movl $0x0, 0x78(%r15,%rbx,1)       #  17    0x7afdf  9      
  xorl %esi, %esi                    #  18    0x7afe8  2      
  movl %ebx, %ebx                    #  19    0x7afea  2      
  movl $0x0, 0x10(%r15,%rbx,1)       #  20    0x7afec  9      
  nop                                #  21    0x7aff5  1      
  movl %ebx, %ebx                    #  22    0x7aff6  2      
  movl $0x0, 0x14(%r15,%rbx,1)       #  23    0x7aff8  9      
  movl %ebx, %ebx                    #  24    0x7b001  2      
  movl $0x0, 0x18(%r15,%rbx,1)       #  25    0x7b003  9      
  nop                                #  26    0x7b00c  1      
  callq .memset                      #  27    0x7b00d  5      
  movl %ebx, %ebx                    #  28    0x7b012  2      
  movl %ebx, 0x1c(%r15,%rbx,1)       #  29    0x7b014  5      
  movl %ebx, %ebx                    #  30    0x7b019  2      
  movl $0x80140, 0x20(%r15,%rbx,1)   #  31    0x7b01b  9      
  leal 0x5c(%rbx), %edi              #  32    0x7b024  3      
  movl %ebx, %ebx                    #  33    0x7b027  2      
  movl $0x800a0, 0x24(%r15,%rbx,1)   #  34    0x7b029  9      
  movl %ebx, %ebx                    #  35    0x7b032  2      
  movl $0x80020, 0x28(%r15,%rbx,1)   #  36    0x7b034  9      
  movl %ebx, %ebx                    #  37    0x7b03d  2      
  movl $0x80000, 0x2c(%r15,%rbx,1)   #  38    0x7b03f  9      
  popq %rbx                          #  39    0x7b048  2      
  jmpq .__local_lock_init_recursive  #  40    0x7b04a  5      
  nop                                #  41    0x7b04f  1      
                                                              
.size std, .-std

