  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv, @function

#! file-offset 0xe9bc0
#! rip-offset  0xa9bc0
#! capacity    96 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv:  #        0xa9bc0  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xa9bc0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xa9bc2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                            #  3     0xa9bc4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                        #  4     0xa9bc9  2      OPC=movl_r32_r32    
  cmpl %eax, 0x4(%r15,%rdi,1)                            #  5     0xa9bcb  5      OPC=cmpl_m32_r32    
  jae .L_a9c00                                           #  6     0xa9bd0  2      OPC=jae_label       
  popq %r11                                              #  7     0xa9bd2  2      OPC=popq_r64_1      
  subl $0x4, %eax                                        #  8     0xa9bd4  3      OPC=subl_r32_imm8   
  movl %edi, %edi                                        #  9     0xa9bd7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                            #  10    0xa9bd9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                         #  11    0xa9bde  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                        #  12    0xa9be0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                               #  13    0xa9be2  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                                #  14    0xa9be6  7      OPC=andl_r32_imm32  
  nop                                                    #  15    0xa9bed  1      OPC=nop             
  nop                                                    #  16    0xa9bee  1      OPC=nop             
  nop                                                    #  17    0xa9bef  1      OPC=nop             
  nop                                                    #  18    0xa9bf0  1      OPC=nop             
  addq %r15, %r11                                        #  19    0xa9bf1  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  20    0xa9bf4  3      OPC=jmpq_r64        
  nop                                                    #  21    0xa9bf7  1      OPC=nop             
  nop                                                    #  22    0xa9bf8  1      OPC=nop             
  nop                                                    #  23    0xa9bf9  1      OPC=nop             
  nop                                                    #  24    0xa9bfa  1      OPC=nop             
  nop                                                    #  25    0xa9bfb  1      OPC=nop             
  nop                                                    #  26    0xa9bfc  1      OPC=nop             
  nop                                                    #  27    0xa9bfd  1      OPC=nop             
  nop                                                    #  28    0xa9bfe  1      OPC=nop             
  nop                                                    #  29    0xa9bff  1      OPC=nop             
  nop                                                    #  30    0xa9c00  1      OPC=nop             
  nop                                                    #  31    0xa9c01  1      OPC=nop             
  nop                                                    #  32    0xa9c02  1      OPC=nop             
  nop                                                    #  33    0xa9c03  1      OPC=nop             
  nop                                                    #  34    0xa9c04  1      OPC=nop             
  nop                                                    #  35    0xa9c05  1      OPC=nop             
  nop                                                    #  36    0xa9c06  1      OPC=nop             
.L_a9c00:                                                #        0xa9c07  0      OPC=<label>         
  movl %edi, %edi                                        #  37    0xa9c07  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  38    0xa9c09  4      OPC=movl_r32_m32    
  orl $0xffffffff, %esi                                  #  39    0xa9c0d  6      OPC=orl_r32_imm32   
  nop                                                    #  40    0xa9c13  1      OPC=nop             
  nop                                                    #  41    0xa9c14  1      OPC=nop             
  nop                                                    #  42    0xa9c15  1      OPC=nop             
  movl %eax, %eax                                        #  43    0xa9c16  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                           #  44    0xa9c18  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                 #  45    0xa9c1d  6      OPC=andl_r32_imm32  
  nop                                                    #  46    0xa9c23  1      OPC=nop             
  nop                                                    #  47    0xa9c24  1      OPC=nop             
  nop                                                    #  48    0xa9c25  1      OPC=nop             
  addq %r15, %rax                                        #  49    0xa9c26  3      OPC=addq_r64_r64    
  jmpq %rax                                              #  50    0xa9c29  2      OPC=jmpq_r64        
  nop                                                    #  51    0xa9c2b  1      OPC=nop             
  nop                                                    #  52    0xa9c2c  1      OPC=nop             
  nop                                                    #  53    0xa9c2d  1      OPC=nop             
  nop                                                    #  54    0xa9c2e  1      OPC=nop             
  nop                                                    #  55    0xa9c2f  1      OPC=nop             
  nop                                                    #  56    0xa9c30  1      OPC=nop             
  nop                                                    #  57    0xa9c31  1      OPC=nop             
  nop                                                    #  58    0xa9c32  1      OPC=nop             
                                                                                                      
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv

