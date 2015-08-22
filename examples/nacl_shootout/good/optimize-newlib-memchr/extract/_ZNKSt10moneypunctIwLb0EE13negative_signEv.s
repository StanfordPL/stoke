  .text
  .globl _ZNKSt10moneypunctIwLb0EE13negative_signEv
  .type _ZNKSt10moneypunctIwLb0EE13negative_signEv, @function

#! file-offset 0xf0440
#! rip-offset  0xb0440
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13negative_signEv:  #        0xb0440  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xb0440  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xb0442  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xb0443  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xb0445  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xb0447  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xb044b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xb044d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0xb044f  5      OPC=movl_r32_m32    
  nop                                         #  9     0xb0454  1      OPC=nop             
  nop                                         #  10    0xb0455  1      OPC=nop             
  nop                                         #  11    0xb0456  1      OPC=nop             
  nop                                         #  12    0xb0457  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xb0458  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xb045e  1      OPC=nop             
  nop                                         #  15    0xb045f  1      OPC=nop             
  nop                                         #  16    0xb0460  1      OPC=nop             
  addq %r15, %rax                             #  17    0xb0461  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xb0464  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xb0466  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xb0468  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xb0469  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xb046b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xb0472  1      OPC=nop             
  nop                                         #  24    0xb0473  1      OPC=nop             
  nop                                         #  25    0xb0474  1      OPC=nop             
  nop                                         #  26    0xb0475  1      OPC=nop             
  addq %r15, %r11                             #  27    0xb0476  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xb0479  3      OPC=jmpq_r64        
  nop                                         #  29    0xb047c  1      OPC=nop             
  nop                                         #  30    0xb047d  1      OPC=nop             
  nop                                         #  31    0xb047e  1      OPC=nop             
  nop                                         #  32    0xb047f  1      OPC=nop             
  nop                                         #  33    0xb0480  1      OPC=nop             
  nop                                         #  34    0xb0481  1      OPC=nop             
  nop                                         #  35    0xb0482  1      OPC=nop             
  nop                                         #  36    0xb0483  1      OPC=nop             
  nop                                         #  37    0xb0484  1      OPC=nop             
  nop                                         #  38    0xb0485  1      OPC=nop             
  nop                                         #  39    0xb0486  1      OPC=nop             
  nop                                         #  40    0xb0487  1      OPC=nop             
  nop                                         #  41    0xb0488  1      OPC=nop             
  nop                                         #  42    0xb0489  1      OPC=nop             
  nop                                         #  43    0xb048a  1      OPC=nop             
  nop                                         #  44    0xb048b  1      OPC=nop             
  nop                                         #  45    0xb048c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13negative_signEv, .-_ZNKSt10moneypunctIwLb0EE13negative_signEv

