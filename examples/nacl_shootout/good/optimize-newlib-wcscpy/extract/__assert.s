  .text
  .globl __assert
  .type __assert, @function

#! file-offset 0x1592c0
#! rip-offset  0x1192c0
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode             
.__assert:              #        0x1192c0  0      OPC=<label>        
  movl %edx, %ecx       #  1     0x1192c0  2      OPC=movl_r32_r32   
  subl $0x8, %esp       #  2     0x1192c2  3      OPC=subl_r32_imm8  
  addq %r15, %rsp       #  3     0x1192c5  3      OPC=addq_r64_r64   
  movl %edi, %edi       #  4     0x1192c8  2      OPC=movl_r32_r32   
  xorl %edx, %edx       #  5     0x1192ca  2      OPC=xorl_r32_r32   
  nop                   #  6     0x1192cc  1      OPC=nop            
  nop                   #  7     0x1192cd  1      OPC=nop            
  nop                   #  8     0x1192ce  1      OPC=nop            
  nop                   #  9     0x1192cf  1      OPC=nop            
  nop                   #  10    0x1192d0  1      OPC=nop            
  nop                   #  11    0x1192d1  1      OPC=nop            
  nop                   #  12    0x1192d2  1      OPC=nop            
  nop                   #  13    0x1192d3  1      OPC=nop            
  nop                   #  14    0x1192d4  1      OPC=nop            
  nop                   #  15    0x1192d5  1      OPC=nop            
  nop                   #  16    0x1192d6  1      OPC=nop            
  nop                   #  17    0x1192d7  1      OPC=nop            
  nop                   #  18    0x1192d8  1      OPC=nop            
  nop                   #  19    0x1192d9  1      OPC=nop            
  nop                   #  20    0x1192da  1      OPC=nop            
  callq .__assert_func  #  21    0x1192db  5      OPC=callq_label    
                                                                     
.size __assert, .-__assert

