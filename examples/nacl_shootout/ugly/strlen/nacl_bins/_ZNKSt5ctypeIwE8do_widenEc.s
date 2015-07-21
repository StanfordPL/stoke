  .text
  .globl _ZNKSt5ctypeIwE8do_widenEc
  .type _ZNKSt5ctypeIwE8do_widenEc, @function

#! file-offset 0x13c4a0
#! rip-offset  0xfc4a0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIwE8do_widenEc:    #        0xfc4a0  0      OPC=0     
  popq %r11                     #  1     0xfc4a0  2      OPC=1694  
  movl %edi, %edi               #  2     0xfc4a2  2      OPC=1157  
  movzbl %sil, %esi             #  3     0xfc4a4  4      OPC=1304  
  leaq 0x90(%rdi,%rsi,4), %rax  #  4     0xfc4a8  8      OPC=1069  
  movl %eax, %eax               #  5     0xfc4b0  2      OPC=1157  
  movl (%r15,%rax,1), %eax      #  6     0xfc4b2  4      OPC=1156  
  andl $0xffffffe0, %r11d       #  7     0xfc4b6  7      OPC=131   
  nop                           #  8     0xfc4bd  1      OPC=1343  
  nop                           #  9     0xfc4be  1      OPC=1343  
  nop                           #  10    0xfc4bf  1      OPC=1343  
  nop                           #  11    0xfc4c0  1      OPC=1343  
  addq %r15, %r11               #  12    0xfc4c1  3      OPC=72    
  jmpq %r11                     #  13    0xfc4c4  3      OPC=928   
                                                                   
.size _ZNKSt5ctypeIwE8do_widenEc, .-_ZNKSt5ctypeIwE8do_widenEc

