  .text
  .globl _ZNKSt10moneypunctIwLb1EE13positive_signEv
  .type _ZNKSt10moneypunctIwLb1EE13positive_signEv, @function

#! file-offset 0xf0680
#! rip-offset  0xb0680
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13positive_signEv:  #        0xb0680  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xb0680  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xb0682  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xb0683  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xb0685  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xb0687  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xb068b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xb068d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0xb068f  5      OPC=movl_r32_m32    
  nop                                         #  9     0xb0694  1      OPC=nop             
  nop                                         #  10    0xb0695  1      OPC=nop             
  nop                                         #  11    0xb0696  1      OPC=nop             
  nop                                         #  12    0xb0697  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xb0698  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xb069e  1      OPC=nop             
  nop                                         #  15    0xb069f  1      OPC=nop             
  nop                                         #  16    0xb06a0  1      OPC=nop             
  addq %r15, %rax                             #  17    0xb06a1  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xb06a4  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xb06a6  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xb06a8  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xb06a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xb06ab  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xb06b2  1      OPC=nop             
  nop                                         #  24    0xb06b3  1      OPC=nop             
  nop                                         #  25    0xb06b4  1      OPC=nop             
  nop                                         #  26    0xb06b5  1      OPC=nop             
  addq %r15, %r11                             #  27    0xb06b6  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xb06b9  3      OPC=jmpq_r64        
  nop                                         #  29    0xb06bc  1      OPC=nop             
  nop                                         #  30    0xb06bd  1      OPC=nop             
  nop                                         #  31    0xb06be  1      OPC=nop             
  nop                                         #  32    0xb06bf  1      OPC=nop             
  nop                                         #  33    0xb06c0  1      OPC=nop             
  nop                                         #  34    0xb06c1  1      OPC=nop             
  nop                                         #  35    0xb06c2  1      OPC=nop             
  nop                                         #  36    0xb06c3  1      OPC=nop             
  nop                                         #  37    0xb06c4  1      OPC=nop             
  nop                                         #  38    0xb06c5  1      OPC=nop             
  nop                                         #  39    0xb06c6  1      OPC=nop             
  nop                                         #  40    0xb06c7  1      OPC=nop             
  nop                                         #  41    0xb06c8  1      OPC=nop             
  nop                                         #  42    0xb06c9  1      OPC=nop             
  nop                                         #  43    0xb06ca  1      OPC=nop             
  nop                                         #  44    0xb06cb  1      OPC=nop             
  nop                                         #  45    0xb06cc  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13positive_signEv, .-_ZNKSt10moneypunctIwLb1EE13positive_signEv

