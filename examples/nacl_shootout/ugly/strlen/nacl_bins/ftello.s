  .text
  .globl ftello
  .type ftello, @function

#! file-offset 0x15c7c0
#! rip-offset  0x11c7c0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.ftello:                    #        0x11c7c0  0      OPC=0     
  pushq %rbx                #  1     0x11c7c0  1      OPC=1861  
  movl %edi, %ebx           #  2     0x11c7c1  2      OPC=1157  
  nop                       #  3     0x11c7c3  1      OPC=1343  
  nop                       #  4     0x11c7c4  1      OPC=1343  
  nop                       #  5     0x11c7c5  1      OPC=1343  
  nop                       #  6     0x11c7c6  1      OPC=1343  
  nop                       #  7     0x11c7c7  1      OPC=1343  
  nop                       #  8     0x11c7c8  1      OPC=1343  
  nop                       #  9     0x11c7c9  1      OPC=1343  
  nop                       #  10    0x11c7ca  1      OPC=1343  
  nop                       #  11    0x11c7cb  1      OPC=1343  
  nop                       #  12    0x11c7cc  1      OPC=1343  
  nop                       #  13    0x11c7cd  1      OPC=1343  
  nop                       #  14    0x11c7ce  1      OPC=1343  
  nop                       #  15    0x11c7cf  1      OPC=1343  
  nop                       #  16    0x11c7d0  1      OPC=1343  
  nop                       #  17    0x11c7d1  1      OPC=1343  
  nop                       #  18    0x11c7d2  1      OPC=1343  
  nop                       #  19    0x11c7d3  1      OPC=1343  
  nop                       #  20    0x11c7d4  1      OPC=1343  
  nop                       #  21    0x11c7d5  1      OPC=1343  
  nop                       #  22    0x11c7d6  1      OPC=1343  
  nop                       #  23    0x11c7d7  1      OPC=1343  
  nop                       #  24    0x11c7d8  1      OPC=1343  
  nop                       #  25    0x11c7d9  1      OPC=1343  
  nop                       #  26    0x11c7da  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x11c7db  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x11c7e0  7      OPC=1069  
  movl %ebx, %esi           #  29    0x11c7e7  2      OPC=1157  
  popq %rbx                 #  30    0x11c7e9  1      OPC=1694  
  movl %eax, %eax           #  31    0x11c7ea  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  32    0x11c7ec  4      OPC=1156  
  jmpq ._ftello_r           #  33    0x11c7f0  5      OPC=930   
  nop                       #  34    0x11c7f5  1      OPC=1343  
  nop                       #  35    0x11c7f6  1      OPC=1343  
  nop                       #  36    0x11c7f7  1      OPC=1343  
  nop                       #  37    0x11c7f8  1      OPC=1343  
  nop                       #  38    0x11c7f9  1      OPC=1343  
  nop                       #  39    0x11c7fa  1      OPC=1343  
  nop                       #  40    0x11c7fb  1      OPC=1343  
  nop                       #  41    0x11c7fc  1      OPC=1343  
  nop                       #  42    0x11c7fd  1      OPC=1343  
  nop                       #  43    0x11c7fe  1      OPC=1343  
  nop                       #  44    0x11c7ff  1      OPC=1343  
                                                                
.size ftello, .-ftello

