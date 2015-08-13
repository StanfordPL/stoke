  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv, @function

#! file-offset 0xe8140
#! rip-offset  0xa8140
#! capacity    64 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv:  #        0xa8140  0      OPC=<label>         
  movl %edi, %edi                                         #  1     0xa8140  2      OPC=movl_r32_r32    
  movl %edi, %edi                                         #  2     0xa8142  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                             #  3     0xa8144  5      OPC=movl_r32_m32    
  movl %edi, %edi                                         #  4     0xa8149  2      OPC=movl_r32_r32    
  subl 0x8(%r15,%rdi,1), %eax                             #  5     0xa814b  5      OPC=subl_r32_m32    
  je .L_a8160                                             #  6     0xa8150  2      OPC=je_label        
  popq %r11                                               #  7     0xa8152  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  8     0xa8154  7      OPC=andl_r32_imm32  
  nop                                                     #  9     0xa815b  1      OPC=nop             
  nop                                                     #  10    0xa815c  1      OPC=nop             
  nop                                                     #  11    0xa815d  1      OPC=nop             
  nop                                                     #  12    0xa815e  1      OPC=nop             
  addq %r15, %r11                                         #  13    0xa815f  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  14    0xa8162  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                          #  15    0xa8165  2      OPC=xchgw_ax_r16    
.L_a8160:                                                 #        0xa8167  0      OPC=<label>         
  movl %edi, %edi                                         #  16    0xa8167  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                #  17    0xa8169  4      OPC=movl_r32_m32    
  movl %eax, %eax                                         #  18    0xa816d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                            #  19    0xa816f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                  #  20    0xa8174  6      OPC=andl_r32_imm32  
  nop                                                     #  21    0xa817a  1      OPC=nop             
  nop                                                     #  22    0xa817b  1      OPC=nop             
  nop                                                     #  23    0xa817c  1      OPC=nop             
  addq %r15, %rax                                         #  24    0xa817d  3      OPC=addq_r64_r64    
  jmpq %rax                                               #  25    0xa8180  2      OPC=jmpq_r64        
  nop                                                     #  26    0xa8182  1      OPC=nop             
  nop                                                     #  27    0xa8183  1      OPC=nop             
  nop                                                     #  28    0xa8184  1      OPC=nop             
  nop                                                     #  29    0xa8185  1      OPC=nop             
  nop                                                     #  30    0xa8186  1      OPC=nop             
  nop                                                     #  31    0xa8187  1      OPC=nop             
  nop                                                     #  32    0xa8188  1      OPC=nop             
  nop                                                     #  33    0xa8189  1      OPC=nop             
  nop                                                     #  34    0xa818a  1      OPC=nop             
  nop                                                     #  35    0xa818b  1      OPC=nop             
  nop                                                     #  36    0xa818c  1      OPC=nop             
                                                                                                       
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv

