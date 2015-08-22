  .text
  .globl _ZNKSt10moneypunctIwLb0EE13positive_signEv
  .type _ZNKSt10moneypunctIwLb0EE13positive_signEv, @function

#! file-offset 0xf0400
#! rip-offset  0xb0400
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13positive_signEv:  #        0xb0400  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xb0400  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xb0402  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xb0403  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xb0405  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xb0407  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xb040b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xb040d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0xb040f  5      OPC=movl_r32_m32    
  nop                                         #  9     0xb0414  1      OPC=nop             
  nop                                         #  10    0xb0415  1      OPC=nop             
  nop                                         #  11    0xb0416  1      OPC=nop             
  nop                                         #  12    0xb0417  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xb0418  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xb041e  1      OPC=nop             
  nop                                         #  15    0xb041f  1      OPC=nop             
  nop                                         #  16    0xb0420  1      OPC=nop             
  addq %r15, %rax                             #  17    0xb0421  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xb0424  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xb0426  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xb0428  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xb0429  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xb042b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xb0432  1      OPC=nop             
  nop                                         #  24    0xb0433  1      OPC=nop             
  nop                                         #  25    0xb0434  1      OPC=nop             
  nop                                         #  26    0xb0435  1      OPC=nop             
  addq %r15, %r11                             #  27    0xb0436  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xb0439  3      OPC=jmpq_r64        
  nop                                         #  29    0xb043c  1      OPC=nop             
  nop                                         #  30    0xb043d  1      OPC=nop             
  nop                                         #  31    0xb043e  1      OPC=nop             
  nop                                         #  32    0xb043f  1      OPC=nop             
  nop                                         #  33    0xb0440  1      OPC=nop             
  nop                                         #  34    0xb0441  1      OPC=nop             
  nop                                         #  35    0xb0442  1      OPC=nop             
  nop                                         #  36    0xb0443  1      OPC=nop             
  nop                                         #  37    0xb0444  1      OPC=nop             
  nop                                         #  38    0xb0445  1      OPC=nop             
  nop                                         #  39    0xb0446  1      OPC=nop             
  nop                                         #  40    0xb0447  1      OPC=nop             
  nop                                         #  41    0xb0448  1      OPC=nop             
  nop                                         #  42    0xb0449  1      OPC=nop             
  nop                                         #  43    0xb044a  1      OPC=nop             
  nop                                         #  44    0xb044b  1      OPC=nop             
  nop                                         #  45    0xb044c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13positive_signEv, .-_ZNKSt10moneypunctIwLb0EE13positive_signEv

