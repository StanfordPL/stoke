  .text
  .globl __gmpz_init
  .type __gmpz_init, @function

#! file-offset 0x70dc0
#! rip-offset  0x30dc0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__gmpz_init:                  #        0x30dc0  0      OPC=0     
  pushq %rbx                   #  1     0x30dc0  1      OPC=1861  
  movl 0x1003fa85(%rip), %eax  #  2     0x30dc1  6      OPC=1156  
  movl %edi, %ebx              #  3     0x30dc7  2      OPC=1157  
  movl %ebx, %ebx              #  4     0x30dc9  2      OPC=1157  
  movl $0x1, (%r15,%rbx,1)     #  5     0x30dcb  8      OPC=1135  
  movl $0x4, %edi              #  6     0x30dd3  5      OPC=1154  
  andl $0xffffffe0, %eax       #  7     0x30dd8  6      OPC=131   
  nop                          #  8     0x30dde  1      OPC=1343  
  nop                          #  9     0x30ddf  1      OPC=1343  
  nop                          #  10    0x30de0  1      OPC=1343  
  addq %r15, %rax              #  11    0x30de1  3      OPC=72    
  callq %rax                   #  12    0x30de4  2      OPC=258   
  movl %ebx, %ebx              #  13    0x30de6  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rbx,1)  #  14    0x30de8  9      OPC=1135  
  movl %ebx, %ebx              #  15    0x30df1  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)  #  16    0x30df3  5      OPC=1136  
  popq %rbx                    #  17    0x30df8  1      OPC=1694  
  popq %r11                    #  18    0x30df9  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  19    0x30dfb  7      OPC=131   
  nop                          #  20    0x30e02  1      OPC=1343  
  nop                          #  21    0x30e03  1      OPC=1343  
  nop                          #  22    0x30e04  1      OPC=1343  
  nop                          #  23    0x30e05  1      OPC=1343  
  addq %r15, %r11              #  24    0x30e06  3      OPC=72    
  jmpq %r11                    #  25    0x30e09  3      OPC=928   
  nop                          #  26    0x30e0c  1      OPC=1343  
                                                                  
.size __gmpz_init, .-__gmpz_init

