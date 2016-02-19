  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x1841a0
#! rip-offset  0x1441a0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wmemchr:                   #        0x1441a0  0      OPC=<label>         
  nop                       #  1     0x1441a0  1      OPC=nop             
  nop                       #  2     0x1441a1  1      OPC=nop             
  testl %edx, %edx          #  3     0x1441a2  2      OPC=testl_r32_r32   
  je .L_144200              #  4     0x1441a4  2      OPC=je_label        
  nop                       #  5     0x1441a6  1      OPC=nop             
  nop                       #  6     0x1441a7  1      OPC=nop             
  nop                       #  7     0x1441a8  1      OPC=nop             
  nop                       #  8     0x1441a9  1      OPC=nop             
  nop                       #  9     0x1441aa  1      OPC=nop             
  nop                       #  10    0x1441ab  1      OPC=nop             
  xorl %ecx, %ecx           #  11    0x1441ac  2      OPC=xorl_r32_r32    
  nop                       #  12    0x1441ae  1      OPC=nop             
  nop                       #  13    0x1441af  1      OPC=nop             
  nop                       #  14    0x1441b0  1      OPC=nop             
  movl %edi, %eax           #  15    0x1441b1  2      OPC=movl_r32_r32_1  
  cmpl %esi, (%r15,%rax,1)  #  16    0x1441b3  4      OPC=cmpl_m32_r32    
  jne .L_1441e0             #  17    0x1441b7  2      OPC=jne_label       
  jmpq .L_144240            #  18    0x1441b9  5      OPC=jmpq_label_1    
  nop                       #  19    0x1441be  1      OPC=nop             
  nop                       #  20    0x1441bf  1      OPC=nop             
.L_1441c0:                  #        0x1441c0  0      OPC=<label>         
  addl $0x4, %eax           #  21    0x1441c0  3      OPC=addl_r32_imm8   
  cmpl %esi, (%r15,%rax,1)  #  22    0x1441c3  4      OPC=cmpl_m32_r32    
  je .L_144220              #  23    0x1441c7  2      OPC=je_label        
.L_1441e0:                  #        0x1441c9  0      OPC=<label>         
  addl $0x1, %ecx           #  24    0x1441c9  3      OPC=addl_r32_imm8   
  cmpl %ecx, %edx           #  25    0x1441cc  2      OPC=cmpl_r32_r32    
  ja .L_1441c0              #  26    0x1441ce  2      OPC=ja_label        
.L_144200:                  #        0x1441d0  0      OPC=<label>         
  nopl %eax                 #  27    0x1441d0  3      OPC=nopl_r32        
  nop                       #  28    0x1441d3  1      OPC=nop             
  nop                       #  29    0x1441d4  1      OPC=nop             
  nop                       #  30    0x1441d5  1      OPC=nop             
  nop                       #  31    0x1441d6  1      OPC=nop             
  nop                       #  32    0x1441d7  1      OPC=nop             
  nop                       #  33    0x1441d8  1      OPC=nop             
  xorl %eax, %eax           #  34    0x1441d9  2      OPC=xorl_r32_r32    
  nop                       #  35    0x1441db  1      OPC=nop             
  nop                       #  36    0x1441dc  1      OPC=nop             
  nop                       #  37    0x1441dd  1      OPC=nop             
  nop                       #  38    0x1441de  1      OPC=nop             
  nop                       #  39    0x1441df  1      OPC=nop             
  nop                       #  40    0x1441e0  1      OPC=nop             
.L_144220:                  #        0x1441e1  0      OPC=<label>         
.L_144240:                  #        0x1441e1  0      OPC=<label>         
  nop                       #  41    0x1441e1  1      OPC=nop             
  nop                       #  42    0x1441e2  1      OPC=nop             
  nop                       #  43    0x1441e3  1      OPC=nop             
  nop                       #  44    0x1441e4  1      OPC=nop             
  retq                      #  45    0x1441e5  1      OPC=retq            
                                                                          
.size wmemchr, .-wmemchr
