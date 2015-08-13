  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv, @function

#! file-offset 0xe84c0
#! rip-offset  0xa84c0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv:  #        0xa84c0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa84c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa84c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                           #  3     0xa84c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa84c9  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                           #  5     0xa84cb  5      OPC=cmpl_m32_r32    
  jbe .L_a8500                                          #  6     0xa84d0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa84d2  2      OPC=popq_r64_1      
  addl $0x1, %eax                                       #  8     0xa84d4  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                       #  9     0xa84d7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                           #  10    0xa84d9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  11    0xa84de  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                               #  12    0xa84e0  7      OPC=andl_r32_imm32  
  nop                                                   #  13    0xa84e7  1      OPC=nop             
  nop                                                   #  14    0xa84e8  1      OPC=nop             
  nop                                                   #  15    0xa84e9  1      OPC=nop             
  nop                                                   #  16    0xa84ea  1      OPC=nop             
  addq %r15, %r11                                       #  17    0xa84eb  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  18    0xa84ee  3      OPC=jmpq_r64        
  nop                                                   #  19    0xa84f1  1      OPC=nop             
  nop                                                   #  20    0xa84f2  1      OPC=nop             
  nop                                                   #  21    0xa84f3  1      OPC=nop             
  nop                                                   #  22    0xa84f4  1      OPC=nop             
  nop                                                   #  23    0xa84f5  1      OPC=nop             
  nop                                                   #  24    0xa84f6  1      OPC=nop             
  nop                                                   #  25    0xa84f7  1      OPC=nop             
  nop                                                   #  26    0xa84f8  1      OPC=nop             
  nop                                                   #  27    0xa84f9  1      OPC=nop             
  nop                                                   #  28    0xa84fa  1      OPC=nop             
  nop                                                   #  29    0xa84fb  1      OPC=nop             
  nop                                                   #  30    0xa84fc  1      OPC=nop             
  nop                                                   #  31    0xa84fd  1      OPC=nop             
  nop                                                   #  32    0xa84fe  1      OPC=nop             
  nop                                                   #  33    0xa84ff  1      OPC=nop             
  nop                                                   #  34    0xa8500  1      OPC=nop             
  nop                                                   #  35    0xa8501  1      OPC=nop             
  nop                                                   #  36    0xa8502  1      OPC=nop             
  nop                                                   #  37    0xa8503  1      OPC=nop             
  nop                                                   #  38    0xa8504  1      OPC=nop             
  nop                                                   #  39    0xa8505  1      OPC=nop             
  nop                                                   #  40    0xa8506  1      OPC=nop             
.L_a8500:                                               #        0xa8507  0      OPC=<label>         
  movl %edi, %edi                                       #  41    0xa8507  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  42    0xa8509  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  43    0xa850d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  44    0xa850f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  45    0xa8514  6      OPC=andl_r32_imm32  
  nop                                                   #  46    0xa851a  1      OPC=nop             
  nop                                                   #  47    0xa851b  1      OPC=nop             
  nop                                                   #  48    0xa851c  1      OPC=nop             
  addq %r15, %rax                                       #  49    0xa851d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  50    0xa8520  2      OPC=jmpq_r64        
  nop                                                   #  51    0xa8522  1      OPC=nop             
  nop                                                   #  52    0xa8523  1      OPC=nop             
  nop                                                   #  53    0xa8524  1      OPC=nop             
  nop                                                   #  54    0xa8525  1      OPC=nop             
  nop                                                   #  55    0xa8526  1      OPC=nop             
  nop                                                   #  56    0xa8527  1      OPC=nop             
  nop                                                   #  57    0xa8528  1      OPC=nop             
  nop                                                   #  58    0xa8529  1      OPC=nop             
  nop                                                   #  59    0xa852a  1      OPC=nop             
  nop                                                   #  60    0xa852b  1      OPC=nop             
  nop                                                   #  61    0xa852c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv

