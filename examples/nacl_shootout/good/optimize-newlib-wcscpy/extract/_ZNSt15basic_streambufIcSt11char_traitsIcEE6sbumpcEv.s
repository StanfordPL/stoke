  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv, @function

#! file-offset 0xe94c0
#! rip-offset  0xa94c0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv:  #        0xa94c0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa94c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa94c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                           #  3     0xa94c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa94c9  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rdi,1)                           #  5     0xa94cb  5      OPC=cmpl_m32_r32    
  jbe .L_a9500                                          #  6     0xa94d0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa94d2  2      OPC=popq_r64_1      
  movl %edx, %edx                                       #  8     0xa94d4  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %eax                            #  9     0xa94d6  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx                                       #  10    0xa94db  3      OPC=addl_r32_imm8   
  xchgw %ax, %ax                                        #  11    0xa94de  2      OPC=xchgw_ax_r16    
  movl %edi, %edi                                       #  12    0xa94e0  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                           #  13    0xa94e2  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                               #  14    0xa94e7  7      OPC=andl_r32_imm32  
  nop                                                   #  15    0xa94ee  1      OPC=nop             
  nop                                                   #  16    0xa94ef  1      OPC=nop             
  nop                                                   #  17    0xa94f0  1      OPC=nop             
  nop                                                   #  18    0xa94f1  1      OPC=nop             
  addq %r15, %r11                                       #  19    0xa94f2  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  20    0xa94f5  3      OPC=jmpq_r64        
  nop                                                   #  21    0xa94f8  1      OPC=nop             
  nop                                                   #  22    0xa94f9  1      OPC=nop             
  nop                                                   #  23    0xa94fa  1      OPC=nop             
  nop                                                   #  24    0xa94fb  1      OPC=nop             
  nop                                                   #  25    0xa94fc  1      OPC=nop             
  nop                                                   #  26    0xa94fd  1      OPC=nop             
  nop                                                   #  27    0xa94fe  1      OPC=nop             
  nop                                                   #  28    0xa94ff  1      OPC=nop             
  nop                                                   #  29    0xa9500  1      OPC=nop             
  nop                                                   #  30    0xa9501  1      OPC=nop             
  nop                                                   #  31    0xa9502  1      OPC=nop             
  nop                                                   #  32    0xa9503  1      OPC=nop             
  nop                                                   #  33    0xa9504  1      OPC=nop             
  nop                                                   #  34    0xa9505  1      OPC=nop             
  nop                                                   #  35    0xa9506  1      OPC=nop             
.L_a9500:                                               #        0xa9507  0      OPC=<label>         
  movl %edi, %edi                                       #  36    0xa9507  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  37    0xa9509  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  38    0xa950d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  39    0xa950f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  40    0xa9514  6      OPC=andl_r32_imm32  
  nop                                                   #  41    0xa951a  1      OPC=nop             
  nop                                                   #  42    0xa951b  1      OPC=nop             
  nop                                                   #  43    0xa951c  1      OPC=nop             
  addq %r15, %rax                                       #  44    0xa951d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  45    0xa9520  2      OPC=jmpq_r64        
  nop                                                   #  46    0xa9522  1      OPC=nop             
  nop                                                   #  47    0xa9523  1      OPC=nop             
  nop                                                   #  48    0xa9524  1      OPC=nop             
  nop                                                   #  49    0xa9525  1      OPC=nop             
  nop                                                   #  50    0xa9526  1      OPC=nop             
  nop                                                   #  51    0xa9527  1      OPC=nop             
  nop                                                   #  52    0xa9528  1      OPC=nop             
  nop                                                   #  53    0xa9529  1      OPC=nop             
  nop                                                   #  54    0xa952a  1      OPC=nop             
  nop                                                   #  55    0xa952b  1      OPC=nop             
  nop                                                   #  56    0xa952c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv

