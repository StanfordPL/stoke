  .text
  .globl _ZNSt6locale13_S_initializeEv
  .type _ZNSt6locale13_S_initializeEv, @function

#! file-offset 0xa3220
#! rip-offset  0x63220
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNSt6locale13_S_initializeEv:             #        0x63220  0      OPC=<label>         
  movl 0x1000f3fe(%rip), %eax               #  1     0x63220  6      OPC=movl_r32_m32    
  testl %eax, %eax                          #  2     0x63226  2      OPC=testl_r32_r32   
  je .L_63240                               #  3     0x63228  2      OPC=je_label        
  popq %r11                                 #  4     0x6322a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  5     0x6322c  7      OPC=andl_r32_imm32  
  nop                                       #  6     0x63233  1      OPC=nop             
  nop                                       #  7     0x63234  1      OPC=nop             
  nop                                       #  8     0x63235  1      OPC=nop             
  nop                                       #  9     0x63236  1      OPC=nop             
  addq %r15, %r11                           #  10    0x63237  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  11    0x6323a  3      OPC=jmpq_r64        
  nop                                       #  12    0x6323d  1      OPC=nop             
  nop                                       #  13    0x6323e  1      OPC=nop             
  nop                                       #  14    0x6323f  1      OPC=nop             
  nop                                       #  15    0x63240  1      OPC=nop             
  nop                                       #  16    0x63241  1      OPC=nop             
  nop                                       #  17    0x63242  1      OPC=nop             
  nop                                       #  18    0x63243  1      OPC=nop             
  nop                                       #  19    0x63244  1      OPC=nop             
  nop                                       #  20    0x63245  1      OPC=nop             
  nop                                       #  21    0x63246  1      OPC=nop             
.L_63240:                                   #        0x63247  0      OPC=<label>         
  jmpq ._ZNSt6locale18_S_initialize_onceEv  #  22    0x63247  5      OPC=jmpq_label_1    
  nop                                       #  23    0x6324c  1      OPC=nop             
  nop                                       #  24    0x6324d  1      OPC=nop             
  nop                                       #  25    0x6324e  1      OPC=nop             
  nop                                       #  26    0x6324f  1      OPC=nop             
  nop                                       #  27    0x63250  1      OPC=nop             
  nop                                       #  28    0x63251  1      OPC=nop             
  nop                                       #  29    0x63252  1      OPC=nop             
  nop                                       #  30    0x63253  1      OPC=nop             
  nop                                       #  31    0x63254  1      OPC=nop             
  nop                                       #  32    0x63255  1      OPC=nop             
  nop                                       #  33    0x63256  1      OPC=nop             
  nop                                       #  34    0x63257  1      OPC=nop             
  nop                                       #  35    0x63258  1      OPC=nop             
  nop                                       #  36    0x63259  1      OPC=nop             
  nop                                       #  37    0x6325a  1      OPC=nop             
  nop                                       #  38    0x6325b  1      OPC=nop             
  nop                                       #  39    0x6325c  1      OPC=nop             
  nop                                       #  40    0x6325d  1      OPC=nop             
  nop                                       #  41    0x6325e  1      OPC=nop             
  nop                                       #  42    0x6325f  1      OPC=nop             
  nop                                       #  43    0x63260  1      OPC=nop             
  nop                                       #  44    0x63261  1      OPC=nop             
  nop                                       #  45    0x63262  1      OPC=nop             
  nop                                       #  46    0x63263  1      OPC=nop             
  nop                                       #  47    0x63264  1      OPC=nop             
  nop                                       #  48    0x63265  1      OPC=nop             
  nop                                       #  49    0x63266  1      OPC=nop             
                                                                                         
.size _ZNSt6locale13_S_initializeEv, .-_ZNSt6locale13_S_initializeEv

