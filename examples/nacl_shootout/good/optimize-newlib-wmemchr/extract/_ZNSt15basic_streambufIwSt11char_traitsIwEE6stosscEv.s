  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv, @function

#! file-offset 0xe8cc0
#! rip-offset  0xa8cc0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv:  #        0xa8cc0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa8cc0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa8cc2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                           #  3     0xa8cc4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa8cc9  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                           #  5     0xa8ccb  5      OPC=cmpl_m32_r32    
  jbe .L_a8d00                                          #  6     0xa8cd0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa8cd2  2      OPC=popq_r64_1      
  addl $0x4, %eax                                       #  8     0xa8cd4  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                       #  9     0xa8cd7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                           #  10    0xa8cd9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  11    0xa8cde  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                               #  12    0xa8ce0  7      OPC=andl_r32_imm32  
  nop                                                   #  13    0xa8ce7  1      OPC=nop             
  nop                                                   #  14    0xa8ce8  1      OPC=nop             
  nop                                                   #  15    0xa8ce9  1      OPC=nop             
  nop                                                   #  16    0xa8cea  1      OPC=nop             
  addq %r15, %r11                                       #  17    0xa8ceb  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  18    0xa8cee  3      OPC=jmpq_r64        
  nop                                                   #  19    0xa8cf1  1      OPC=nop             
  nop                                                   #  20    0xa8cf2  1      OPC=nop             
  nop                                                   #  21    0xa8cf3  1      OPC=nop             
  nop                                                   #  22    0xa8cf4  1      OPC=nop             
  nop                                                   #  23    0xa8cf5  1      OPC=nop             
  nop                                                   #  24    0xa8cf6  1      OPC=nop             
  nop                                                   #  25    0xa8cf7  1      OPC=nop             
  nop                                                   #  26    0xa8cf8  1      OPC=nop             
  nop                                                   #  27    0xa8cf9  1      OPC=nop             
  nop                                                   #  28    0xa8cfa  1      OPC=nop             
  nop                                                   #  29    0xa8cfb  1      OPC=nop             
  nop                                                   #  30    0xa8cfc  1      OPC=nop             
  nop                                                   #  31    0xa8cfd  1      OPC=nop             
  nop                                                   #  32    0xa8cfe  1      OPC=nop             
  nop                                                   #  33    0xa8cff  1      OPC=nop             
  nop                                                   #  34    0xa8d00  1      OPC=nop             
  nop                                                   #  35    0xa8d01  1      OPC=nop             
  nop                                                   #  36    0xa8d02  1      OPC=nop             
  nop                                                   #  37    0xa8d03  1      OPC=nop             
  nop                                                   #  38    0xa8d04  1      OPC=nop             
  nop                                                   #  39    0xa8d05  1      OPC=nop             
  nop                                                   #  40    0xa8d06  1      OPC=nop             
.L_a8d00:                                               #        0xa8d07  0      OPC=<label>         
  movl %edi, %edi                                       #  41    0xa8d07  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  42    0xa8d09  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  43    0xa8d0d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  44    0xa8d0f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  45    0xa8d14  6      OPC=andl_r32_imm32  
  nop                                                   #  46    0xa8d1a  1      OPC=nop             
  nop                                                   #  47    0xa8d1b  1      OPC=nop             
  nop                                                   #  48    0xa8d1c  1      OPC=nop             
  addq %r15, %rax                                       #  49    0xa8d1d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  50    0xa8d20  2      OPC=jmpq_r64        
  nop                                                   #  51    0xa8d22  1      OPC=nop             
  nop                                                   #  52    0xa8d23  1      OPC=nop             
  nop                                                   #  53    0xa8d24  1      OPC=nop             
  nop                                                   #  54    0xa8d25  1      OPC=nop             
  nop                                                   #  55    0xa8d26  1      OPC=nop             
  nop                                                   #  56    0xa8d27  1      OPC=nop             
  nop                                                   #  57    0xa8d28  1      OPC=nop             
  nop                                                   #  58    0xa8d29  1      OPC=nop             
  nop                                                   #  59    0xa8d2a  1      OPC=nop             
  nop                                                   #  60    0xa8d2b  1      OPC=nop             
  nop                                                   #  61    0xa8d2c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv

