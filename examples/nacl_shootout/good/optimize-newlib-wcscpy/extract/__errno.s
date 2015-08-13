  .text
  .globl __errno
  .type __errno, @function

#! file-offset 0x1594c0
#! rip-offset  0x1194c0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.__errno:                   #        0x1194c0  0      OPC=<label>         
  nop                       #  1     0x1194c0  1      OPC=nop             
  nop                       #  2     0x1194c1  1      OPC=nop             
  nop                       #  3     0x1194c2  1      OPC=nop             
  nop                       #  4     0x1194c3  1      OPC=nop             
  nop                       #  5     0x1194c4  1      OPC=nop             
  nop                       #  6     0x1194c5  1      OPC=nop             
  nop                       #  7     0x1194c6  1      OPC=nop             
  nop                       #  8     0x1194c7  1      OPC=nop             
  nop                       #  9     0x1194c8  1      OPC=nop             
  nop                       #  10    0x1194c9  1      OPC=nop             
  nop                       #  11    0x1194ca  1      OPC=nop             
  nop                       #  12    0x1194cb  1      OPC=nop             
  nop                       #  13    0x1194cc  1      OPC=nop             
  nop                       #  14    0x1194cd  1      OPC=nop             
  nop                       #  15    0x1194ce  1      OPC=nop             
  nop                       #  16    0x1194cf  1      OPC=nop             
  nop                       #  17    0x1194d0  1      OPC=nop             
  nop                       #  18    0x1194d1  1      OPC=nop             
  nop                       #  19    0x1194d2  1      OPC=nop             
  nop                       #  20    0x1194d3  1      OPC=nop             
  nop                       #  21    0x1194d4  1      OPC=nop             
  nop                       #  22    0x1194d5  1      OPC=nop             
  nop                       #  23    0x1194d6  1      OPC=nop             
  nop                       #  24    0x1194d7  1      OPC=nop             
  nop                       #  25    0x1194d8  1      OPC=nop             
  nop                       #  26    0x1194d9  1      OPC=nop             
  nop                       #  27    0x1194da  1      OPC=nop             
  callq .__nacl_read_tp     #  28    0x1194db  5      OPC=callq_label     
  popq %r11                 #  29    0x1194e0  2      OPC=popq_r64_1      
  leaq -0x480(%rax), %rax   #  30    0x1194e2  7      OPC=leaq_r64_m16    
  movl %eax, %eax           #  31    0x1194e9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  32    0x1194eb  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  33    0x1194ef  7      OPC=andl_r32_imm32  
  nop                       #  34    0x1194f6  1      OPC=nop             
  nop                       #  35    0x1194f7  1      OPC=nop             
  nop                       #  36    0x1194f8  1      OPC=nop             
  nop                       #  37    0x1194f9  1      OPC=nop             
  addq %r15, %r11           #  38    0x1194fa  3      OPC=addq_r64_r64    
  jmpq %r11                 #  39    0x1194fd  3      OPC=jmpq_r64        
  nop                       #  40    0x119500  1      OPC=nop             
  nop                       #  41    0x119501  1      OPC=nop             
  nop                       #  42    0x119502  1      OPC=nop             
  nop                       #  43    0x119503  1      OPC=nop             
  nop                       #  44    0x119504  1      OPC=nop             
  nop                       #  45    0x119505  1      OPC=nop             
  nop                       #  46    0x119506  1      OPC=nop             
                                                                          
.size __errno, .-__errno

