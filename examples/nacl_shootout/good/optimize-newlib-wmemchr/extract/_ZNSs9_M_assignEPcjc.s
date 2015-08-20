  .text
  .globl _ZNSs9_M_assignEPcjc
  .type _ZNSs9_M_assignEPcjc, @function

#! file-offset 0xeb220
#! rip-offset  0xab220
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNSs9_M_assignEPcjc:     #        0xab220  0      OPC=<label>         
  cmpl $0x1, %esi          #  1     0xab220  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi          #  2     0xab223  2      OPC=movl_r32_r32    
  je .L_ab240              #  3     0xab225  2      OPC=je_label        
  movsbl %dl, %eax         #  4     0xab227  3      OPC=movsbl_r32_r8   
  movl %esi, %edx          #  5     0xab22a  2      OPC=movl_r32_r32    
  movl %eax, %esi          #  6     0xab22c  2      OPC=movl_r32_r32    
  jmpq .memset             #  7     0xab22e  5      OPC=jmpq_label_1    
  nop                      #  8     0xab233  1      OPC=nop             
  nop                      #  9     0xab234  1      OPC=nop             
  nop                      #  10    0xab235  1      OPC=nop             
  nop                      #  11    0xab236  1      OPC=nop             
  nop                      #  12    0xab237  1      OPC=nop             
  nop                      #  13    0xab238  1      OPC=nop             
  nop                      #  14    0xab239  1      OPC=nop             
  nop                      #  15    0xab23a  1      OPC=nop             
  nop                      #  16    0xab23b  1      OPC=nop             
  nop                      #  17    0xab23c  1      OPC=nop             
  nop                      #  18    0xab23d  1      OPC=nop             
  nop                      #  19    0xab23e  1      OPC=nop             
  nop                      #  20    0xab23f  1      OPC=nop             
.L_ab240:                  #        0xab240  0      OPC=<label>         
  popq %r11                #  21    0xab240  2      OPC=popq_r64_1      
  movl %edi, %edi          #  22    0xab242  2      OPC=movl_r32_r32    
  movb %dl, (%r15,%rdi,1)  #  23    0xab244  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d  #  24    0xab248  7      OPC=andl_r32_imm32  
  nop                      #  25    0xab24f  1      OPC=nop             
  nop                      #  26    0xab250  1      OPC=nop             
  nop                      #  27    0xab251  1      OPC=nop             
  nop                      #  28    0xab252  1      OPC=nop             
  addq %r15, %r11          #  29    0xab253  3      OPC=addq_r64_r64    
  jmpq %r11                #  30    0xab256  3      OPC=jmpq_r64        
  nop                      #  31    0xab259  1      OPC=nop             
  nop                      #  32    0xab25a  1      OPC=nop             
  nop                      #  33    0xab25b  1      OPC=nop             
  nop                      #  34    0xab25c  1      OPC=nop             
  nop                      #  35    0xab25d  1      OPC=nop             
  nop                      #  36    0xab25e  1      OPC=nop             
  nop                      #  37    0xab25f  1      OPC=nop             
  nop                      #  38    0xab260  1      OPC=nop             
  nop                      #  39    0xab261  1      OPC=nop             
  nop                      #  40    0xab262  1      OPC=nop             
  nop                      #  41    0xab263  1      OPC=nop             
  nop                      #  42    0xab264  1      OPC=nop             
  nop                      #  43    0xab265  1      OPC=nop             
  nop                      #  44    0xab266  1      OPC=nop             
                                                                        
.size _ZNSs9_M_assignEPcjc, .-_ZNSs9_M_assignEPcjc

