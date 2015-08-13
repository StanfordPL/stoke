  .text
  .globl _ZNKSt14error_category10equivalentERKSt10error_codei
  .type _ZNKSt14error_category10equivalentERKSt10error_codei, @function

#! file-offset 0x1299c0
#! rip-offset  0xe99c0
#! capacity    64 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt14error_category10equivalentERKSt10error_codei:  #        0xe99c0  0      OPC=<label>         
  movl %esi, %esi                                       #  1     0xe99c0  2      OPC=movl_r32_r32    
  xorl %eax, %eax                                       #  2     0xe99c2  2      OPC=xorl_r32_r32    
  movl %esi, %esi                                       #  3     0xe99c4  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %edi                           #  4     0xe99c6  5      OPC=cmpl_r32_m32    
  je .L_e99e0                                           #  5     0xe99cb  2      OPC=je_label        
  popq %r11                                             #  6     0xe99cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  7     0xe99cf  7      OPC=andl_r32_imm32  
  nop                                                   #  8     0xe99d6  1      OPC=nop             
  nop                                                   #  9     0xe99d7  1      OPC=nop             
  nop                                                   #  10    0xe99d8  1      OPC=nop             
  nop                                                   #  11    0xe99d9  1      OPC=nop             
  addq %r15, %r11                                       #  12    0xe99da  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  13    0xe99dd  3      OPC=jmpq_r64        
  nop                                                   #  14    0xe99e0  1      OPC=nop             
  nop                                                   #  15    0xe99e1  1      OPC=nop             
  nop                                                   #  16    0xe99e2  1      OPC=nop             
  nop                                                   #  17    0xe99e3  1      OPC=nop             
  nop                                                   #  18    0xe99e4  1      OPC=nop             
  nop                                                   #  19    0xe99e5  1      OPC=nop             
  nop                                                   #  20    0xe99e6  1      OPC=nop             
.L_e99e0:                                               #        0xe99e7  0      OPC=<label>         
  movl %esi, %esi                                       #  21    0xe99e7  2      OPC=movl_r32_r32    
  cmpl (%r15,%rsi,1), %edx                              #  22    0xe99e9  4      OPC=cmpl_r32_m32    
  sete %al                                              #  23    0xe99ed  3      OPC=sete_r8         
  popq %r11                                             #  24    0xe99f0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  25    0xe99f2  7      OPC=andl_r32_imm32  
  nop                                                   #  26    0xe99f9  1      OPC=nop             
  nop                                                   #  27    0xe99fa  1      OPC=nop             
  nop                                                   #  28    0xe99fb  1      OPC=nop             
  nop                                                   #  29    0xe99fc  1      OPC=nop             
  addq %r15, %r11                                       #  30    0xe99fd  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  31    0xe9a00  3      OPC=jmpq_r64        
  nop                                                   #  32    0xe9a03  1      OPC=nop             
  nop                                                   #  33    0xe9a04  1      OPC=nop             
  nop                                                   #  34    0xe9a05  1      OPC=nop             
  nop                                                   #  35    0xe9a06  1      OPC=nop             
  nop                                                   #  36    0xe9a07  1      OPC=nop             
  nop                                                   #  37    0xe9a08  1      OPC=nop             
  nop                                                   #  38    0xe9a09  1      OPC=nop             
  nop                                                   #  39    0xe9a0a  1      OPC=nop             
  nop                                                   #  40    0xe9a0b  1      OPC=nop             
  nop                                                   #  41    0xe9a0c  1      OPC=nop             
  nop                                                   #  42    0xe9a0d  1      OPC=nop             
                                                                                                     
.size _ZNKSt14error_category10equivalentERKSt10error_codei, .-_ZNKSt14error_category10equivalentERKSt10error_codei

