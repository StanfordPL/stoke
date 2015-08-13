  .text
  .globl thread_create
  .type thread_create, @function

#! file-offset 0x6cfa0
#! rip-offset  0x2cfa0
#! capacity    32 bytes

# Text                  #  Line  RIP      Bytes  Opcode            
.thread_create:         #        0x2cfa0  0      OPC=<label>       
  movl %esi, %esi       #  1     0x2cfa0  2      OPC=movl_r32_r32  
  movl %edx, %ecx       #  2     0x2cfa2  2      OPC=movl_r32_r32  
  movl %edi, %edi       #  3     0x2cfa4  2      OPC=movl_r32_r32  
  movl %esi, %edx       #  4     0x2cfa6  2      OPC=movl_r32_r32  
  xorl %esi, %esi       #  5     0x2cfa8  2      OPC=xorl_r32_r32  
  jmpq .pthread_create  #  6     0x2cfaa  5      OPC=jmpq_label_1  
  nop                   #  7     0x2cfaf  1      OPC=nop           
  nop                   #  8     0x2cfb0  1      OPC=nop           
  nop                   #  9     0x2cfb1  1      OPC=nop           
  nop                   #  10    0x2cfb2  1      OPC=nop           
  nop                   #  11    0x2cfb3  1      OPC=nop           
  nop                   #  12    0x2cfb4  1      OPC=nop           
  nop                   #  13    0x2cfb5  1      OPC=nop           
  nop                   #  14    0x2cfb6  1      OPC=nop           
  nop                   #  15    0x2cfb7  1      OPC=nop           
  nop                   #  16    0x2cfb8  1      OPC=nop           
  nop                   #  17    0x2cfb9  1      OPC=nop           
  nop                   #  18    0x2cfba  1      OPC=nop           
  nop                   #  19    0x2cfbb  1      OPC=nop           
  nop                   #  20    0x2cfbc  1      OPC=nop           
  nop                   #  21    0x2cfbd  1      OPC=nop           
  nop                   #  22    0x2cfbe  1      OPC=nop           
  nop                   #  23    0x2cfbf  1      OPC=nop           
                                                                   
.size thread_create, .-thread_create

