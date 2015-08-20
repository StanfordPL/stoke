  .text
  .globl thread_create
  .type thread_create, @function

#! file-offset 0x6d2a0
#! rip-offset  0x2d2a0
#! capacity    32 bytes

# Text                  #  Line  RIP      Bytes  Opcode            
.thread_create:         #        0x2d2a0  0      OPC=<label>       
  movl %esi, %esi       #  1     0x2d2a0  2      OPC=movl_r32_r32  
  movl %edx, %ecx       #  2     0x2d2a2  2      OPC=movl_r32_r32  
  movl %edi, %edi       #  3     0x2d2a4  2      OPC=movl_r32_r32  
  movl %esi, %edx       #  4     0x2d2a6  2      OPC=movl_r32_r32  
  xorl %esi, %esi       #  5     0x2d2a8  2      OPC=xorl_r32_r32  
  jmpq .pthread_create  #  6     0x2d2aa  5      OPC=jmpq_label_1  
  nop                   #  7     0x2d2af  1      OPC=nop           
  nop                   #  8     0x2d2b0  1      OPC=nop           
  nop                   #  9     0x2d2b1  1      OPC=nop           
  nop                   #  10    0x2d2b2  1      OPC=nop           
  nop                   #  11    0x2d2b3  1      OPC=nop           
  nop                   #  12    0x2d2b4  1      OPC=nop           
  nop                   #  13    0x2d2b5  1      OPC=nop           
  nop                   #  14    0x2d2b6  1      OPC=nop           
  nop                   #  15    0x2d2b7  1      OPC=nop           
  nop                   #  16    0x2d2b8  1      OPC=nop           
  nop                   #  17    0x2d2b9  1      OPC=nop           
  nop                   #  18    0x2d2ba  1      OPC=nop           
  nop                   #  19    0x2d2bb  1      OPC=nop           
  nop                   #  20    0x2d2bc  1      OPC=nop           
  nop                   #  21    0x2d2bd  1      OPC=nop           
  nop                   #  22    0x2d2be  1      OPC=nop           
  nop                   #  23    0x2d2bf  1      OPC=nop           
                                                                   
.size thread_create, .-thread_create

