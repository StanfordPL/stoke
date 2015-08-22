  .text
  .globl thread_create
  .type thread_create, @function

#! file-offset 0x6d9c0
#! rip-offset  0x2d9c0
#! capacity    32 bytes

# Text                  #  Line  RIP      Bytes  Opcode            
.thread_create:         #        0x2d9c0  0      OPC=<label>       
  movl %esi, %esi       #  1     0x2d9c0  2      OPC=movl_r32_r32  
  movl %edx, %ecx       #  2     0x2d9c2  2      OPC=movl_r32_r32  
  movl %edi, %edi       #  3     0x2d9c4  2      OPC=movl_r32_r32  
  movl %esi, %edx       #  4     0x2d9c6  2      OPC=movl_r32_r32  
  xorl %esi, %esi       #  5     0x2d9c8  2      OPC=xorl_r32_r32  
  jmpq .pthread_create  #  6     0x2d9ca  5      OPC=jmpq_label_1  
  nop                   #  7     0x2d9cf  1      OPC=nop           
  nop                   #  8     0x2d9d0  1      OPC=nop           
  nop                   #  9     0x2d9d1  1      OPC=nop           
  nop                   #  10    0x2d9d2  1      OPC=nop           
  nop                   #  11    0x2d9d3  1      OPC=nop           
  nop                   #  12    0x2d9d4  1      OPC=nop           
  nop                   #  13    0x2d9d5  1      OPC=nop           
  nop                   #  14    0x2d9d6  1      OPC=nop           
  nop                   #  15    0x2d9d7  1      OPC=nop           
  nop                   #  16    0x2d9d8  1      OPC=nop           
  nop                   #  17    0x2d9d9  1      OPC=nop           
  nop                   #  18    0x2d9da  1      OPC=nop           
  nop                   #  19    0x2d9db  1      OPC=nop           
  nop                   #  20    0x2d9dc  1      OPC=nop           
  nop                   #  21    0x2d9dd  1      OPC=nop           
  nop                   #  22    0x2d9de  1      OPC=nop           
  nop                   #  23    0x2d9df  1      OPC=nop           
                                                                   
.size thread_create, .-thread_create

