  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x1840c0
#! rip-offset  0x1440c0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.wmemset:                  #        0x1440c0  0      OPC=<label>         
  nop                      #  1     0x1440c0  1      OPC=nop             
  nop                      #  2     0x1440c1  1      OPC=nop             
  movl %edi, %eax          #  3     0x1440c2  2      OPC=movl_r32_r32_1  
  xorl %ecx, %ecx          #  4     0x1440c4  2      OPC=xorl_r32_r32    
  nop                      #  5     0x1440c6  1      OPC=nop             
  nop                      #  6     0x1440c7  1      OPC=nop             
  nop                      #  7     0x1440c8  1      OPC=nop             
  nop                      #  8     0x1440c9  1      OPC=nop             
  nop                      #  9     0x1440ca  1      OPC=nop             
  nop                      #  10    0x1440cb  1      OPC=nop             
  nop                      #  11    0x1440cc  1      OPC=nop             
  nop                      #  12    0x1440cd  1      OPC=nop             
  movl %eax, %r8d          #  13    0x1440ce  3      OPC=movl_r32_r32    
  nop                      #  14    0x1440d1  1      OPC=nop             
  nop                      #  15    0x1440d2  1      OPC=nop             
  nop                      #  16    0x1440d3  1      OPC=nop             
  testl %edx, %edx         #  17    0x1440d4  2      OPC=testl_r32_r32   
  je .L_144100             #  18    0x1440d6  2      OPC=je_label        
  nop                      #  19    0x1440d8  1      OPC=nop             
  nop                      #  20    0x1440d9  1      OPC=nop             
  nop                      #  21    0x1440da  1      OPC=nop             
  nop                      #  22    0x1440db  1      OPC=nop             
  nop                      #  23    0x1440dc  1      OPC=nop             
  nop                      #  24    0x1440dd  1      OPC=nop             
  nop                      #  25    0x1440de  1      OPC=nop             
  nop                      #  26    0x1440df  1      OPC=nop             
.L_1440e0:                 #        0x1440e0  0      OPC=<label>         
  addq $0x1, %rcx          #  27    0x1440e0  4      OPC=addq_r64_imm8   
  orl %r8d, %r8d           #  28    0x1440e4  3      OPC=orl_r32_r32_1   
  movl %esi, (%r15,%r8,1)  #  29    0x1440e7  4      OPC=movl_m32_r32    
  addl $0x4, %r8d          #  30    0x1440eb  4      OPC=addl_r32_imm8   
  cmpl %ecx, %edx          #  31    0x1440ef  2      OPC=cmpl_r32_r32    
  ja .L_1440e0             #  32    0x1440f1  2      OPC=ja_label        
.L_144100:                 #        0x1440f3  0      OPC=<label>         
  retq                     #  33    0x1440f3  1      OPC=retq            
                                                                         
.size wmemset, .-wmemset
