  .text
  .globl CollectUnsatisfied
  .type CollectUnsatisfied, @function

#! file-offset 0x67960
#! rip-offset  0x27960
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.CollectUnsatisfied:            #        0x27960  0      OPC=<label>         
  movl %edi, %esi               #  1     0x27960  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x27962  2      OPC=movl_r32_r32    
  cmpb $0xff, 0xc(%r15,%rsi,1)  #  3     0x27964  6      OPC=cmpb_m8_imm8    
  je .L_27980                   #  4     0x2796a  2      OPC=je_label        
  popq %r11                     #  5     0x2796c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  6     0x2796e  7      OPC=andl_r32_imm32  
  nop                           #  7     0x27975  1      OPC=nop             
  nop                           #  8     0x27976  1      OPC=nop             
  nop                           #  9     0x27977  1      OPC=nop             
  nop                           #  10    0x27978  1      OPC=nop             
  addq %r15, %r11               #  11    0x27979  3      OPC=addq_r64_r64    
  jmpq %r11                     #  12    0x2797c  3      OPC=jmpq_r64        
  nop                           #  13    0x2797f  1      OPC=nop             
  nop                           #  14    0x27980  1      OPC=nop             
  nop                           #  15    0x27981  1      OPC=nop             
  nop                           #  16    0x27982  1      OPC=nop             
  nop                           #  17    0x27983  1      OPC=nop             
  nop                           #  18    0x27984  1      OPC=nop             
  nop                           #  19    0x27985  1      OPC=nop             
  nop                           #  20    0x27986  1      OPC=nop             
.L_27980:                       #        0x27987  0      OPC=<label>         
  movl 0x10051832(%rip), %edi   #  21    0x27987  6      OPC=movl_r32_m32    
  jmpq .List_Add                #  22    0x2798d  5      OPC=jmpq_label_1    
  nop                           #  23    0x27992  1      OPC=nop             
  nop                           #  24    0x27993  1      OPC=nop             
  nop                           #  25    0x27994  1      OPC=nop             
  nop                           #  26    0x27995  1      OPC=nop             
  nop                           #  27    0x27996  1      OPC=nop             
  nop                           #  28    0x27997  1      OPC=nop             
  nop                           #  29    0x27998  1      OPC=nop             
  nop                           #  30    0x27999  1      OPC=nop             
  nop                           #  31    0x2799a  1      OPC=nop             
  nop                           #  32    0x2799b  1      OPC=nop             
  nop                           #  33    0x2799c  1      OPC=nop             
  nop                           #  34    0x2799d  1      OPC=nop             
  nop                           #  35    0x2799e  1      OPC=nop             
  nop                           #  36    0x2799f  1      OPC=nop             
  nop                           #  37    0x279a0  1      OPC=nop             
  nop                           #  38    0x279a1  1      OPC=nop             
  nop                           #  39    0x279a2  1      OPC=nop             
  nop                           #  40    0x279a3  1      OPC=nop             
  nop                           #  41    0x279a4  1      OPC=nop             
  nop                           #  42    0x279a5  1      OPC=nop             
  nop                           #  43    0x279a6  1      OPC=nop             
                                                                             
.size CollectUnsatisfied, .-CollectUnsatisfied

