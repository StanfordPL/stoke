  .text
  .globl _ZNSs7_M_copyEPcPKcj
  .type _ZNSs7_M_copyEPcPKcj, @function

#! file-offset 0xeb2a0
#! rip-offset  0xab2a0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_copyEPcPKcj:        #        0xab2a0  0      OPC=<label>         
  cmpl $0x1, %edx             #  1     0xab2a0  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi             #  2     0xab2a3  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0xab2a5  2      OPC=movl_r32_r32    
  je .L_ab2c0                 #  4     0xab2a7  2      OPC=je_label        
  jmpq .memcpy                #  5     0xab2a9  5      OPC=jmpq_label_1    
  nop                         #  6     0xab2ae  1      OPC=nop             
  nop                         #  7     0xab2af  1      OPC=nop             
  nop                         #  8     0xab2b0  1      OPC=nop             
  nop                         #  9     0xab2b1  1      OPC=nop             
  nop                         #  10    0xab2b2  1      OPC=nop             
  nop                         #  11    0xab2b3  1      OPC=nop             
  nop                         #  12    0xab2b4  1      OPC=nop             
  nop                         #  13    0xab2b5  1      OPC=nop             
  nop                         #  14    0xab2b6  1      OPC=nop             
  nop                         #  15    0xab2b7  1      OPC=nop             
  nop                         #  16    0xab2b8  1      OPC=nop             
  nop                         #  17    0xab2b9  1      OPC=nop             
  nop                         #  18    0xab2ba  1      OPC=nop             
  nop                         #  19    0xab2bb  1      OPC=nop             
  nop                         #  20    0xab2bc  1      OPC=nop             
  nop                         #  21    0xab2bd  1      OPC=nop             
  nop                         #  22    0xab2be  1      OPC=nop             
  nop                         #  23    0xab2bf  1      OPC=nop             
.L_ab2c0:                     #        0xab2c0  0      OPC=<label>         
  movl %esi, %esi             #  24    0xab2c0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax  #  25    0xab2c2  5      OPC=movzbl_r32_m8   
  popq %r11                   #  26    0xab2c7  2      OPC=popq_r64_1      
  movl %edi, %edi             #  27    0xab2c9  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)     #  28    0xab2cb  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d     #  29    0xab2cf  7      OPC=andl_r32_imm32  
  nop                         #  30    0xab2d6  1      OPC=nop             
  nop                         #  31    0xab2d7  1      OPC=nop             
  nop                         #  32    0xab2d8  1      OPC=nop             
  nop                         #  33    0xab2d9  1      OPC=nop             
  addq %r15, %r11             #  34    0xab2da  3      OPC=addq_r64_r64    
  jmpq %r11                   #  35    0xab2dd  3      OPC=jmpq_r64        
  nop                         #  36    0xab2e0  1      OPC=nop             
  nop                         #  37    0xab2e1  1      OPC=nop             
  nop                         #  38    0xab2e2  1      OPC=nop             
  nop                         #  39    0xab2e3  1      OPC=nop             
  nop                         #  40    0xab2e4  1      OPC=nop             
  nop                         #  41    0xab2e5  1      OPC=nop             
  nop                         #  42    0xab2e6  1      OPC=nop             
                                                                           
.size _ZNSs7_M_copyEPcPKcj, .-_ZNSs7_M_copyEPcPKcj

