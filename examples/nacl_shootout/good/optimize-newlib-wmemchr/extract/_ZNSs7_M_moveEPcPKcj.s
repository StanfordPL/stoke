  .text
  .globl _ZNSs7_M_moveEPcPKcj
  .type _ZNSs7_M_moveEPcPKcj, @function

#! file-offset 0xeb260
#! rip-offset  0xab260
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_moveEPcPKcj:        #        0xab260  0      OPC=<label>         
  cmpl $0x1, %edx             #  1     0xab260  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi             #  2     0xab263  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0xab265  2      OPC=movl_r32_r32    
  je .L_ab280                 #  4     0xab267  2      OPC=je_label        
  jmpq .memmove               #  5     0xab269  5      OPC=jmpq_label_1    
  nop                         #  6     0xab26e  1      OPC=nop             
  nop                         #  7     0xab26f  1      OPC=nop             
  nop                         #  8     0xab270  1      OPC=nop             
  nop                         #  9     0xab271  1      OPC=nop             
  nop                         #  10    0xab272  1      OPC=nop             
  nop                         #  11    0xab273  1      OPC=nop             
  nop                         #  12    0xab274  1      OPC=nop             
  nop                         #  13    0xab275  1      OPC=nop             
  nop                         #  14    0xab276  1      OPC=nop             
  nop                         #  15    0xab277  1      OPC=nop             
  nop                         #  16    0xab278  1      OPC=nop             
  nop                         #  17    0xab279  1      OPC=nop             
  nop                         #  18    0xab27a  1      OPC=nop             
  nop                         #  19    0xab27b  1      OPC=nop             
  nop                         #  20    0xab27c  1      OPC=nop             
  nop                         #  21    0xab27d  1      OPC=nop             
  nop                         #  22    0xab27e  1      OPC=nop             
  nop                         #  23    0xab27f  1      OPC=nop             
.L_ab280:                     #        0xab280  0      OPC=<label>         
  movl %esi, %esi             #  24    0xab280  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax  #  25    0xab282  5      OPC=movzbl_r32_m8   
  popq %r11                   #  26    0xab287  2      OPC=popq_r64_1      
  movl %edi, %edi             #  27    0xab289  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)     #  28    0xab28b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d     #  29    0xab28f  7      OPC=andl_r32_imm32  
  nop                         #  30    0xab296  1      OPC=nop             
  nop                         #  31    0xab297  1      OPC=nop             
  nop                         #  32    0xab298  1      OPC=nop             
  nop                         #  33    0xab299  1      OPC=nop             
  addq %r15, %r11             #  34    0xab29a  3      OPC=addq_r64_r64    
  jmpq %r11                   #  35    0xab29d  3      OPC=jmpq_r64        
  nop                         #  36    0xab2a0  1      OPC=nop             
  nop                         #  37    0xab2a1  1      OPC=nop             
  nop                         #  38    0xab2a2  1      OPC=nop             
  nop                         #  39    0xab2a3  1      OPC=nop             
  nop                         #  40    0xab2a4  1      OPC=nop             
  nop                         #  41    0xab2a5  1      OPC=nop             
  nop                         #  42    0xab2a6  1      OPC=nop             
                                                                           
.size _ZNSs7_M_moveEPcPKcj, .-_ZNSs7_M_moveEPcPKcj

