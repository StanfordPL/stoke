  .text
  .globl _ZNSs7_M_copyEPcPKcj
  .type _ZNSs7_M_copyEPcPKcj, @function

#! file-offset 0xeafa0
#! rip-offset  0xaafa0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_copyEPcPKcj:        #        0xaafa0  0      OPC=<label>         
  cmpl $0x1, %edx             #  1     0xaafa0  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi             #  2     0xaafa3  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0xaafa5  2      OPC=movl_r32_r32    
  je .L_aafc0                 #  4     0xaafa7  2      OPC=je_label        
  jmpq .memcpy                #  5     0xaafa9  5      OPC=jmpq_label_1    
  nop                         #  6     0xaafae  1      OPC=nop             
  nop                         #  7     0xaafaf  1      OPC=nop             
  nop                         #  8     0xaafb0  1      OPC=nop             
  nop                         #  9     0xaafb1  1      OPC=nop             
  nop                         #  10    0xaafb2  1      OPC=nop             
  nop                         #  11    0xaafb3  1      OPC=nop             
  nop                         #  12    0xaafb4  1      OPC=nop             
  nop                         #  13    0xaafb5  1      OPC=nop             
  nop                         #  14    0xaafb6  1      OPC=nop             
  nop                         #  15    0xaafb7  1      OPC=nop             
  nop                         #  16    0xaafb8  1      OPC=nop             
  nop                         #  17    0xaafb9  1      OPC=nop             
  nop                         #  18    0xaafba  1      OPC=nop             
  nop                         #  19    0xaafbb  1      OPC=nop             
  nop                         #  20    0xaafbc  1      OPC=nop             
  nop                         #  21    0xaafbd  1      OPC=nop             
  nop                         #  22    0xaafbe  1      OPC=nop             
  nop                         #  23    0xaafbf  1      OPC=nop             
.L_aafc0:                     #        0xaafc0  0      OPC=<label>         
  movl %esi, %esi             #  24    0xaafc0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax  #  25    0xaafc2  5      OPC=movzbl_r32_m8   
  popq %r11                   #  26    0xaafc7  2      OPC=popq_r64_1      
  movl %edi, %edi             #  27    0xaafc9  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)     #  28    0xaafcb  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d     #  29    0xaafcf  7      OPC=andl_r32_imm32  
  nop                         #  30    0xaafd6  1      OPC=nop             
  nop                         #  31    0xaafd7  1      OPC=nop             
  nop                         #  32    0xaafd8  1      OPC=nop             
  nop                         #  33    0xaafd9  1      OPC=nop             
  addq %r15, %r11             #  34    0xaafda  3      OPC=addq_r64_r64    
  jmpq %r11                   #  35    0xaafdd  3      OPC=jmpq_r64        
  nop                         #  36    0xaafe0  1      OPC=nop             
  nop                         #  37    0xaafe1  1      OPC=nop             
  nop                         #  38    0xaafe2  1      OPC=nop             
  nop                         #  39    0xaafe3  1      OPC=nop             
  nop                         #  40    0xaafe4  1      OPC=nop             
  nop                         #  41    0xaafe5  1      OPC=nop             
  nop                         #  42    0xaafe6  1      OPC=nop             
                                                                           
.size _ZNSs7_M_copyEPcPKcj, .-_ZNSs7_M_copyEPcPKcj

