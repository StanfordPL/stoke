  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv, @function

#! file-offset 0xe94a0
#! rip-offset  0xa94a0
#! capacity    96 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv:  #        0xa94a0  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xa94a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xa94a2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                            #  3     0xa94a4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                        #  4     0xa94a9  2      OPC=movl_r32_r32    
  cmpl %eax, 0x4(%r15,%rdi,1)                            #  5     0xa94ab  5      OPC=cmpl_m32_r32    
  jae .L_a94e0                                           #  6     0xa94b0  2      OPC=jae_label       
  popq %r11                                              #  7     0xa94b2  2      OPC=popq_r64_1      
  subl $0x4, %eax                                        #  8     0xa94b4  3      OPC=subl_r32_imm8   
  movl %edi, %edi                                        #  9     0xa94b7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                            #  10    0xa94b9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                         #  11    0xa94be  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                        #  12    0xa94c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                               #  13    0xa94c2  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                                #  14    0xa94c6  7      OPC=andl_r32_imm32  
  nop                                                    #  15    0xa94cd  1      OPC=nop             
  nop                                                    #  16    0xa94ce  1      OPC=nop             
  nop                                                    #  17    0xa94cf  1      OPC=nop             
  nop                                                    #  18    0xa94d0  1      OPC=nop             
  addq %r15, %r11                                        #  19    0xa94d1  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  20    0xa94d4  3      OPC=jmpq_r64        
  nop                                                    #  21    0xa94d7  1      OPC=nop             
  nop                                                    #  22    0xa94d8  1      OPC=nop             
  nop                                                    #  23    0xa94d9  1      OPC=nop             
  nop                                                    #  24    0xa94da  1      OPC=nop             
  nop                                                    #  25    0xa94db  1      OPC=nop             
  nop                                                    #  26    0xa94dc  1      OPC=nop             
  nop                                                    #  27    0xa94dd  1      OPC=nop             
  nop                                                    #  28    0xa94de  1      OPC=nop             
  nop                                                    #  29    0xa94df  1      OPC=nop             
  nop                                                    #  30    0xa94e0  1      OPC=nop             
  nop                                                    #  31    0xa94e1  1      OPC=nop             
  nop                                                    #  32    0xa94e2  1      OPC=nop             
  nop                                                    #  33    0xa94e3  1      OPC=nop             
  nop                                                    #  34    0xa94e4  1      OPC=nop             
  nop                                                    #  35    0xa94e5  1      OPC=nop             
  nop                                                    #  36    0xa94e6  1      OPC=nop             
.L_a94e0:                                                #        0xa94e7  0      OPC=<label>         
  movl %edi, %edi                                        #  37    0xa94e7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  38    0xa94e9  4      OPC=movl_r32_m32    
  orl $0xffffffff, %esi                                  #  39    0xa94ed  6      OPC=orl_r32_imm32   
  nop                                                    #  40    0xa94f3  1      OPC=nop             
  nop                                                    #  41    0xa94f4  1      OPC=nop             
  nop                                                    #  42    0xa94f5  1      OPC=nop             
  movl %eax, %eax                                        #  43    0xa94f6  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                           #  44    0xa94f8  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                 #  45    0xa94fd  6      OPC=andl_r32_imm32  
  nop                                                    #  46    0xa9503  1      OPC=nop             
  nop                                                    #  47    0xa9504  1      OPC=nop             
  nop                                                    #  48    0xa9505  1      OPC=nop             
  addq %r15, %rax                                        #  49    0xa9506  3      OPC=addq_r64_r64    
  jmpq %rax                                              #  50    0xa9509  2      OPC=jmpq_r64        
  nop                                                    #  51    0xa950b  1      OPC=nop             
  nop                                                    #  52    0xa950c  1      OPC=nop             
  nop                                                    #  53    0xa950d  1      OPC=nop             
  nop                                                    #  54    0xa950e  1      OPC=nop             
  nop                                                    #  55    0xa950f  1      OPC=nop             
  nop                                                    #  56    0xa9510  1      OPC=nop             
  nop                                                    #  57    0xa9511  1      OPC=nop             
  nop                                                    #  58    0xa9512  1      OPC=nop             
                                                                                                      
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv

