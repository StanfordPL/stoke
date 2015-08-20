  .text
  .globl CollectUnsatisfied
  .type CollectUnsatisfied, @function

#! file-offset 0x67400
#! rip-offset  0x27400
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.CollectUnsatisfied:            #        0x27400  0      OPC=<label>         
  movl %edi, %esi               #  1     0x27400  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x27402  2      OPC=movl_r32_r32    
  cmpb $0xff, 0xc(%r15,%rsi,1)  #  3     0x27404  6      OPC=cmpb_m8_imm8    
  je .L_27420                   #  4     0x2740a  2      OPC=je_label        
  popq %r11                     #  5     0x2740c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  6     0x2740e  7      OPC=andl_r32_imm32  
  nop                           #  7     0x27415  1      OPC=nop             
  nop                           #  8     0x27416  1      OPC=nop             
  nop                           #  9     0x27417  1      OPC=nop             
  nop                           #  10    0x27418  1      OPC=nop             
  addq %r15, %r11               #  11    0x27419  3      OPC=addq_r64_r64    
  jmpq %r11                     #  12    0x2741c  3      OPC=jmpq_r64        
  nop                           #  13    0x2741f  1      OPC=nop             
  nop                           #  14    0x27420  1      OPC=nop             
  nop                           #  15    0x27421  1      OPC=nop             
  nop                           #  16    0x27422  1      OPC=nop             
  nop                           #  17    0x27423  1      OPC=nop             
  nop                           #  18    0x27424  1      OPC=nop             
  nop                           #  19    0x27425  1      OPC=nop             
  nop                           #  20    0x27426  1      OPC=nop             
.L_27420:                       #        0x27427  0      OPC=<label>         
  movl 0x10051d92(%rip), %edi   #  21    0x27427  6      OPC=movl_r32_m32    
  jmpq .List_Add                #  22    0x2742d  5      OPC=jmpq_label_1    
  nop                           #  23    0x27432  1      OPC=nop             
  nop                           #  24    0x27433  1      OPC=nop             
  nop                           #  25    0x27434  1      OPC=nop             
  nop                           #  26    0x27435  1      OPC=nop             
  nop                           #  27    0x27436  1      OPC=nop             
  nop                           #  28    0x27437  1      OPC=nop             
  nop                           #  29    0x27438  1      OPC=nop             
  nop                           #  30    0x27439  1      OPC=nop             
  nop                           #  31    0x2743a  1      OPC=nop             
  nop                           #  32    0x2743b  1      OPC=nop             
  nop                           #  33    0x2743c  1      OPC=nop             
  nop                           #  34    0x2743d  1      OPC=nop             
  nop                           #  35    0x2743e  1      OPC=nop             
  nop                           #  36    0x2743f  1      OPC=nop             
  nop                           #  37    0x27440  1      OPC=nop             
  nop                           #  38    0x27441  1      OPC=nop             
  nop                           #  39    0x27442  1      OPC=nop             
  nop                           #  40    0x27443  1      OPC=nop             
  nop                           #  41    0x27444  1      OPC=nop             
  nop                           #  42    0x27445  1      OPC=nop             
  nop                           #  43    0x27446  1      OPC=nop             
                                                                             
.size CollectUnsatisfied, .-CollectUnsatisfied

