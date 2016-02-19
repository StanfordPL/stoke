  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x1840c0
#! rip-offset  0x1440c0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.wmemset:                  #        0x1440c0  0      OPC=<label>         
  nop                      #  1     0x1440c0  1      OPC=nop             
  testl %edx, %edx         #  2     0x1440c1  2      OPC=testl_r32_r32   
  nop                      #  3     0x1440c3  1      OPC=nop             
  movl %edi, %eax          #  4     0x1440c4  2      OPC=movl_r32_r32    
  je .L_144100             #  5     0x1440c6  2      OPC=je_label        
  nop                      #  6     0x1440c8  1      OPC=nop             
  nop                      #  7     0x1440c9  1      OPC=nop             
  xorl %ecx, %ecx          #  8     0x1440ca  2      OPC=xorl_r32_r32    
  movq %rax, %r8           #  9     0x1440cc  3      OPC=movq_r64_r64_1  
.L_1440e0:                 #        0x1440cf  0      OPC=<label>         
  addl $0x1, %ecx          #  10    0x1440cf  3      OPC=addl_r32_imm8   
  andl %r8d, %r8d          #  11    0x1440d2  3      OPC=andl_r32_r32_1  
  movl %esi, (%r15,%r8,1)  #  12    0x1440d5  4      OPC=movl_m32_r32    
  addl $0x4, %r8d          #  13    0x1440d9  7      OPC=addl_r32_imm32  
  cmpl %ecx, %edx          #  14    0x1440e0  2      OPC=cmpl_r32_r32    
  ja .L_1440e0             #  15    0x1440e2  2      OPC=ja_label        
.L_144100:                 #        0x1440e4  0      OPC=<label>         
  nop                      #  16    0x1440e4  1      OPC=nop             
  nop                      #  17    0x1440e5  1      OPC=nop             
  nop                      #  18    0x1440e6  1      OPC=nop             
  nop                      #  19    0x1440e7  1      OPC=nop             
  nop                      #  20    0x1440e8  1      OPC=nop             
  retq                     #  21    0x1440e9  1      OPC=retq            
                                                                         
.size wmemset, .-wmemset
