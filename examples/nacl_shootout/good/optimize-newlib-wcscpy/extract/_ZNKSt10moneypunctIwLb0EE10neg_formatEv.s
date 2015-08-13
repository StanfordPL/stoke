  .text
  .globl _ZNKSt10moneypunctIwLb0EE10neg_formatEv
  .type _ZNKSt10moneypunctIwLb0EE10neg_formatEv, @function

#! file-offset 0xefac0
#! rip-offset  0xafac0
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE10neg_formatEv:  #        0xafac0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xafac0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xafac2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xafac5  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xafac8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xafaca  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xaface  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0xafad0  5      OPC=movl_r32_m32    
  nop                                      #  8     0xafad5  1      OPC=nop             
  nop                                      #  9     0xafad6  1      OPC=nop             
  nop                                      #  10    0xafad7  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xafad8  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xafade  1      OPC=nop             
  nop                                      #  13    0xafadf  1      OPC=nop             
  nop                                      #  14    0xafae0  1      OPC=nop             
  addq %r15, %rax                          #  15    0xafae1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xafae4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xafae6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xafae9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xafaec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xafaee  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xafaf5  1      OPC=nop             
  nop                                      #  22    0xafaf6  1      OPC=nop             
  nop                                      #  23    0xafaf7  1      OPC=nop             
  nop                                      #  24    0xafaf8  1      OPC=nop             
  addq %r15, %r11                          #  25    0xafaf9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xafafc  3      OPC=jmpq_r64        
  nop                                      #  27    0xafaff  1      OPC=nop             
  nop                                      #  28    0xafb00  1      OPC=nop             
  nop                                      #  29    0xafb01  1      OPC=nop             
  nop                                      #  30    0xafb02  1      OPC=nop             
  nop                                      #  31    0xafb03  1      OPC=nop             
  nop                                      #  32    0xafb04  1      OPC=nop             
  nop                                      #  33    0xafb05  1      OPC=nop             
  nop                                      #  34    0xafb06  1      OPC=nop             
  nop                                      #  35    0xafb07  1      OPC=nop             
  nop                                      #  36    0xafb08  1      OPC=nop             
  nop                                      #  37    0xafb09  1      OPC=nop             
  nop                                      #  38    0xafb0a  1      OPC=nop             
  nop                                      #  39    0xafb0b  1      OPC=nop             
  nop                                      #  40    0xafb0c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb0EE10neg_formatEv, .-_ZNKSt10moneypunctIwLb0EE10neg_formatEv

