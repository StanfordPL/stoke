  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv, @function

#! file-offset 0xe91a0
#! rip-offset  0xa91a0
#! capacity    96 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv:  #        0xa91a0  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xa91a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xa91a2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                            #  3     0xa91a4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                        #  4     0xa91a9  2      OPC=movl_r32_r32    
  cmpl %eax, 0x4(%r15,%rdi,1)                            #  5     0xa91ab  5      OPC=cmpl_m32_r32    
  jae .L_a91e0                                           #  6     0xa91b0  2      OPC=jae_label       
  popq %r11                                              #  7     0xa91b2  2      OPC=popq_r64_1      
  subl $0x4, %eax                                        #  8     0xa91b4  3      OPC=subl_r32_imm8   
  movl %edi, %edi                                        #  9     0xa91b7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                            #  10    0xa91b9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                         #  11    0xa91be  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                        #  12    0xa91c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                               #  13    0xa91c2  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                                #  14    0xa91c6  7      OPC=andl_r32_imm32  
  nop                                                    #  15    0xa91cd  1      OPC=nop             
  nop                                                    #  16    0xa91ce  1      OPC=nop             
  nop                                                    #  17    0xa91cf  1      OPC=nop             
  nop                                                    #  18    0xa91d0  1      OPC=nop             
  addq %r15, %r11                                        #  19    0xa91d1  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  20    0xa91d4  3      OPC=jmpq_r64        
  nop                                                    #  21    0xa91d7  1      OPC=nop             
  nop                                                    #  22    0xa91d8  1      OPC=nop             
  nop                                                    #  23    0xa91d9  1      OPC=nop             
  nop                                                    #  24    0xa91da  1      OPC=nop             
  nop                                                    #  25    0xa91db  1      OPC=nop             
  nop                                                    #  26    0xa91dc  1      OPC=nop             
  nop                                                    #  27    0xa91dd  1      OPC=nop             
  nop                                                    #  28    0xa91de  1      OPC=nop             
  nop                                                    #  29    0xa91df  1      OPC=nop             
  nop                                                    #  30    0xa91e0  1      OPC=nop             
  nop                                                    #  31    0xa91e1  1      OPC=nop             
  nop                                                    #  32    0xa91e2  1      OPC=nop             
  nop                                                    #  33    0xa91e3  1      OPC=nop             
  nop                                                    #  34    0xa91e4  1      OPC=nop             
  nop                                                    #  35    0xa91e5  1      OPC=nop             
  nop                                                    #  36    0xa91e6  1      OPC=nop             
.L_a91e0:                                                #        0xa91e7  0      OPC=<label>         
  movl %edi, %edi                                        #  37    0xa91e7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  38    0xa91e9  4      OPC=movl_r32_m32    
  orl $0xffffffff, %esi                                  #  39    0xa91ed  6      OPC=orl_r32_imm32   
  nop                                                    #  40    0xa91f3  1      OPC=nop             
  nop                                                    #  41    0xa91f4  1      OPC=nop             
  nop                                                    #  42    0xa91f5  1      OPC=nop             
  movl %eax, %eax                                        #  43    0xa91f6  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                           #  44    0xa91f8  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                 #  45    0xa91fd  6      OPC=andl_r32_imm32  
  nop                                                    #  46    0xa9203  1      OPC=nop             
  nop                                                    #  47    0xa9204  1      OPC=nop             
  nop                                                    #  48    0xa9205  1      OPC=nop             
  addq %r15, %rax                                        #  49    0xa9206  3      OPC=addq_r64_r64    
  jmpq %rax                                              #  50    0xa9209  2      OPC=jmpq_r64        
  nop                                                    #  51    0xa920b  1      OPC=nop             
  nop                                                    #  52    0xa920c  1      OPC=nop             
  nop                                                    #  53    0xa920d  1      OPC=nop             
  nop                                                    #  54    0xa920e  1      OPC=nop             
  nop                                                    #  55    0xa920f  1      OPC=nop             
  nop                                                    #  56    0xa9210  1      OPC=nop             
  nop                                                    #  57    0xa9211  1      OPC=nop             
  nop                                                    #  58    0xa9212  1      OPC=nop             
                                                                                                      
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv

