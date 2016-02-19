  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x1840c0
#! rip-offset  0x1440c0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode             
.wmemset:                  #        0x1440c0  0      OPC=<label>        
  andb %dl, %dl            #  1     0x1440c0  2      OPC=andb_r8_r8_1   
  movl %edi, %eax          #  2     0x1440c2  2      OPC=movl_r32_r32   
  je .L_144100             #  3     0x1440c4  2      OPC=je_label       
  movq %rax, %r8           #  4     0x1440c6  3      OPC=movq_r64_r64   
  xorl %ecx, %ecx          #  5     0x1440c9  2      OPC=xorl_r32_r32   
  nop                      #  6     0x1440cb  1      OPC=nop            
  nop                      #  7     0x1440cc  1      OPC=nop            
  nop                      #  8     0x1440cd  1      OPC=nop            
  nop                      #  9     0x1440ce  1      OPC=nop            
  nop                      #  10    0x1440cf  1      OPC=nop            
.L_1440e0:                 #        0x1440d0  0      OPC=<label>        
  addl $0x1, %ecx          #  11    0x1440d0  3      OPC=addl_r32_imm8  
  movl %r8d, %r8d          #  12    0x1440d3  3      OPC=movl_r32_r32   
  movl %esi, (%r15,%r8,1)  #  13    0x1440d6  4      OPC=movl_m32_r32   
  addl $0x4, %r8d          #  14    0x1440da  4      OPC=addl_r32_imm8  
  cmpl %ecx, %edx          #  15    0x1440de  2      OPC=cmpl_r32_r32   
  ja .L_1440e0             #  16    0x1440e0  2      OPC=ja_label       
  nop                      #  17    0x1440e2  1      OPC=nop            
  nop                      #  18    0x1440e3  1      OPC=nop            
  nop                      #  19    0x1440e4  1      OPC=nop            
  nop                      #  20    0x1440e5  1      OPC=nop            
  nop                      #  21    0x1440e6  1      OPC=nop            
  nop                      #  22    0x1440e7  1      OPC=nop            
  nop                      #  23    0x1440e8  1      OPC=nop            
  nop                      #  24    0x1440e9  1      OPC=nop            
  nop                      #  25    0x1440ea  1      OPC=nop            
  nop                      #  26    0x1440eb  1      OPC=nop            
  nop                      #  27    0x1440ec  1      OPC=nop            
  nop                      #  28    0x1440ed  1      OPC=nop            
  nop                      #  29    0x1440ee  1      OPC=nop            
  nop                      #  30    0x1440ef  1      OPC=nop            
.L_144100:                 #        0x1440f0  0      OPC=<label>        
  retq                     #  31    0x1440f0  1      OPC=retq           
                                                                        
.size wmemset, .-wmemset
