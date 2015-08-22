  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv, @function

#! file-offset 0xe9da0
#! rip-offset  0xa9da0
#! capacity    96 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv:  #        0xa9da0  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xa9da0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xa9da2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                            #  3     0xa9da4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                        #  4     0xa9da9  2      OPC=movl_r32_r32    
  cmpl %eax, 0x4(%r15,%rdi,1)                            #  5     0xa9dab  5      OPC=cmpl_m32_r32    
  jae .L_a9de0                                           #  6     0xa9db0  2      OPC=jae_label       
  popq %r11                                              #  7     0xa9db2  2      OPC=popq_r64_1      
  subl $0x1, %eax                                        #  8     0xa9db4  3      OPC=subl_r32_imm8   
  movl %edi, %edi                                        #  9     0xa9db7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                            #  10    0xa9db9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                         #  11    0xa9dbe  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                        #  12    0xa9dc0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %eax                             #  13    0xa9dc2  5      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                                #  14    0xa9dc7  7      OPC=andl_r32_imm32  
  nop                                                    #  15    0xa9dce  1      OPC=nop             
  nop                                                    #  16    0xa9dcf  1      OPC=nop             
  nop                                                    #  17    0xa9dd0  1      OPC=nop             
  nop                                                    #  18    0xa9dd1  1      OPC=nop             
  addq %r15, %r11                                        #  19    0xa9dd2  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  20    0xa9dd5  3      OPC=jmpq_r64        
  nop                                                    #  21    0xa9dd8  1      OPC=nop             
  nop                                                    #  22    0xa9dd9  1      OPC=nop             
  nop                                                    #  23    0xa9dda  1      OPC=nop             
  nop                                                    #  24    0xa9ddb  1      OPC=nop             
  nop                                                    #  25    0xa9ddc  1      OPC=nop             
  nop                                                    #  26    0xa9ddd  1      OPC=nop             
  nop                                                    #  27    0xa9dde  1      OPC=nop             
  nop                                                    #  28    0xa9ddf  1      OPC=nop             
  nop                                                    #  29    0xa9de0  1      OPC=nop             
  nop                                                    #  30    0xa9de1  1      OPC=nop             
  nop                                                    #  31    0xa9de2  1      OPC=nop             
  nop                                                    #  32    0xa9de3  1      OPC=nop             
  nop                                                    #  33    0xa9de4  1      OPC=nop             
  nop                                                    #  34    0xa9de5  1      OPC=nop             
  nop                                                    #  35    0xa9de6  1      OPC=nop             
.L_a9de0:                                                #        0xa9de7  0      OPC=<label>         
  movl %edi, %edi                                        #  36    0xa9de7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  37    0xa9de9  4      OPC=movl_r32_m32    
  orl $0xffffffff, %esi                                  #  38    0xa9ded  6      OPC=orl_r32_imm32   
  nop                                                    #  39    0xa9df3  1      OPC=nop             
  nop                                                    #  40    0xa9df4  1      OPC=nop             
  nop                                                    #  41    0xa9df5  1      OPC=nop             
  movl %eax, %eax                                        #  42    0xa9df6  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                           #  43    0xa9df8  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                 #  44    0xa9dfd  6      OPC=andl_r32_imm32  
  nop                                                    #  45    0xa9e03  1      OPC=nop             
  nop                                                    #  46    0xa9e04  1      OPC=nop             
  nop                                                    #  47    0xa9e05  1      OPC=nop             
  addq %r15, %rax                                        #  48    0xa9e06  3      OPC=addq_r64_r64    
  jmpq %rax                                              #  49    0xa9e09  2      OPC=jmpq_r64        
  nop                                                    #  50    0xa9e0b  1      OPC=nop             
  nop                                                    #  51    0xa9e0c  1      OPC=nop             
  nop                                                    #  52    0xa9e0d  1      OPC=nop             
  nop                                                    #  53    0xa9e0e  1      OPC=nop             
  nop                                                    #  54    0xa9e0f  1      OPC=nop             
  nop                                                    #  55    0xa9e10  1      OPC=nop             
  nop                                                    #  56    0xa9e11  1      OPC=nop             
  nop                                                    #  57    0xa9e12  1      OPC=nop             
                                                                                                      
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv

