  .text
  .globl independent_calloc
  .type independent_calloc, @function

#! file-offset 0x157b40
#! rip-offset  0x117b40
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.independent_calloc:       #        0x117b40  0      OPC=0     
  subl $0x18, %esp         #  1     0x117b40  3      OPC=2384  
  addq %r15, %rsp          #  2     0x117b43  3      OPC=72    
  movl %edx, %ecx          #  3     0x117b46  2      OPC=1157  
  movl $0x3, %edx          #  4     0x117b48  5      OPC=1154  
  movl %esi, 0xc(%rsp)     #  5     0x117b4d  4      OPC=1136  
  leal 0xc(%rsp), %esi     #  6     0x117b51  4      OPC=1066  
  nop                      #  7     0x117b55  1      OPC=1343  
  nop                      #  8     0x117b56  1      OPC=1343  
  nop                      #  9     0x117b57  1      OPC=1343  
  nop                      #  10    0x117b58  1      OPC=1343  
  nop                      #  11    0x117b59  1      OPC=1343  
  nop                      #  12    0x117b5a  1      OPC=1343  
  callq .T_278             #  13    0x117b5b  5      OPC=260   
  addl $0x18, %esp         #  14    0x117b60  3      OPC=65    
  addq %r15, %rsp          #  15    0x117b63  3      OPC=72    
  movl %eax, %eax          #  16    0x117b66  2      OPC=1157  
  popq %r11                #  17    0x117b68  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  18    0x117b6a  7      OPC=131   
  nop                      #  19    0x117b71  1      OPC=1343  
  nop                      #  20    0x117b72  1      OPC=1343  
  nop                      #  21    0x117b73  1      OPC=1343  
  nop                      #  22    0x117b74  1      OPC=1343  
  addq %r15, %r11          #  23    0x117b75  3      OPC=72    
  jmpq %r11                #  24    0x117b78  3      OPC=928   
  nop                      #  25    0x117b7b  1      OPC=1343  
  nop                      #  26    0x117b7c  1      OPC=1343  
  nop                      #  27    0x117b7d  1      OPC=1343  
  nop                      #  28    0x117b7e  1      OPC=1343  
  nop                      #  29    0x117b7f  1      OPC=1343  
  nop                      #  30    0x117b80  1      OPC=1343  
  nop                      #  31    0x117b81  1      OPC=1343  
  nop                      #  32    0x117b82  1      OPC=1343  
  nop                      #  33    0x117b83  1      OPC=1343  
  nop                      #  34    0x117b84  1      OPC=1343  
  nop                      #  35    0x117b85  1      OPC=1343  
  nop                      #  36    0x117b86  1      OPC=1343  
                                                               
.size independent_calloc, .-independent_calloc

