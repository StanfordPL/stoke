  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv, @function

#! file-offset 0xe9ee0
#! rip-offset  0xa9ee0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv:  #        0xa9ee0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa9ee0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa9ee2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                           #  3     0xa9ee4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa9ee9  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rdi,1)                           #  5     0xa9eeb  5      OPC=cmpl_m32_r32    
  jbe .L_a9f20                                          #  6     0xa9ef0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa9ef2  2      OPC=popq_r64_1      
  movl %edx, %edx                                       #  8     0xa9ef4  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %eax                            #  9     0xa9ef6  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx                                       #  10    0xa9efb  3      OPC=addl_r32_imm8   
  xchgw %ax, %ax                                        #  11    0xa9efe  2      OPC=xchgw_ax_r16    
  movl %edi, %edi                                       #  12    0xa9f00  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                           #  13    0xa9f02  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                               #  14    0xa9f07  7      OPC=andl_r32_imm32  
  nop                                                   #  15    0xa9f0e  1      OPC=nop             
  nop                                                   #  16    0xa9f0f  1      OPC=nop             
  nop                                                   #  17    0xa9f10  1      OPC=nop             
  nop                                                   #  18    0xa9f11  1      OPC=nop             
  addq %r15, %r11                                       #  19    0xa9f12  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  20    0xa9f15  3      OPC=jmpq_r64        
  nop                                                   #  21    0xa9f18  1      OPC=nop             
  nop                                                   #  22    0xa9f19  1      OPC=nop             
  nop                                                   #  23    0xa9f1a  1      OPC=nop             
  nop                                                   #  24    0xa9f1b  1      OPC=nop             
  nop                                                   #  25    0xa9f1c  1      OPC=nop             
  nop                                                   #  26    0xa9f1d  1      OPC=nop             
  nop                                                   #  27    0xa9f1e  1      OPC=nop             
  nop                                                   #  28    0xa9f1f  1      OPC=nop             
  nop                                                   #  29    0xa9f20  1      OPC=nop             
  nop                                                   #  30    0xa9f21  1      OPC=nop             
  nop                                                   #  31    0xa9f22  1      OPC=nop             
  nop                                                   #  32    0xa9f23  1      OPC=nop             
  nop                                                   #  33    0xa9f24  1      OPC=nop             
  nop                                                   #  34    0xa9f25  1      OPC=nop             
  nop                                                   #  35    0xa9f26  1      OPC=nop             
.L_a9f20:                                               #        0xa9f27  0      OPC=<label>         
  movl %edi, %edi                                       #  36    0xa9f27  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  37    0xa9f29  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  38    0xa9f2d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  39    0xa9f2f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  40    0xa9f34  6      OPC=andl_r32_imm32  
  nop                                                   #  41    0xa9f3a  1      OPC=nop             
  nop                                                   #  42    0xa9f3b  1      OPC=nop             
  nop                                                   #  43    0xa9f3c  1      OPC=nop             
  addq %r15, %rax                                       #  44    0xa9f3d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  45    0xa9f40  2      OPC=jmpq_r64        
  nop                                                   #  46    0xa9f42  1      OPC=nop             
  nop                                                   #  47    0xa9f43  1      OPC=nop             
  nop                                                   #  48    0xa9f44  1      OPC=nop             
  nop                                                   #  49    0xa9f45  1      OPC=nop             
  nop                                                   #  50    0xa9f46  1      OPC=nop             
  nop                                                   #  51    0xa9f47  1      OPC=nop             
  nop                                                   #  52    0xa9f48  1      OPC=nop             
  nop                                                   #  53    0xa9f49  1      OPC=nop             
  nop                                                   #  54    0xa9f4a  1      OPC=nop             
  nop                                                   #  55    0xa9f4b  1      OPC=nop             
  nop                                                   #  56    0xa9f4c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv

