  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv, @function

#! file-offset 0xe89c0
#! rip-offset  0xa89c0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv:  #        0xa89c0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa89c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa89c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                           #  3     0xa89c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa89c9  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                           #  5     0xa89cb  5      OPC=cmpl_m32_r32    
  jbe .L_a8a00                                          #  6     0xa89d0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa89d2  2      OPC=popq_r64_1      
  addl $0x4, %eax                                       #  8     0xa89d4  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                       #  9     0xa89d7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                           #  10    0xa89d9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  11    0xa89de  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                               #  12    0xa89e0  7      OPC=andl_r32_imm32  
  nop                                                   #  13    0xa89e7  1      OPC=nop             
  nop                                                   #  14    0xa89e8  1      OPC=nop             
  nop                                                   #  15    0xa89e9  1      OPC=nop             
  nop                                                   #  16    0xa89ea  1      OPC=nop             
  addq %r15, %r11                                       #  17    0xa89eb  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  18    0xa89ee  3      OPC=jmpq_r64        
  nop                                                   #  19    0xa89f1  1      OPC=nop             
  nop                                                   #  20    0xa89f2  1      OPC=nop             
  nop                                                   #  21    0xa89f3  1      OPC=nop             
  nop                                                   #  22    0xa89f4  1      OPC=nop             
  nop                                                   #  23    0xa89f5  1      OPC=nop             
  nop                                                   #  24    0xa89f6  1      OPC=nop             
  nop                                                   #  25    0xa89f7  1      OPC=nop             
  nop                                                   #  26    0xa89f8  1      OPC=nop             
  nop                                                   #  27    0xa89f9  1      OPC=nop             
  nop                                                   #  28    0xa89fa  1      OPC=nop             
  nop                                                   #  29    0xa89fb  1      OPC=nop             
  nop                                                   #  30    0xa89fc  1      OPC=nop             
  nop                                                   #  31    0xa89fd  1      OPC=nop             
  nop                                                   #  32    0xa89fe  1      OPC=nop             
  nop                                                   #  33    0xa89ff  1      OPC=nop             
  nop                                                   #  34    0xa8a00  1      OPC=nop             
  nop                                                   #  35    0xa8a01  1      OPC=nop             
  nop                                                   #  36    0xa8a02  1      OPC=nop             
  nop                                                   #  37    0xa8a03  1      OPC=nop             
  nop                                                   #  38    0xa8a04  1      OPC=nop             
  nop                                                   #  39    0xa8a05  1      OPC=nop             
  nop                                                   #  40    0xa8a06  1      OPC=nop             
.L_a8a00:                                               #        0xa8a07  0      OPC=<label>         
  movl %edi, %edi                                       #  41    0xa8a07  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  42    0xa8a09  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  43    0xa8a0d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  44    0xa8a0f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  45    0xa8a14  6      OPC=andl_r32_imm32  
  nop                                                   #  46    0xa8a1a  1      OPC=nop             
  nop                                                   #  47    0xa8a1b  1      OPC=nop             
  nop                                                   #  48    0xa8a1c  1      OPC=nop             
  addq %r15, %rax                                       #  49    0xa8a1d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  50    0xa8a20  2      OPC=jmpq_r64        
  nop                                                   #  51    0xa8a22  1      OPC=nop             
  nop                                                   #  52    0xa8a23  1      OPC=nop             
  nop                                                   #  53    0xa8a24  1      OPC=nop             
  nop                                                   #  54    0xa8a25  1      OPC=nop             
  nop                                                   #  55    0xa8a26  1      OPC=nop             
  nop                                                   #  56    0xa8a27  1      OPC=nop             
  nop                                                   #  57    0xa8a28  1      OPC=nop             
  nop                                                   #  58    0xa8a29  1      OPC=nop             
  nop                                                   #  59    0xa8a2a  1      OPC=nop             
  nop                                                   #  60    0xa8a2b  1      OPC=nop             
  nop                                                   #  61    0xa8a2c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE6stosscEv

