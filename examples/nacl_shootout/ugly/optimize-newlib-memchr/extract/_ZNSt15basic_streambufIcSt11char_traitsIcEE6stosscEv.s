  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv, @function

#! file-offset 0xe8ee0
#! rip-offset  0xa8ee0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv:  #        0xa8ee0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa8ee0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa8ee2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                           #  3     0xa8ee4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa8ee9  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                           #  5     0xa8eeb  5      OPC=cmpl_m32_r32    
  jbe .L_a8f20                                          #  6     0xa8ef0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa8ef2  2      OPC=popq_r64_1      
  addl $0x1, %eax                                       #  8     0xa8ef4  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                       #  9     0xa8ef7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                           #  10    0xa8ef9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  11    0xa8efe  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                               #  12    0xa8f00  7      OPC=andl_r32_imm32  
  nop                                                   #  13    0xa8f07  1      OPC=nop             
  nop                                                   #  14    0xa8f08  1      OPC=nop             
  nop                                                   #  15    0xa8f09  1      OPC=nop             
  nop                                                   #  16    0xa8f0a  1      OPC=nop             
  addq %r15, %r11                                       #  17    0xa8f0b  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  18    0xa8f0e  3      OPC=jmpq_r64        
  nop                                                   #  19    0xa8f11  1      OPC=nop             
  nop                                                   #  20    0xa8f12  1      OPC=nop             
  nop                                                   #  21    0xa8f13  1      OPC=nop             
  nop                                                   #  22    0xa8f14  1      OPC=nop             
  nop                                                   #  23    0xa8f15  1      OPC=nop             
  nop                                                   #  24    0xa8f16  1      OPC=nop             
  nop                                                   #  25    0xa8f17  1      OPC=nop             
  nop                                                   #  26    0xa8f18  1      OPC=nop             
  nop                                                   #  27    0xa8f19  1      OPC=nop             
  nop                                                   #  28    0xa8f1a  1      OPC=nop             
  nop                                                   #  29    0xa8f1b  1      OPC=nop             
  nop                                                   #  30    0xa8f1c  1      OPC=nop             
  nop                                                   #  31    0xa8f1d  1      OPC=nop             
  nop                                                   #  32    0xa8f1e  1      OPC=nop             
  nop                                                   #  33    0xa8f1f  1      OPC=nop             
  nop                                                   #  34    0xa8f20  1      OPC=nop             
  nop                                                   #  35    0xa8f21  1      OPC=nop             
  nop                                                   #  36    0xa8f22  1      OPC=nop             
  nop                                                   #  37    0xa8f23  1      OPC=nop             
  nop                                                   #  38    0xa8f24  1      OPC=nop             
  nop                                                   #  39    0xa8f25  1      OPC=nop             
  nop                                                   #  40    0xa8f26  1      OPC=nop             
.L_a8f20:                                               #        0xa8f27  0      OPC=<label>         
  movl %edi, %edi                                       #  41    0xa8f27  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  42    0xa8f29  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  43    0xa8f2d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  44    0xa8f2f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  45    0xa8f34  6      OPC=andl_r32_imm32  
  nop                                                   #  46    0xa8f3a  1      OPC=nop             
  nop                                                   #  47    0xa8f3b  1      OPC=nop             
  nop                                                   #  48    0xa8f3c  1      OPC=nop             
  addq %r15, %rax                                       #  49    0xa8f3d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  50    0xa8f40  2      OPC=jmpq_r64        
  nop                                                   #  51    0xa8f42  1      OPC=nop             
  nop                                                   #  52    0xa8f43  1      OPC=nop             
  nop                                                   #  53    0xa8f44  1      OPC=nop             
  nop                                                   #  54    0xa8f45  1      OPC=nop             
  nop                                                   #  55    0xa8f46  1      OPC=nop             
  nop                                                   #  56    0xa8f47  1      OPC=nop             
  nop                                                   #  57    0xa8f48  1      OPC=nop             
  nop                                                   #  58    0xa8f49  1      OPC=nop             
  nop                                                   #  59    0xa8f4a  1      OPC=nop             
  nop                                                   #  60    0xa8f4b  1      OPC=nop             
  nop                                                   #  61    0xa8f4c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv

