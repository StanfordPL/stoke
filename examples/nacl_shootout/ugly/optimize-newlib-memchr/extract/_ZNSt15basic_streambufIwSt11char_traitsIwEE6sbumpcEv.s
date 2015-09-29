  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv, @function

#! file-offset 0xe9ce0
#! rip-offset  0xa9ce0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv:  #        0xa9ce0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa9ce0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa9ce2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                           #  3     0xa9ce4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa9ce9  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rdi,1)                           #  5     0xa9ceb  5      OPC=cmpl_m32_r32    
  jbe .L_a9d20                                          #  6     0xa9cf0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa9cf2  2      OPC=popq_r64_1      
  movl %edx, %edx                                       #  8     0xa9cf4  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax                              #  9     0xa9cf6  4      OPC=movl_r32_m32    
  addl $0x4, %edx                                       #  10    0xa9cfa  3      OPC=addl_r32_imm8   
  nop                                                   #  11    0xa9cfd  1      OPC=nop             
  nop                                                   #  12    0xa9cfe  1      OPC=nop             
  nop                                                   #  13    0xa9cff  1      OPC=nop             
  movl %edi, %edi                                       #  14    0xa9d00  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                           #  15    0xa9d02  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                               #  16    0xa9d07  7      OPC=andl_r32_imm32  
  nop                                                   #  17    0xa9d0e  1      OPC=nop             
  nop                                                   #  18    0xa9d0f  1      OPC=nop             
  nop                                                   #  19    0xa9d10  1      OPC=nop             
  nop                                                   #  20    0xa9d11  1      OPC=nop             
  addq %r15, %r11                                       #  21    0xa9d12  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  22    0xa9d15  3      OPC=jmpq_r64        
  nop                                                   #  23    0xa9d18  1      OPC=nop             
  nop                                                   #  24    0xa9d19  1      OPC=nop             
  nop                                                   #  25    0xa9d1a  1      OPC=nop             
  nop                                                   #  26    0xa9d1b  1      OPC=nop             
  nop                                                   #  27    0xa9d1c  1      OPC=nop             
  nop                                                   #  28    0xa9d1d  1      OPC=nop             
  nop                                                   #  29    0xa9d1e  1      OPC=nop             
  nop                                                   #  30    0xa9d1f  1      OPC=nop             
  nop                                                   #  31    0xa9d20  1      OPC=nop             
  nop                                                   #  32    0xa9d21  1      OPC=nop             
  nop                                                   #  33    0xa9d22  1      OPC=nop             
  nop                                                   #  34    0xa9d23  1      OPC=nop             
  nop                                                   #  35    0xa9d24  1      OPC=nop             
  nop                                                   #  36    0xa9d25  1      OPC=nop             
  nop                                                   #  37    0xa9d26  1      OPC=nop             
.L_a9d20:                                               #        0xa9d27  0      OPC=<label>         
  movl %edi, %edi                                       #  38    0xa9d27  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  39    0xa9d29  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  40    0xa9d2d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  41    0xa9d2f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  42    0xa9d34  6      OPC=andl_r32_imm32  
  nop                                                   #  43    0xa9d3a  1      OPC=nop             
  nop                                                   #  44    0xa9d3b  1      OPC=nop             
  nop                                                   #  45    0xa9d3c  1      OPC=nop             
  addq %r15, %rax                                       #  46    0xa9d3d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  47    0xa9d40  2      OPC=jmpq_r64        
  nop                                                   #  48    0xa9d42  1      OPC=nop             
  nop                                                   #  49    0xa9d43  1      OPC=nop             
  nop                                                   #  50    0xa9d44  1      OPC=nop             
  nop                                                   #  51    0xa9d45  1      OPC=nop             
  nop                                                   #  52    0xa9d46  1      OPC=nop             
  nop                                                   #  53    0xa9d47  1      OPC=nop             
  nop                                                   #  54    0xa9d48  1      OPC=nop             
  nop                                                   #  55    0xa9d49  1      OPC=nop             
  nop                                                   #  56    0xa9d4a  1      OPC=nop             
  nop                                                   #  57    0xa9d4b  1      OPC=nop             
  nop                                                   #  58    0xa9d4c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE6sbumpcEv

