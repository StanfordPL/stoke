  .text
  .globl _ZNKSt10moneypunctIwLb0EE8groupingEv
  .type _ZNKSt10moneypunctIwLb0EE8groupingEv, @function

#! file-offset 0xef960
#! rip-offset  0xaf960
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE8groupingEv:  #        0xaf960  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xaf960  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0xaf962  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0xaf963  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0xaf965  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0xaf967  4      OPC=movl_r32_m32    
  movl %ebx, %edi                       #  6     0xaf96b  2      OPC=movl_r32_r32    
  movl %eax, %eax                       #  7     0xaf96d  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax          #  8     0xaf96f  5      OPC=movl_r32_m32    
  nop                                   #  9     0xaf974  1      OPC=nop             
  nop                                   #  10    0xaf975  1      OPC=nop             
  nop                                   #  11    0xaf976  1      OPC=nop             
  nop                                   #  12    0xaf977  1      OPC=nop             
  andl $0xffffffe0, %eax                #  13    0xaf978  6      OPC=andl_r32_imm32  
  nop                                   #  14    0xaf97e  1      OPC=nop             
  nop                                   #  15    0xaf97f  1      OPC=nop             
  nop                                   #  16    0xaf980  1      OPC=nop             
  addq %r15, %rax                       #  17    0xaf981  3      OPC=addq_r64_r64    
  callq %rax                            #  18    0xaf984  2      OPC=callq_r64       
  movl %ebx, %eax                       #  19    0xaf986  2      OPC=movl_r32_r32    
  popq %rbx                             #  20    0xaf988  1      OPC=popq_r64_1      
  popq %r11                             #  21    0xaf989  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  22    0xaf98b  7      OPC=andl_r32_imm32  
  nop                                   #  23    0xaf992  1      OPC=nop             
  nop                                   #  24    0xaf993  1      OPC=nop             
  nop                                   #  25    0xaf994  1      OPC=nop             
  nop                                   #  26    0xaf995  1      OPC=nop             
  addq %r15, %r11                       #  27    0xaf996  3      OPC=addq_r64_r64    
  jmpq %r11                             #  28    0xaf999  3      OPC=jmpq_r64        
  nop                                   #  29    0xaf99c  1      OPC=nop             
  nop                                   #  30    0xaf99d  1      OPC=nop             
  nop                                   #  31    0xaf99e  1      OPC=nop             
  nop                                   #  32    0xaf99f  1      OPC=nop             
  nop                                   #  33    0xaf9a0  1      OPC=nop             
  nop                                   #  34    0xaf9a1  1      OPC=nop             
  nop                                   #  35    0xaf9a2  1      OPC=nop             
  nop                                   #  36    0xaf9a3  1      OPC=nop             
  nop                                   #  37    0xaf9a4  1      OPC=nop             
  nop                                   #  38    0xaf9a5  1      OPC=nop             
  nop                                   #  39    0xaf9a6  1      OPC=nop             
  nop                                   #  40    0xaf9a7  1      OPC=nop             
  nop                                   #  41    0xaf9a8  1      OPC=nop             
  nop                                   #  42    0xaf9a9  1      OPC=nop             
  nop                                   #  43    0xaf9aa  1      OPC=nop             
  nop                                   #  44    0xaf9ab  1      OPC=nop             
  nop                                   #  45    0xaf9ac  1      OPC=nop             
                                                                                     
.size _ZNKSt10moneypunctIwLb0EE8groupingEv, .-_ZNKSt10moneypunctIwLb0EE8groupingEv

