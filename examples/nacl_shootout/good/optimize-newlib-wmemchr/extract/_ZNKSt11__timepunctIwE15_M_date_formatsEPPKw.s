  .text
  .globl _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw
  .type _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw, @function

#! file-offset 0xf1140
#! rip-offset  0xb1140
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE15_M_date_formatsEPPKw:  #        0xb1140  0      OPC=<label>         
  movl %edi, %edi                               #  1     0xb1140  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0xb1142  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0xb1144  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0xb1146  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0xb114b  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0xb114d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx                   #  7     0xb114f  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0xb1154  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0xb1156  4      OPC=movl_m32_r32    
  nop                                           #  10    0xb115a  1      OPC=nop             
  nop                                           #  11    0xb115b  1      OPC=nop             
  nop                                           #  12    0xb115c  1      OPC=nop             
  nop                                           #  13    0xb115d  1      OPC=nop             
  nop                                           #  14    0xb115e  1      OPC=nop             
  nop                                           #  15    0xb115f  1      OPC=nop             
  movl %eax, %eax                               #  16    0xb1160  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                   #  17    0xb1162  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0xb1167  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0xb1169  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0xb116e  7      OPC=andl_r32_imm32  
  nop                                           #  21    0xb1175  1      OPC=nop             
  nop                                           #  22    0xb1176  1      OPC=nop             
  nop                                           #  23    0xb1177  1      OPC=nop             
  nop                                           #  24    0xb1178  1      OPC=nop             
  addq %r15, %r11                               #  25    0xb1179  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0xb117c  3      OPC=jmpq_r64        
  nop                                           #  27    0xb117f  1      OPC=nop             
  nop                                           #  28    0xb1180  1      OPC=nop             
  nop                                           #  29    0xb1181  1      OPC=nop             
  nop                                           #  30    0xb1182  1      OPC=nop             
  nop                                           #  31    0xb1183  1      OPC=nop             
  nop                                           #  32    0xb1184  1      OPC=nop             
  nop                                           #  33    0xb1185  1      OPC=nop             
  nop                                           #  34    0xb1186  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw, .-_ZNKSt11__timepunctIwE15_M_date_formatsEPPKw

