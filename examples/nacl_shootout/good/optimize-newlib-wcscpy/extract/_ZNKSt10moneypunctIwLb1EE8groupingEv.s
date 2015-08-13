  .text
  .globl _ZNKSt10moneypunctIwLb1EE8groupingEv
  .type _ZNKSt10moneypunctIwLb1EE8groupingEv, @function

#! file-offset 0xefbe0
#! rip-offset  0xafbe0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE8groupingEv:  #        0xafbe0  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xafbe0  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0xafbe2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0xafbe3  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0xafbe5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0xafbe7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                       #  6     0xafbeb  2      OPC=movl_r32_r32    
  movl %eax, %eax                       #  7     0xafbed  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax          #  8     0xafbef  5      OPC=movl_r32_m32    
  nop                                   #  9     0xafbf4  1      OPC=nop             
  nop                                   #  10    0xafbf5  1      OPC=nop             
  nop                                   #  11    0xafbf6  1      OPC=nop             
  nop                                   #  12    0xafbf7  1      OPC=nop             
  andl $0xffffffe0, %eax                #  13    0xafbf8  6      OPC=andl_r32_imm32  
  nop                                   #  14    0xafbfe  1      OPC=nop             
  nop                                   #  15    0xafbff  1      OPC=nop             
  nop                                   #  16    0xafc00  1      OPC=nop             
  addq %r15, %rax                       #  17    0xafc01  3      OPC=addq_r64_r64    
  callq %rax                            #  18    0xafc04  2      OPC=callq_r64       
  movl %ebx, %eax                       #  19    0xafc06  2      OPC=movl_r32_r32    
  popq %rbx                             #  20    0xafc08  1      OPC=popq_r64_1      
  popq %r11                             #  21    0xafc09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  22    0xafc0b  7      OPC=andl_r32_imm32  
  nop                                   #  23    0xafc12  1      OPC=nop             
  nop                                   #  24    0xafc13  1      OPC=nop             
  nop                                   #  25    0xafc14  1      OPC=nop             
  nop                                   #  26    0xafc15  1      OPC=nop             
  addq %r15, %r11                       #  27    0xafc16  3      OPC=addq_r64_r64    
  jmpq %r11                             #  28    0xafc19  3      OPC=jmpq_r64        
  nop                                   #  29    0xafc1c  1      OPC=nop             
  nop                                   #  30    0xafc1d  1      OPC=nop             
  nop                                   #  31    0xafc1e  1      OPC=nop             
  nop                                   #  32    0xafc1f  1      OPC=nop             
  nop                                   #  33    0xafc20  1      OPC=nop             
  nop                                   #  34    0xafc21  1      OPC=nop             
  nop                                   #  35    0xafc22  1      OPC=nop             
  nop                                   #  36    0xafc23  1      OPC=nop             
  nop                                   #  37    0xafc24  1      OPC=nop             
  nop                                   #  38    0xafc25  1      OPC=nop             
  nop                                   #  39    0xafc26  1      OPC=nop             
  nop                                   #  40    0xafc27  1      OPC=nop             
  nop                                   #  41    0xafc28  1      OPC=nop             
  nop                                   #  42    0xafc29  1      OPC=nop             
  nop                                   #  43    0xafc2a  1      OPC=nop             
  nop                                   #  44    0xafc2b  1      OPC=nop             
  nop                                   #  45    0xafc2c  1      OPC=nop             
                                                                                     
.size _ZNKSt10moneypunctIwLb1EE8groupingEv, .-_ZNKSt10moneypunctIwLb1EE8groupingEv

