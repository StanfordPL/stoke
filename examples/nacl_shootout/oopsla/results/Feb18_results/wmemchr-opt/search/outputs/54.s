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
  nop                       #  3     0x1441a2  1      OPC=nop             
  nop                       #  4     0x1441a3  1      OPC=nop             
  andl %edx, %edx           #  5     0x1441a4  2      OPC=andl_r32_r32    
  je .L_144200              #  6     0x1441a6  2      OPC=je_label        
  nop                       #  7     0x1441a8  1      OPC=nop             
  nop                       #  8     0x1441a9  1      OPC=nop             
  movl %edi, %eax           #  9     0x1441aa  2      OPC=movl_r32_r32    
  cmpl %esi, (%r15,%rax,1)  #  10    0x1441ac  4      OPC=cmpl_m32_r32    
  jne .L_1441e0             #  11    0x1441b0  2      OPC=jne_label       
  nop                       #  12    0x1441b2  1      OPC=nop             
  nop                       #  13    0x1441b3  1      OPC=nop             
  nop                       #  14    0x1441b4  1      OPC=nop             
  jmpq .L_144240            #  15    0x1441b5  5      OPC=jmpq_label_1    
  nop                       #  16    0x1441ba  1      OPC=nop             
  nop                       #  17    0x1441bb  1      OPC=nop             
  nop                       #  18    0x1441bc  1      OPC=nop             
  nop                       #  19    0x1441bd  1      OPC=nop             
  nop                       #  20    0x1441be  1      OPC=nop             
  nop                       #  21    0x1441bf  1      OPC=nop             
  nop                       #  22    0x1441c0  1      OPC=nop             
.L_1441c0:                  #        0x1441c1  0      OPC=<label>         
  addl $0x4, %eax           #  23    0x1441c1  3      OPC=addl_r32_imm8   
  cmpl %esi, (%r15,%rax,1)  #  24    0x1441c4  4      OPC=cmpl_m32_r32    
  je .L_144220              #  25    0x1441c8  2      OPC=je_label        
.L_1441e0:                  #        0x1441ca  0      OPC=<label>         
  subl $0x1, %edx           #  26    0x1441ca  6      OPC=subl_r32_imm32  
  ja .L_1441c0              #  27    0x1441d0  2      OPC=ja_label        
.L_144200:                  #        0x1441d2  0      OPC=<label>         
  nop                       #  28    0x1441d2  1      OPC=nop             
  nop                       #  29    0x1441d3  1      OPC=nop             
  nop                       #  30    0x1441d4  1      OPC=nop             
  nop                       #  31    0x1441d5  1      OPC=nop             
  nop                       #  32    0x1441d6  1      OPC=nop             
  nop                       #  33    0x1441d7  1      OPC=nop             
  nop                       #  34    0x1441d8  1      OPC=nop             
  nop                       #  35    0x1441d9  1      OPC=nop             
  nop                       #  36    0x1441da  1      OPC=nop             
  nop                       #  37    0x1441db  1      OPC=nop             
  nop                       #  38    0x1441dc  1      OPC=nop             
  xorq %rax, %rax           #  39    0x1441dd  3      OPC=xorq_r64_r64    
.L_144220:                  #        0x1441e0  0      OPC=<label>         
.L_144240:                  #        0x1441e0  0      OPC=<label>         
  nop                       #  40    0x1441e0  1      OPC=nop             
  retq                      #  41    0x1441e1  1      OPC=retq            
                                                                          
.size wmemchr, .-wmemchr
