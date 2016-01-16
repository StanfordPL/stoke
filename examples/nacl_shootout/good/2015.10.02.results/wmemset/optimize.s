  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x1840c0
#! rip-offset  0x1440c0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.wmemset:                  #        0x1440c0  0      OPC=<label>         
  movl %edi, %eax          #  1     0x1440c0  2      OPC=movl_r32_r32_1  
  nop                      #  2     0x1440c2  1      OPC=nop             
  nop                      #  3     0x1440c3  1      OPC=nop             
  nop                      #  4     0x1440c4  1      OPC=nop             
  nop                      #  5     0x1440c5  1      OPC=nop             
  nop                      #  6     0x1440c6  1      OPC=nop             
  nop                      #  7     0x1440c7  1      OPC=nop             
  nop                      #  8     0x1440c8  1      OPC=nop             
  nop                      #  9     0x1440c9  1      OPC=nop             
  addl $0x0, %edx          #  10    0x1440ca  6      OPC=addl_r32_imm32  
  movl %edi, %r8d          #  11    0x1440d0  3      OPC=movl_r32_r32_1  
  nop                      #  12    0x1440d3  1      OPC=nop             
  nop                      #  13    0x1440d4  1      OPC=nop             
  nop                      #  14    0x1440d5  1      OPC=nop             
  nop                      #  15    0x1440d6  1      OPC=nop             
  nop                      #  16    0x1440d7  1      OPC=nop             
  nop                      #  17    0x1440d8  1      OPC=nop             
  nop                      #  18    0x1440d9  1      OPC=nop             
  nop                      #  19    0x1440da  1      OPC=nop             
  nop                      #  20    0x1440db  1      OPC=nop             
  nop                      #  21    0x1440dc  1      OPC=nop             
  nop                      #  22    0x1440dd  1      OPC=nop             
  je .L_144100             #  23    0x1440de  2      OPC=je_label        
.L_1440e0:                 #        0x1440e0  0      OPC=<label>         
  xorl $0x0, %r8d          #  24    0x1440e0  4      OPC=xorl_r32_imm8   
  movl %esi, (%r15,%r8,1)  #  25    0x1440e4  4      OPC=movl_m32_r32    
  addq $0x4, %r8           #  26    0x1440e8  7      OPC=addq_r64_imm32  
  decq %rdx                #  27    0x1440ef  3      OPC=decq_r64        
  ja .L_1440e0             #  28    0x1440f2  2      OPC=ja_label        
  nop                      #  29    0x1440f4  1      OPC=nop             
  nop                      #  30    0x1440f5  1      OPC=nop             
  nop                      #  31    0x1440f6  1      OPC=nop             
  nop                      #  32    0x1440f7  1      OPC=nop             
  nop                      #  33    0x1440f8  1      OPC=nop             
  nop                      #  34    0x1440f9  1      OPC=nop             
  nop                      #  35    0x1440fa  1      OPC=nop             
  nop                      #  36    0x1440fb  1      OPC=nop             
  nop                      #  37    0x1440fc  1      OPC=nop             
  nop                      #  38    0x1440fd  1      OPC=nop             
  nop                      #  39    0x1440fe  1      OPC=nop             
  nop                      #  40    0x1440ff  1      OPC=nop             
.L_144100:                 #        0x144100  0      OPC=<label>         
  retq
                                                                         
.size wmemset, .-wmemset
