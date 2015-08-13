  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv, @function

#! file-offset 0xe9380
#! rip-offset  0xa9380
#! capacity    96 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv:  #        0xa9380  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xa9380  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xa9382  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                            #  3     0xa9384  5      OPC=movl_r32_m32    
  movl %edi, %edi                                        #  4     0xa9389  2      OPC=movl_r32_r32    
  cmpl %eax, 0x4(%r15,%rdi,1)                            #  5     0xa938b  5      OPC=cmpl_m32_r32    
  jae .L_a93c0                                           #  6     0xa9390  2      OPC=jae_label       
  popq %r11                                              #  7     0xa9392  2      OPC=popq_r64_1      
  subl $0x1, %eax                                        #  8     0xa9394  3      OPC=subl_r32_imm8   
  movl %edi, %edi                                        #  9     0xa9397  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                            #  10    0xa9399  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                         #  11    0xa939e  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                        #  12    0xa93a0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %eax                             #  13    0xa93a2  5      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                                #  14    0xa93a7  7      OPC=andl_r32_imm32  
  nop                                                    #  15    0xa93ae  1      OPC=nop             
  nop                                                    #  16    0xa93af  1      OPC=nop             
  nop                                                    #  17    0xa93b0  1      OPC=nop             
  nop                                                    #  18    0xa93b1  1      OPC=nop             
  addq %r15, %r11                                        #  19    0xa93b2  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  20    0xa93b5  3      OPC=jmpq_r64        
  nop                                                    #  21    0xa93b8  1      OPC=nop             
  nop                                                    #  22    0xa93b9  1      OPC=nop             
  nop                                                    #  23    0xa93ba  1      OPC=nop             
  nop                                                    #  24    0xa93bb  1      OPC=nop             
  nop                                                    #  25    0xa93bc  1      OPC=nop             
  nop                                                    #  26    0xa93bd  1      OPC=nop             
  nop                                                    #  27    0xa93be  1      OPC=nop             
  nop                                                    #  28    0xa93bf  1      OPC=nop             
  nop                                                    #  29    0xa93c0  1      OPC=nop             
  nop                                                    #  30    0xa93c1  1      OPC=nop             
  nop                                                    #  31    0xa93c2  1      OPC=nop             
  nop                                                    #  32    0xa93c3  1      OPC=nop             
  nop                                                    #  33    0xa93c4  1      OPC=nop             
  nop                                                    #  34    0xa93c5  1      OPC=nop             
  nop                                                    #  35    0xa93c6  1      OPC=nop             
.L_a93c0:                                                #        0xa93c7  0      OPC=<label>         
  movl %edi, %edi                                        #  36    0xa93c7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  37    0xa93c9  4      OPC=movl_r32_m32    
  orl $0xffffffff, %esi                                  #  38    0xa93cd  6      OPC=orl_r32_imm32   
  nop                                                    #  39    0xa93d3  1      OPC=nop             
  nop                                                    #  40    0xa93d4  1      OPC=nop             
  nop                                                    #  41    0xa93d5  1      OPC=nop             
  movl %eax, %eax                                        #  42    0xa93d6  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %eax                           #  43    0xa93d8  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                 #  44    0xa93dd  6      OPC=andl_r32_imm32  
  nop                                                    #  45    0xa93e3  1      OPC=nop             
  nop                                                    #  46    0xa93e4  1      OPC=nop             
  nop                                                    #  47    0xa93e5  1      OPC=nop             
  addq %r15, %rax                                        #  48    0xa93e6  3      OPC=addq_r64_r64    
  jmpq %rax                                              #  49    0xa93e9  2      OPC=jmpq_r64        
  nop                                                    #  50    0xa93eb  1      OPC=nop             
  nop                                                    #  51    0xa93ec  1      OPC=nop             
  nop                                                    #  52    0xa93ed  1      OPC=nop             
  nop                                                    #  53    0xa93ee  1      OPC=nop             
  nop                                                    #  54    0xa93ef  1      OPC=nop             
  nop                                                    #  55    0xa93f0  1      OPC=nop             
  nop                                                    #  56    0xa93f1  1      OPC=nop             
  nop                                                    #  57    0xa93f2  1      OPC=nop             
                                                                                                      
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv

