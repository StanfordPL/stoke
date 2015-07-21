  .text
  .globl _ZNKSt8numpunctIwE16do_thousands_sepEv
  .type _ZNKSt8numpunctIwE16do_thousands_sepEv, @function

#! file-offset 0xf0180
#! rip-offset  0xb0180
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode    
._ZNKSt8numpunctIwE16do_thousands_sepEv:  #        0xb0180  0      OPC=0     
  movl %edi, %edi                         #  1     0xb0180  2      OPC=1157  
  movl %edi, %edi                         #  2     0xb0182  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax             #  3     0xb0184  5      OPC=1156  
  popq %r11                               #  4     0xb0189  2      OPC=1694  
  movl %eax, %eax                         #  5     0xb018b  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax            #  6     0xb018d  5      OPC=1156  
  andl $0xffffffe0, %r11d                 #  7     0xb0192  7      OPC=131   
  nop                                     #  8     0xb0199  1      OPC=1343  
  nop                                     #  9     0xb019a  1      OPC=1343  
  nop                                     #  10    0xb019b  1      OPC=1343  
  nop                                     #  11    0xb019c  1      OPC=1343  
  addq %r15, %r11                         #  12    0xb019d  3      OPC=72    
  jmpq %r11                               #  13    0xb01a0  3      OPC=928   
  nop                                     #  14    0xb01a3  1      OPC=1343  
  nop                                     #  15    0xb01a4  1      OPC=1343  
  nop                                     #  16    0xb01a5  1      OPC=1343  
  nop                                     #  17    0xb01a6  1      OPC=1343  
                                                                             
.size _ZNKSt8numpunctIwE16do_thousands_sepEv, .-_ZNKSt8numpunctIwE16do_thousands_sepEv

