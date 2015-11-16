  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x1840c0
#! rip-offset  0x1440c0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.wmemset:                  #        0x1440c0  0      OPC=<label>         
  testl %edx, %edx         #  1     0x1440c0  2      OPC=testl_r32_r32   
  movl %edi, %eax          #  2     0x1440c2  2      OPC=movl_r32_r32    
  je .L_144100             #  3     0x1440c4  2      OPC=je_label        
  movq %rax, %r8           #  4     0x1440c6  3      OPC=movq_r64_r64    
  xorl %ecx, %ecx          #  5     0x1440c9  2      OPC=xorl_r32_r32    
  nop                      #  6     0x1440cb  1      OPC=nop             
  nop                      #  7     0x1440cc  1      OPC=nop             
  nop                      #  8     0x1440cd  1      OPC=nop             
  nop                      #  9     0x1440ce  1      OPC=nop             
  nop                      #  10    0x1440cf  1      OPC=nop             
  nop                      #  11    0x1440d0  1      OPC=nop             
  nop                      #  12    0x1440d1  1      OPC=nop             
  nop                      #  13    0x1440d2  1      OPC=nop             
  nop                      #  14    0x1440d3  1      OPC=nop             
  nop                      #  15    0x1440d4  1      OPC=nop             
  nop                      #  16    0x1440d5  1      OPC=nop             
  nop                      #  17    0x1440d6  1      OPC=nop             
  nop                      #  18    0x1440d7  1      OPC=nop             
  nop                      #  19    0x1440d8  1      OPC=nop             
  nop                      #  20    0x1440d9  1      OPC=nop             
  nop                      #  21    0x1440da  1      OPC=nop             
  nop                      #  22    0x1440db  1      OPC=nop             
  nop                      #  23    0x1440dc  1      OPC=nop             
  nop                      #  24    0x1440dd  1      OPC=nop             
  nop                      #  25    0x1440de  1      OPC=nop             
  nop                      #  26    0x1440df  1      OPC=nop             
.L_1440e0:                 #        0x1440e0  0      OPC=<label>         
  addl $0x1, %ecx          #  27    0x1440e0  3      OPC=addl_r32_imm8   
  movl %r8d, %r8d          #  28    0x1440e3  3      OPC=movl_r32_r32    
  movl %esi, (%r15,%r8,1)  #  29    0x1440e6  4      OPC=movl_m32_r32    
  addl $0x4, %r8d          #  30    0x1440ea  4      OPC=addl_r32_imm8   
  cmpl %ecx, %edx          #  31    0x1440ee  2      OPC=cmpl_r32_r32    
  ja .L_1440e0             #  32    0x1440f0  2      OPC=ja_label        
  nop                      #  33    0x1440f2  1      OPC=nop             
  nop                      #  34    0x1440f3  1      OPC=nop             
  nop                      #  35    0x1440f4  1      OPC=nop             
  nop                      #  36    0x1440f5  1      OPC=nop             
  nop                      #  37    0x1440f6  1      OPC=nop             
  nop                      #  38    0x1440f7  1      OPC=nop             
  nop                      #  39    0x1440f8  1      OPC=nop             
  nop                      #  40    0x1440f9  1      OPC=nop             
  nop                      #  41    0x1440fa  1      OPC=nop             
  nop                      #  42    0x1440fb  1      OPC=nop             
  nop                      #  43    0x1440fc  1      OPC=nop             
  nop                      #  44    0x1440fd  1      OPC=nop             
  nop                      #  45    0x1440fe  1      OPC=nop             
  nop                      #  46    0x1440ff  1      OPC=nop             
.L_144100:                 #        0x144100  0      OPC=<label>         
  retq
                                                                         
.size wmemset, .-wmemset

