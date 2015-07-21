  .text
  .globl _ZNSt8ios_base6xallocEv
  .type _ZNSt8ios_base6xallocEv, @function

#! file-offset 0x1276e0
#! rip-offset  0xe76e0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
._ZNSt8ios_base6xallocEv:     #        0xe76e0  0      OPC=0     
  movl 0xff91406(%rip), %eax  #  1     0xe76e0  6      OPC=1156  
  popq %r11                   #  2     0xe76e6  2      OPC=1694  
  leal 0x1(%rax), %edx        #  3     0xe76e8  3      OPC=1066  
  addl $0x4, %eax             #  4     0xe76eb  3      OPC=65    
  movl %edx, 0xff913f8(%rip)  #  5     0xe76ee  6      OPC=1136  
  andl $0xffffffe0, %r11d     #  6     0xe76f4  7      OPC=131   
  nop                         #  7     0xe76fb  1      OPC=1343  
  nop                         #  8     0xe76fc  1      OPC=1343  
  nop                         #  9     0xe76fd  1      OPC=1343  
  nop                         #  10    0xe76fe  1      OPC=1343  
  addq %r15, %r11             #  11    0xe76ff  3      OPC=72    
  jmpq %r11                   #  12    0xe7702  3      OPC=928   
  nop                         #  13    0xe7705  1      OPC=1343  
  nop                         #  14    0xe7706  1      OPC=1343  
                                                                 
.size _ZNSt8ios_base6xallocEv, .-_ZNSt8ios_base6xallocEv

