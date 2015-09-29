  .text
  .globl _ZNKSt10moneypunctIcLb0EE13positive_signEv
  .type _ZNKSt10moneypunctIcLb0EE13positive_signEv, @function

#! file-offset 0xb7440
#! rip-offset  0x77440
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13positive_signEv:  #        0x77440  0      OPC=<label>         
  movl %esi, %esi                             #  1     0x77440  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0x77442  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0x77443  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0x77445  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0x77447  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0x7744b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0x7744d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0x7744f  5      OPC=movl_r32_m32    
  nop                                         #  9     0x77454  1      OPC=nop             
  nop                                         #  10    0x77455  1      OPC=nop             
  nop                                         #  11    0x77456  1      OPC=nop             
  nop                                         #  12    0x77457  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0x77458  6      OPC=andl_r32_imm32  
  nop                                         #  14    0x7745e  1      OPC=nop             
  nop                                         #  15    0x7745f  1      OPC=nop             
  nop                                         #  16    0x77460  1      OPC=nop             
  addq %r15, %rax                             #  17    0x77461  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0x77464  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0x77466  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0x77468  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0x77469  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0x7746b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0x77472  1      OPC=nop             
  nop                                         #  24    0x77473  1      OPC=nop             
  nop                                         #  25    0x77474  1      OPC=nop             
  nop                                         #  26    0x77475  1      OPC=nop             
  addq %r15, %r11                             #  27    0x77476  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0x77479  3      OPC=jmpq_r64        
  nop                                         #  29    0x7747c  1      OPC=nop             
  nop                                         #  30    0x7747d  1      OPC=nop             
  nop                                         #  31    0x7747e  1      OPC=nop             
  nop                                         #  32    0x7747f  1      OPC=nop             
  nop                                         #  33    0x77480  1      OPC=nop             
  nop                                         #  34    0x77481  1      OPC=nop             
  nop                                         #  35    0x77482  1      OPC=nop             
  nop                                         #  36    0x77483  1      OPC=nop             
  nop                                         #  37    0x77484  1      OPC=nop             
  nop                                         #  38    0x77485  1      OPC=nop             
  nop                                         #  39    0x77486  1      OPC=nop             
  nop                                         #  40    0x77487  1      OPC=nop             
  nop                                         #  41    0x77488  1      OPC=nop             
  nop                                         #  42    0x77489  1      OPC=nop             
  nop                                         #  43    0x7748a  1      OPC=nop             
  nop                                         #  44    0x7748b  1      OPC=nop             
  nop                                         #  45    0x7748c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13positive_signEv, .-_ZNKSt10moneypunctIcLb0EE13positive_signEv

