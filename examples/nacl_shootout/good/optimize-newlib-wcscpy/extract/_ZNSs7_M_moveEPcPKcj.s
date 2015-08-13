  .text
  .globl _ZNSs7_M_moveEPcPKcj
  .type _ZNSs7_M_moveEPcPKcj, @function

#! file-offset 0xeaf60
#! rip-offset  0xaaf60
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_moveEPcPKcj:        #        0xaaf60  0      OPC=<label>         
  cmpl $0x1, %edx             #  1     0xaaf60  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi             #  2     0xaaf63  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0xaaf65  2      OPC=movl_r32_r32    
  je .L_aaf80                 #  4     0xaaf67  2      OPC=je_label        
  jmpq .memmove               #  5     0xaaf69  5      OPC=jmpq_label_1    
  nop                         #  6     0xaaf6e  1      OPC=nop             
  nop                         #  7     0xaaf6f  1      OPC=nop             
  nop                         #  8     0xaaf70  1      OPC=nop             
  nop                         #  9     0xaaf71  1      OPC=nop             
  nop                         #  10    0xaaf72  1      OPC=nop             
  nop                         #  11    0xaaf73  1      OPC=nop             
  nop                         #  12    0xaaf74  1      OPC=nop             
  nop                         #  13    0xaaf75  1      OPC=nop             
  nop                         #  14    0xaaf76  1      OPC=nop             
  nop                         #  15    0xaaf77  1      OPC=nop             
  nop                         #  16    0xaaf78  1      OPC=nop             
  nop                         #  17    0xaaf79  1      OPC=nop             
  nop                         #  18    0xaaf7a  1      OPC=nop             
  nop                         #  19    0xaaf7b  1      OPC=nop             
  nop                         #  20    0xaaf7c  1      OPC=nop             
  nop                         #  21    0xaaf7d  1      OPC=nop             
  nop                         #  22    0xaaf7e  1      OPC=nop             
  nop                         #  23    0xaaf7f  1      OPC=nop             
.L_aaf80:                     #        0xaaf80  0      OPC=<label>         
  movl %esi, %esi             #  24    0xaaf80  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax  #  25    0xaaf82  5      OPC=movzbl_r32_m8   
  popq %r11                   #  26    0xaaf87  2      OPC=popq_r64_1      
  movl %edi, %edi             #  27    0xaaf89  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)     #  28    0xaaf8b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d     #  29    0xaaf8f  7      OPC=andl_r32_imm32  
  nop                         #  30    0xaaf96  1      OPC=nop             
  nop                         #  31    0xaaf97  1      OPC=nop             
  nop                         #  32    0xaaf98  1      OPC=nop             
  nop                         #  33    0xaaf99  1      OPC=nop             
  addq %r15, %r11             #  34    0xaaf9a  3      OPC=addq_r64_r64    
  jmpq %r11                   #  35    0xaaf9d  3      OPC=jmpq_r64        
  nop                         #  36    0xaafa0  1      OPC=nop             
  nop                         #  37    0xaafa1  1      OPC=nop             
  nop                         #  38    0xaafa2  1      OPC=nop             
  nop                         #  39    0xaafa3  1      OPC=nop             
  nop                         #  40    0xaafa4  1      OPC=nop             
  nop                         #  41    0xaafa5  1      OPC=nop             
  nop                         #  42    0xaafa6  1      OPC=nop             
                                                                           
.size _ZNSs7_M_moveEPcPKcj, .-_ZNSs7_M_moveEPcPKcj

