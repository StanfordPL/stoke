  .text
  .globl _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc
  .type _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc, @function

#! file-offset 0xb7ea0
#! rip-offset  0x77ea0
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE15_M_date_formatsEPPKc:  #        0x77ea0  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x77ea0  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0x77ea2  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0x77ea4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0x77ea6  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0x77eab  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0x77ead  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx                   #  7     0x77eaf  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0x77eb4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0x77eb6  4      OPC=movl_m32_r32    
  nop                                           #  10    0x77eba  1      OPC=nop             
  nop                                           #  11    0x77ebb  1      OPC=nop             
  nop                                           #  12    0x77ebc  1      OPC=nop             
  nop                                           #  13    0x77ebd  1      OPC=nop             
  nop                                           #  14    0x77ebe  1      OPC=nop             
  nop                                           #  15    0x77ebf  1      OPC=nop             
  movl %eax, %eax                               #  16    0x77ec0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                   #  17    0x77ec2  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0x77ec7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0x77ec9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0x77ece  7      OPC=andl_r32_imm32  
  nop                                           #  21    0x77ed5  1      OPC=nop             
  nop                                           #  22    0x77ed6  1      OPC=nop             
  nop                                           #  23    0x77ed7  1      OPC=nop             
  nop                                           #  24    0x77ed8  1      OPC=nop             
  addq %r15, %r11                               #  25    0x77ed9  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0x77edc  3      OPC=jmpq_r64        
  nop                                           #  27    0x77edf  1      OPC=nop             
  nop                                           #  28    0x77ee0  1      OPC=nop             
  nop                                           #  29    0x77ee1  1      OPC=nop             
  nop                                           #  30    0x77ee2  1      OPC=nop             
  nop                                           #  31    0x77ee3  1      OPC=nop             
  nop                                           #  32    0x77ee4  1      OPC=nop             
  nop                                           #  33    0x77ee5  1      OPC=nop             
  nop                                           #  34    0x77ee6  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc, .-_ZNKSt11__timepunctIcE15_M_date_formatsEPPKc

