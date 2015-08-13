  .text
  .globl _ZNKSt11__timepunctIwE8_M_am_pmEPPKw
  .type _ZNKSt11__timepunctIwE8_M_am_pmEPPKw, @function

#! file-offset 0xf0f20
#! rip-offset  0xb0f20
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE8_M_am_pmEPPKw:  #        0xb0f20  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xb0f20  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0xb0f22  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0xb0f24  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  4     0xb0f26  5      OPC=movl_r32_m32    
  popq %r11                             #  5     0xb0f2b  2      OPC=popq_r64_1      
  movl %eax, %eax                       #  6     0xb0f2d  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %edx          #  7     0xb0f2f  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  8     0xb0f34  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)              #  9     0xb0f36  4      OPC=movl_m32_r32    
  nop                                   #  10    0xb0f3a  1      OPC=nop             
  nop                                   #  11    0xb0f3b  1      OPC=nop             
  nop                                   #  12    0xb0f3c  1      OPC=nop             
  nop                                   #  13    0xb0f3d  1      OPC=nop             
  nop                                   #  14    0xb0f3e  1      OPC=nop             
  nop                                   #  15    0xb0f3f  1      OPC=nop             
  movl %eax, %eax                       #  16    0xb0f40  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax          #  17    0xb0f42  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  18    0xb0f47  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)           #  19    0xb0f49  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d               #  20    0xb0f4e  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xb0f55  1      OPC=nop             
  nop                                   #  22    0xb0f56  1      OPC=nop             
  nop                                   #  23    0xb0f57  1      OPC=nop             
  nop                                   #  24    0xb0f58  1      OPC=nop             
  addq %r15, %r11                       #  25    0xb0f59  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xb0f5c  3      OPC=jmpq_r64        
  nop                                   #  27    0xb0f5f  1      OPC=nop             
  nop                                   #  28    0xb0f60  1      OPC=nop             
  nop                                   #  29    0xb0f61  1      OPC=nop             
  nop                                   #  30    0xb0f62  1      OPC=nop             
  nop                                   #  31    0xb0f63  1      OPC=nop             
  nop                                   #  32    0xb0f64  1      OPC=nop             
  nop                                   #  33    0xb0f65  1      OPC=nop             
  nop                                   #  34    0xb0f66  1      OPC=nop             
                                                                                     
.size _ZNKSt11__timepunctIwE8_M_am_pmEPPKw, .-_ZNKSt11__timepunctIwE8_M_am_pmEPPKw

