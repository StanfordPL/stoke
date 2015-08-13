  .text
  .globl _ZNKSt10moneypunctIcLb0EE8groupingEv
  .type _ZNKSt10moneypunctIcLb0EE8groupingEv, @function

#! file-offset 0xb69a0
#! rip-offset  0x769a0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE8groupingEv:  #        0x769a0  0      OPC=<label>         
  movl %esi, %esi                       #  1     0x769a0  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0x769a2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0x769a3  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0x769a5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0x769a7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                       #  6     0x769ab  2      OPC=movl_r32_r32    
  movl %eax, %eax                       #  7     0x769ad  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax          #  8     0x769af  5      OPC=movl_r32_m32    
  nop                                   #  9     0x769b4  1      OPC=nop             
  nop                                   #  10    0x769b5  1      OPC=nop             
  nop                                   #  11    0x769b6  1      OPC=nop             
  nop                                   #  12    0x769b7  1      OPC=nop             
  andl $0xffffffe0, %eax                #  13    0x769b8  6      OPC=andl_r32_imm32  
  nop                                   #  14    0x769be  1      OPC=nop             
  nop                                   #  15    0x769bf  1      OPC=nop             
  nop                                   #  16    0x769c0  1      OPC=nop             
  addq %r15, %rax                       #  17    0x769c1  3      OPC=addq_r64_r64    
  callq %rax                            #  18    0x769c4  2      OPC=callq_r64       
  movl %ebx, %eax                       #  19    0x769c6  2      OPC=movl_r32_r32    
  popq %rbx                             #  20    0x769c8  1      OPC=popq_r64_1      
  popq %r11                             #  21    0x769c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  22    0x769cb  7      OPC=andl_r32_imm32  
  nop                                   #  23    0x769d2  1      OPC=nop             
  nop                                   #  24    0x769d3  1      OPC=nop             
  nop                                   #  25    0x769d4  1      OPC=nop             
  nop                                   #  26    0x769d5  1      OPC=nop             
  addq %r15, %r11                       #  27    0x769d6  3      OPC=addq_r64_r64    
  jmpq %r11                             #  28    0x769d9  3      OPC=jmpq_r64        
  nop                                   #  29    0x769dc  1      OPC=nop             
  nop                                   #  30    0x769dd  1      OPC=nop             
  nop                                   #  31    0x769de  1      OPC=nop             
  nop                                   #  32    0x769df  1      OPC=nop             
  nop                                   #  33    0x769e0  1      OPC=nop             
  nop                                   #  34    0x769e1  1      OPC=nop             
  nop                                   #  35    0x769e2  1      OPC=nop             
  nop                                   #  36    0x769e3  1      OPC=nop             
  nop                                   #  37    0x769e4  1      OPC=nop             
  nop                                   #  38    0x769e5  1      OPC=nop             
  nop                                   #  39    0x769e6  1      OPC=nop             
  nop                                   #  40    0x769e7  1      OPC=nop             
  nop                                   #  41    0x769e8  1      OPC=nop             
  nop                                   #  42    0x769e9  1      OPC=nop             
  nop                                   #  43    0x769ea  1      OPC=nop             
  nop                                   #  44    0x769eb  1      OPC=nop             
  nop                                   #  45    0x769ec  1      OPC=nop             
                                                                                     
.size _ZNKSt10moneypunctIcLb0EE8groupingEv, .-_ZNKSt10moneypunctIcLb0EE8groupingEv

