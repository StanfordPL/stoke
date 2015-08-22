  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv, @function

#! file-offset 0xe93e0
#! rip-offset  0xa93e0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv:  #        0xa93e0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa93e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa93e2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                           #  3     0xa93e4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa93e9  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                           #  5     0xa93eb  5      OPC=cmpl_m32_r32    
  jbe .L_a9420                                          #  6     0xa93f0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa93f2  2      OPC=popq_r64_1      
  addl $0x4, %eax                                       #  8     0xa93f4  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                       #  9     0xa93f7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                           #  10    0xa93f9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  11    0xa93fe  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                               #  12    0xa9400  7      OPC=andl_r32_imm32  
  nop                                                   #  13    0xa9407  1      OPC=nop             
  nop                                                   #  14    0xa9408  1      OPC=nop             
  nop                                                   #  15    0xa9409  1      OPC=nop             
  nop                                                   #  16    0xa940a  1      OPC=nop             
  addq %r15, %r11                                       #  17    0xa940b  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  18    0xa940e  3      OPC=jmpq_r64        
  nop                                                   #  19    0xa9411  1      OPC=nop             
  nop                                                   #  20    0xa9412  1      OPC=nop             
  nop                                                   #  21    0xa9413  1      OPC=nop             
  nop                                                   #  22    0xa9414  1      OPC=nop             
  nop                                                   #  23    0xa9415  1      OPC=nop             
  nop                                                   #  24    0xa9416  1      OPC=nop             
  nop                                                   #  25    0xa9417  1      OPC=nop             
  nop                                                   #  26    0xa9418  1      OPC=nop             
  nop                                                   #  27    0xa9419  1      OPC=nop             
  nop                                                   #  28    0xa941a  1      OPC=nop             
  nop                                                   #  29    0xa941b  1      OPC=nop             
  nop                                                   #  30    0xa941c  1      OPC=nop             
  nop                                                   #  31    0xa941d  1      OPC=nop             
  nop                                                   #  32    0xa941e  1      OPC=nop             
  nop                                                   #  33    0xa941f  1      OPC=nop             
  nop                                                   #  34    0xa9420  1      OPC=nop             
  nop                                                   #  35    0xa9421  1      OPC=nop             
  nop                                                   #  36    0xa9422  1      OPC=nop             
  nop                                                   #  37    0xa9423  1      OPC=nop             
  nop                                                   #  38    0xa9424  1      OPC=nop             
  nop                                                   #  39    0xa9425  1      OPC=nop             
  nop                                                   #  40    0xa9426  1      OPC=nop             
.L_a9420:                                               #        0xa9427  0      OPC=<label>         
  movl %edi, %edi                                       #  41    0xa9427  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  42    0xa9429  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  43    0xa942d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  44    0xa942f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  45    0xa9434  6      OPC=andl_r32_imm32  
  nop                                                   #  46    0xa943a  1      OPC=nop             
  nop                                                   #  47    0xa943b  1      OPC=nop             
  nop                                                   #  48    0xa943c  1      OPC=nop             
  addq %r15, %rax                                       #  49    0xa943d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  50    0xa9440  2      OPC=jmpq_r64        
  nop                                                   #  51    0xa9442  1      OPC=nop             
  nop                                                   #  52    0xa9443  1      OPC=nop             
  nop                                                   #  53    0xa9444  1      OPC=nop             
  nop                                                   #  54    0xa9445  1      OPC=nop             
  nop                                                   #  55    0xa9446  1      OPC=nop             
  nop                                                   #  56    0xa9447  1      OPC=nop             
  nop                                                   #  57    0xa9448  1      OPC=nop             
  nop                                                   #  58    0xa9449  1      OPC=nop             
  nop                                                   #  59    0xa944a  1      OPC=nop             
  nop                                                   #  60    0xa944b  1      OPC=nop             
  nop                                                   #  61    0xa944c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv

