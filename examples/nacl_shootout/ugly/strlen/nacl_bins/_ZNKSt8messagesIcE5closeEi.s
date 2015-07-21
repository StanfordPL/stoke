  .text
  .globl _ZNKSt8messagesIcE5closeEi
  .type _ZNKSt8messagesIcE5closeEi, @function

#! file-offset 0xb8880
#! rip-offset  0x78880
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._ZNKSt8messagesIcE5closeEi:    #        0x78880  0      OPC=0     
  movl %edi, %edi               #  1     0x78880  2      OPC=1157  
  movl %edi, %edi               #  2     0x78882  2      OPC=1157  
  movl (%r15,%rdi,1), %eax      #  3     0x78884  4      OPC=1156  
  movl %eax, %eax               #  4     0x78888  2      OPC=1157  
  movl 0x10(%r15,%rax,1), %eax  #  5     0x7888a  5      OPC=1156  
  andl $0xffffffe0, %eax        #  6     0x7888f  6      OPC=131   
  nop                           #  7     0x78895  1      OPC=1343  
  nop                           #  8     0x78896  1      OPC=1343  
  nop                           #  9     0x78897  1      OPC=1343  
  addq %r15, %rax               #  10    0x78898  3      OPC=72    
  jmpq %rax                     #  11    0x7889b  2      OPC=928   
  nop                           #  12    0x7889d  1      OPC=1343  
  nop                           #  13    0x7889e  1      OPC=1343  
  nop                           #  14    0x7889f  1      OPC=1343  
  nop                           #  15    0x788a0  1      OPC=1343  
  nop                           #  16    0x788a1  1      OPC=1343  
  nop                           #  17    0x788a2  1      OPC=1343  
  nop                           #  18    0x788a3  1      OPC=1343  
  nop                           #  19    0x788a4  1      OPC=1343  
  nop                           #  20    0x788a5  1      OPC=1343  
                                                                   
.size _ZNKSt8messagesIcE5closeEi, .-_ZNKSt8messagesIcE5closeEi

