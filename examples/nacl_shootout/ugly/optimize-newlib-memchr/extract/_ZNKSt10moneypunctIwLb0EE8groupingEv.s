  .text
  .globl _ZNKSt10moneypunctIwLb0EE8groupingEv
  .type _ZNKSt10moneypunctIwLb0EE8groupingEv, @function

#! file-offset 0xf0380
#! rip-offset  0xb0380
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE8groupingEv:  #        0xb0380  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xb0380  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0xb0382  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0xb0383  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0xb0385  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0xb0387  4      OPC=movl_r32_m32    
  movl %ebx, %edi                       #  6     0xb038b  2      OPC=movl_r32_r32    
  movl %eax, %eax                       #  7     0xb038d  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax          #  8     0xb038f  5      OPC=movl_r32_m32    
  nop                                   #  9     0xb0394  1      OPC=nop             
  nop                                   #  10    0xb0395  1      OPC=nop             
  nop                                   #  11    0xb0396  1      OPC=nop             
  nop                                   #  12    0xb0397  1      OPC=nop             
  andl $0xffffffe0, %eax                #  13    0xb0398  6      OPC=andl_r32_imm32  
  nop                                   #  14    0xb039e  1      OPC=nop             
  nop                                   #  15    0xb039f  1      OPC=nop             
  nop                                   #  16    0xb03a0  1      OPC=nop             
  addq %r15, %rax                       #  17    0xb03a1  3      OPC=addq_r64_r64    
  callq %rax                            #  18    0xb03a4  2      OPC=callq_r64       
  movl %ebx, %eax                       #  19    0xb03a6  2      OPC=movl_r32_r32    
  popq %rbx                             #  20    0xb03a8  1      OPC=popq_r64_1      
  popq %r11                             #  21    0xb03a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  22    0xb03ab  7      OPC=andl_r32_imm32  
  nop                                   #  23    0xb03b2  1      OPC=nop             
  nop                                   #  24    0xb03b3  1      OPC=nop             
  nop                                   #  25    0xb03b4  1      OPC=nop             
  nop                                   #  26    0xb03b5  1      OPC=nop             
  addq %r15, %r11                       #  27    0xb03b6  3      OPC=addq_r64_r64    
  jmpq %r11                             #  28    0xb03b9  3      OPC=jmpq_r64        
  nop                                   #  29    0xb03bc  1      OPC=nop             
  nop                                   #  30    0xb03bd  1      OPC=nop             
  nop                                   #  31    0xb03be  1      OPC=nop             
  nop                                   #  32    0xb03bf  1      OPC=nop             
  nop                                   #  33    0xb03c0  1      OPC=nop             
  nop                                   #  34    0xb03c1  1      OPC=nop             
  nop                                   #  35    0xb03c2  1      OPC=nop             
  nop                                   #  36    0xb03c3  1      OPC=nop             
  nop                                   #  37    0xb03c4  1      OPC=nop             
  nop                                   #  38    0xb03c5  1      OPC=nop             
  nop                                   #  39    0xb03c6  1      OPC=nop             
  nop                                   #  40    0xb03c7  1      OPC=nop             
  nop                                   #  41    0xb03c8  1      OPC=nop             
  nop                                   #  42    0xb03c9  1      OPC=nop             
  nop                                   #  43    0xb03ca  1      OPC=nop             
  nop                                   #  44    0xb03cb  1      OPC=nop             
  nop                                   #  45    0xb03cc  1      OPC=nop             
                                                                                     
.size _ZNKSt10moneypunctIwLb0EE8groupingEv, .-_ZNKSt10moneypunctIwLb0EE8groupingEv

