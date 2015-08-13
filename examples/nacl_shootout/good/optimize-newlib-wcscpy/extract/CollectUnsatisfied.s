  .text
  .globl CollectUnsatisfied
  .type CollectUnsatisfied, @function

#! file-offset 0x673e0
#! rip-offset  0x273e0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.CollectUnsatisfied:            #        0x273e0  0      OPC=<label>         
  movl %edi, %esi               #  1     0x273e0  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x273e2  2      OPC=movl_r32_r32    
  cmpb $0xff, 0xc(%r15,%rsi,1)  #  3     0x273e4  6      OPC=cmpb_m8_imm8    
  je .L_27400                   #  4     0x273ea  2      OPC=je_label        
  popq %r11                     #  5     0x273ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  6     0x273ee  7      OPC=andl_r32_imm32  
  nop                           #  7     0x273f5  1      OPC=nop             
  nop                           #  8     0x273f6  1      OPC=nop             
  nop                           #  9     0x273f7  1      OPC=nop             
  nop                           #  10    0x273f8  1      OPC=nop             
  addq %r15, %r11               #  11    0x273f9  3      OPC=addq_r64_r64    
  jmpq %r11                     #  12    0x273fc  3      OPC=jmpq_r64        
  nop                           #  13    0x273ff  1      OPC=nop             
  nop                           #  14    0x27400  1      OPC=nop             
  nop                           #  15    0x27401  1      OPC=nop             
  nop                           #  16    0x27402  1      OPC=nop             
  nop                           #  17    0x27403  1      OPC=nop             
  nop                           #  18    0x27404  1      OPC=nop             
  nop                           #  19    0x27405  1      OPC=nop             
  nop                           #  20    0x27406  1      OPC=nop             
.L_27400:                       #        0x27407  0      OPC=<label>         
  movl 0x10051db2(%rip), %edi   #  21    0x27407  6      OPC=movl_r32_m32    
  jmpq .List_Add                #  22    0x2740d  5      OPC=jmpq_label_1    
  nop                           #  23    0x27412  1      OPC=nop             
  nop                           #  24    0x27413  1      OPC=nop             
  nop                           #  25    0x27414  1      OPC=nop             
  nop                           #  26    0x27415  1      OPC=nop             
  nop                           #  27    0x27416  1      OPC=nop             
  nop                           #  28    0x27417  1      OPC=nop             
  nop                           #  29    0x27418  1      OPC=nop             
  nop                           #  30    0x27419  1      OPC=nop             
  nop                           #  31    0x2741a  1      OPC=nop             
  nop                           #  32    0x2741b  1      OPC=nop             
  nop                           #  33    0x2741c  1      OPC=nop             
  nop                           #  34    0x2741d  1      OPC=nop             
  nop                           #  35    0x2741e  1      OPC=nop             
  nop                           #  36    0x2741f  1      OPC=nop             
  nop                           #  37    0x27420  1      OPC=nop             
  nop                           #  38    0x27421  1      OPC=nop             
  nop                           #  39    0x27422  1      OPC=nop             
  nop                           #  40    0x27423  1      OPC=nop             
  nop                           #  41    0x27424  1      OPC=nop             
  nop                           #  42    0x27425  1      OPC=nop             
  nop                           #  43    0x27426  1      OPC=nop             
                                                                             
.size CollectUnsatisfied, .-CollectUnsatisfied

