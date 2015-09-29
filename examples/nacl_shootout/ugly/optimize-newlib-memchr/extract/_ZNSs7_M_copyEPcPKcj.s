  .text
  .globl _ZNSs7_M_copyEPcPKcj
  .type _ZNSs7_M_copyEPcPKcj, @function

#! file-offset 0xeb9c0
#! rip-offset  0xab9c0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_copyEPcPKcj:        #        0xab9c0  0      OPC=<label>         
  cmpl $0x1, %edx             #  1     0xab9c0  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi             #  2     0xab9c3  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0xab9c5  2      OPC=movl_r32_r32    
  je .L_ab9e0                 #  4     0xab9c7  2      OPC=je_label        
  jmpq .memcpy                #  5     0xab9c9  5      OPC=jmpq_label_1    
  nop                         #  6     0xab9ce  1      OPC=nop             
  nop                         #  7     0xab9cf  1      OPC=nop             
  nop                         #  8     0xab9d0  1      OPC=nop             
  nop                         #  9     0xab9d1  1      OPC=nop             
  nop                         #  10    0xab9d2  1      OPC=nop             
  nop                         #  11    0xab9d3  1      OPC=nop             
  nop                         #  12    0xab9d4  1      OPC=nop             
  nop                         #  13    0xab9d5  1      OPC=nop             
  nop                         #  14    0xab9d6  1      OPC=nop             
  nop                         #  15    0xab9d7  1      OPC=nop             
  nop                         #  16    0xab9d8  1      OPC=nop             
  nop                         #  17    0xab9d9  1      OPC=nop             
  nop                         #  18    0xab9da  1      OPC=nop             
  nop                         #  19    0xab9db  1      OPC=nop             
  nop                         #  20    0xab9dc  1      OPC=nop             
  nop                         #  21    0xab9dd  1      OPC=nop             
  nop                         #  22    0xab9de  1      OPC=nop             
  nop                         #  23    0xab9df  1      OPC=nop             
.L_ab9e0:                     #        0xab9e0  0      OPC=<label>         
  movl %esi, %esi             #  24    0xab9e0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax  #  25    0xab9e2  5      OPC=movzbl_r32_m8   
  popq %r11                   #  26    0xab9e7  2      OPC=popq_r64_1      
  movl %edi, %edi             #  27    0xab9e9  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)     #  28    0xab9eb  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d     #  29    0xab9ef  7      OPC=andl_r32_imm32  
  nop                         #  30    0xab9f6  1      OPC=nop             
  nop                         #  31    0xab9f7  1      OPC=nop             
  nop                         #  32    0xab9f8  1      OPC=nop             
  nop                         #  33    0xab9f9  1      OPC=nop             
  addq %r15, %r11             #  34    0xab9fa  3      OPC=addq_r64_r64    
  jmpq %r11                   #  35    0xab9fd  3      OPC=jmpq_r64        
  nop                         #  36    0xaba00  1      OPC=nop             
  nop                         #  37    0xaba01  1      OPC=nop             
  nop                         #  38    0xaba02  1      OPC=nop             
  nop                         #  39    0xaba03  1      OPC=nop             
  nop                         #  40    0xaba04  1      OPC=nop             
  nop                         #  41    0xaba05  1      OPC=nop             
  nop                         #  42    0xaba06  1      OPC=nop             
                                                                           
.size _ZNSs7_M_copyEPcPKcj, .-_ZNSs7_M_copyEPcPKcj

