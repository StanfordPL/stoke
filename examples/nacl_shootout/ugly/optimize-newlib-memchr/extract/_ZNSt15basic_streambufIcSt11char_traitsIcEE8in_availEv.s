  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv, @function

#! file-offset 0xe8b60
#! rip-offset  0xa8b60
#! capacity    64 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv:  #        0xa8b60  0      OPC=<label>         
  movl %edi, %edi                                         #  1     0xa8b60  2      OPC=movl_r32_r32    
  movl %edi, %edi                                         #  2     0xa8b62  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                             #  3     0xa8b64  5      OPC=movl_r32_m32    
  movl %edi, %edi                                         #  4     0xa8b69  2      OPC=movl_r32_r32    
  subl 0x8(%r15,%rdi,1), %eax                             #  5     0xa8b6b  5      OPC=subl_r32_m32    
  je .L_a8b80                                             #  6     0xa8b70  2      OPC=je_label        
  popq %r11                                               #  7     0xa8b72  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  8     0xa8b74  7      OPC=andl_r32_imm32  
  nop                                                     #  9     0xa8b7b  1      OPC=nop             
  nop                                                     #  10    0xa8b7c  1      OPC=nop             
  nop                                                     #  11    0xa8b7d  1      OPC=nop             
  nop                                                     #  12    0xa8b7e  1      OPC=nop             
  addq %r15, %r11                                         #  13    0xa8b7f  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  14    0xa8b82  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                          #  15    0xa8b85  2      OPC=xchgw_ax_r16    
.L_a8b80:                                                 #        0xa8b87  0      OPC=<label>         
  movl %edi, %edi                                         #  16    0xa8b87  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                #  17    0xa8b89  4      OPC=movl_r32_m32    
  movl %eax, %eax                                         #  18    0xa8b8d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                            #  19    0xa8b8f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                  #  20    0xa8b94  6      OPC=andl_r32_imm32  
  nop                                                     #  21    0xa8b9a  1      OPC=nop             
  nop                                                     #  22    0xa8b9b  1      OPC=nop             
  nop                                                     #  23    0xa8b9c  1      OPC=nop             
  addq %r15, %rax                                         #  24    0xa8b9d  3      OPC=addq_r64_r64    
  jmpq %rax                                               #  25    0xa8ba0  2      OPC=jmpq_r64        
  nop                                                     #  26    0xa8ba2  1      OPC=nop             
  nop                                                     #  27    0xa8ba3  1      OPC=nop             
  nop                                                     #  28    0xa8ba4  1      OPC=nop             
  nop                                                     #  29    0xa8ba5  1      OPC=nop             
  nop                                                     #  30    0xa8ba6  1      OPC=nop             
  nop                                                     #  31    0xa8ba7  1      OPC=nop             
  nop                                                     #  32    0xa8ba8  1      OPC=nop             
  nop                                                     #  33    0xa8ba9  1      OPC=nop             
  nop                                                     #  34    0xa8baa  1      OPC=nop             
  nop                                                     #  35    0xa8bab  1      OPC=nop             
  nop                                                     #  36    0xa8bac  1      OPC=nop             
                                                                                                       
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv

