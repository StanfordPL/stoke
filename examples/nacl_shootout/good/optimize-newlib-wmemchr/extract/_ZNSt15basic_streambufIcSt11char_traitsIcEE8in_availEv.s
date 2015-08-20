  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv, @function

#! file-offset 0xe8440
#! rip-offset  0xa8440
#! capacity    64 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv:  #        0xa8440  0      OPC=<label>         
  movl %edi, %edi                                         #  1     0xa8440  2      OPC=movl_r32_r32    
  movl %edi, %edi                                         #  2     0xa8442  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                             #  3     0xa8444  5      OPC=movl_r32_m32    
  movl %edi, %edi                                         #  4     0xa8449  2      OPC=movl_r32_r32    
  subl 0x8(%r15,%rdi,1), %eax                             #  5     0xa844b  5      OPC=subl_r32_m32    
  je .L_a8460                                             #  6     0xa8450  2      OPC=je_label        
  popq %r11                                               #  7     0xa8452  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  8     0xa8454  7      OPC=andl_r32_imm32  
  nop                                                     #  9     0xa845b  1      OPC=nop             
  nop                                                     #  10    0xa845c  1      OPC=nop             
  nop                                                     #  11    0xa845d  1      OPC=nop             
  nop                                                     #  12    0xa845e  1      OPC=nop             
  addq %r15, %r11                                         #  13    0xa845f  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  14    0xa8462  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                          #  15    0xa8465  2      OPC=xchgw_ax_r16    
.L_a8460:                                                 #        0xa8467  0      OPC=<label>         
  movl %edi, %edi                                         #  16    0xa8467  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                #  17    0xa8469  4      OPC=movl_r32_m32    
  movl %eax, %eax                                         #  18    0xa846d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                            #  19    0xa846f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                  #  20    0xa8474  6      OPC=andl_r32_imm32  
  nop                                                     #  21    0xa847a  1      OPC=nop             
  nop                                                     #  22    0xa847b  1      OPC=nop             
  nop                                                     #  23    0xa847c  1      OPC=nop             
  addq %r15, %rax                                         #  24    0xa847d  3      OPC=addq_r64_r64    
  jmpq %rax                                               #  25    0xa8480  2      OPC=jmpq_r64        
  nop                                                     #  26    0xa8482  1      OPC=nop             
  nop                                                     #  27    0xa8483  1      OPC=nop             
  nop                                                     #  28    0xa8484  1      OPC=nop             
  nop                                                     #  29    0xa8485  1      OPC=nop             
  nop                                                     #  30    0xa8486  1      OPC=nop             
  nop                                                     #  31    0xa8487  1      OPC=nop             
  nop                                                     #  32    0xa8488  1      OPC=nop             
  nop                                                     #  33    0xa8489  1      OPC=nop             
  nop                                                     #  34    0xa848a  1      OPC=nop             
  nop                                                     #  35    0xa848b  1      OPC=nop             
  nop                                                     #  36    0xa848c  1      OPC=nop             
                                                                                                       
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv

