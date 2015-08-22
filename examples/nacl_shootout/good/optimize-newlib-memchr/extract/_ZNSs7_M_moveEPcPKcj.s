  .text
  .globl _ZNSs7_M_moveEPcPKcj
  .type _ZNSs7_M_moveEPcPKcj, @function

#! file-offset 0xeb980
#! rip-offset  0xab980
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_moveEPcPKcj:        #        0xab980  0      OPC=<label>         
  cmpl $0x1, %edx             #  1     0xab980  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi             #  2     0xab983  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0xab985  2      OPC=movl_r32_r32    
  je .L_ab9a0                 #  4     0xab987  2      OPC=je_label        
  jmpq .memmove               #  5     0xab989  5      OPC=jmpq_label_1    
  nop                         #  6     0xab98e  1      OPC=nop             
  nop                         #  7     0xab98f  1      OPC=nop             
  nop                         #  8     0xab990  1      OPC=nop             
  nop                         #  9     0xab991  1      OPC=nop             
  nop                         #  10    0xab992  1      OPC=nop             
  nop                         #  11    0xab993  1      OPC=nop             
  nop                         #  12    0xab994  1      OPC=nop             
  nop                         #  13    0xab995  1      OPC=nop             
  nop                         #  14    0xab996  1      OPC=nop             
  nop                         #  15    0xab997  1      OPC=nop             
  nop                         #  16    0xab998  1      OPC=nop             
  nop                         #  17    0xab999  1      OPC=nop             
  nop                         #  18    0xab99a  1      OPC=nop             
  nop                         #  19    0xab99b  1      OPC=nop             
  nop                         #  20    0xab99c  1      OPC=nop             
  nop                         #  21    0xab99d  1      OPC=nop             
  nop                         #  22    0xab99e  1      OPC=nop             
  nop                         #  23    0xab99f  1      OPC=nop             
.L_ab9a0:                     #        0xab9a0  0      OPC=<label>         
  movl %esi, %esi             #  24    0xab9a0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax  #  25    0xab9a2  5      OPC=movzbl_r32_m8   
  popq %r11                   #  26    0xab9a7  2      OPC=popq_r64_1      
  movl %edi, %edi             #  27    0xab9a9  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)     #  28    0xab9ab  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d     #  29    0xab9af  7      OPC=andl_r32_imm32  
  nop                         #  30    0xab9b6  1      OPC=nop             
  nop                         #  31    0xab9b7  1      OPC=nop             
  nop                         #  32    0xab9b8  1      OPC=nop             
  nop                         #  33    0xab9b9  1      OPC=nop             
  addq %r15, %r11             #  34    0xab9ba  3      OPC=addq_r64_r64    
  jmpq %r11                   #  35    0xab9bd  3      OPC=jmpq_r64        
  nop                         #  36    0xab9c0  1      OPC=nop             
  nop                         #  37    0xab9c1  1      OPC=nop             
  nop                         #  38    0xab9c2  1      OPC=nop             
  nop                         #  39    0xab9c3  1      OPC=nop             
  nop                         #  40    0xab9c4  1      OPC=nop             
  nop                         #  41    0xab9c5  1      OPC=nop             
  nop                         #  42    0xab9c6  1      OPC=nop             
                                                                           
.size _ZNSs7_M_moveEPcPKcj, .-_ZNSs7_M_moveEPcPKcj

