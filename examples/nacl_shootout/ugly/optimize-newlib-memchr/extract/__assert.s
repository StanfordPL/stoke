  .text
  .globl __assert
  .type __assert, @function

#! file-offset 0x159ce0
#! rip-offset  0x119ce0
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode             
.__assert:              #        0x119ce0  0      OPC=<label>        
  movl %edx, %ecx       #  1     0x119ce0  2      OPC=movl_r32_r32   
  subl $0x8, %esp       #  2     0x119ce2  3      OPC=subl_r32_imm8  
  addq %r15, %rsp       #  3     0x119ce5  3      OPC=addq_r64_r64   
  movl %edi, %edi       #  4     0x119ce8  2      OPC=movl_r32_r32   
  xorl %edx, %edx       #  5     0x119cea  2      OPC=xorl_r32_r32   
  nop                   #  6     0x119cec  1      OPC=nop            
  nop                   #  7     0x119ced  1      OPC=nop            
  nop                   #  8     0x119cee  1      OPC=nop            
  nop                   #  9     0x119cef  1      OPC=nop            
  nop                   #  10    0x119cf0  1      OPC=nop            
  nop                   #  11    0x119cf1  1      OPC=nop            
  nop                   #  12    0x119cf2  1      OPC=nop            
  nop                   #  13    0x119cf3  1      OPC=nop            
  nop                   #  14    0x119cf4  1      OPC=nop            
  nop                   #  15    0x119cf5  1      OPC=nop            
  nop                   #  16    0x119cf6  1      OPC=nop            
  nop                   #  17    0x119cf7  1      OPC=nop            
  nop                   #  18    0x119cf8  1      OPC=nop            
  nop                   #  19    0x119cf9  1      OPC=nop            
  nop                   #  20    0x119cfa  1      OPC=nop            
  callq .__assert_func  #  21    0x119cfb  5      OPC=callq_label    
                                                                     
.size __assert, .-__assert

