  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE2atEj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE2atEj, @function

#! file-offset 0x117140
#! rip-offset  0xd7140
#! capacity    96 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE2atEj:  #        0xd7140  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xd7140  2      OPC=movl_r32_r32    
  subl $0x8, %esp                        #  2     0xd7142  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xd7145  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xd7148  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax               #  5     0xd714a  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                  #  6     0xd714e  3      OPC=leal_r32_m16    
  movl %edx, %edx                        #  7     0xd7151  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi               #  8     0xd7153  4      OPC=cmpl_r32_m32    
  jae .L_d7180                           #  9     0xd7157  2      OPC=jae_label       
  addl $0x8, %esp                        #  10    0xd7159  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  11    0xd715c  3      OPC=addq_r64_r64    
  nop                                    #  12    0xd715f  1      OPC=nop             
  leal (%rax,%rsi,4), %eax               #  13    0xd7160  3      OPC=leal_r32_m16    
  popq %r11                              #  14    0xd7163  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  15    0xd7165  7      OPC=andl_r32_imm32  
  nop                                    #  16    0xd716c  1      OPC=nop             
  nop                                    #  17    0xd716d  1      OPC=nop             
  nop                                    #  18    0xd716e  1      OPC=nop             
  nop                                    #  19    0xd716f  1      OPC=nop             
  addq %r15, %r11                        #  20    0xd7170  3      OPC=addq_r64_r64    
  jmpq %r11                              #  21    0xd7173  3      OPC=jmpq_r64        
  xchgw %ax, %ax                         #  22    0xd7176  2      OPC=xchgw_ax_r16    
  nop                                    #  23    0xd7178  1      OPC=nop             
  nop                                    #  24    0xd7179  1      OPC=nop             
  nop                                    #  25    0xd717a  1      OPC=nop             
  nop                                    #  26    0xd717b  1      OPC=nop             
  nop                                    #  27    0xd717c  1      OPC=nop             
  nop                                    #  28    0xd717d  1      OPC=nop             
  nop                                    #  29    0xd717e  1      OPC=nop             
  nop                                    #  30    0xd717f  1      OPC=nop             
  nop                                    #  31    0xd7180  1      OPC=nop             
  nop                                    #  32    0xd7181  1      OPC=nop             
  nop                                    #  33    0xd7182  1      OPC=nop             
  nop                                    #  34    0xd7183  1      OPC=nop             
  nop                                    #  35    0xd7184  1      OPC=nop             
  nop                                    #  36    0xd7185  1      OPC=nop             
  nop                                    #  37    0xd7186  1      OPC=nop             
.L_d7180:                                #        0xd7187  0      OPC=<label>         
  movl $0x1003baac, %edi                 #  38    0xd7187  5      OPC=movl_r32_imm32  
  nop                                    #  39    0xd718c  1      OPC=nop             
  nop                                    #  40    0xd718d  1      OPC=nop             
  nop                                    #  41    0xd718e  1      OPC=nop             
  nop                                    #  42    0xd718f  1      OPC=nop             
  nop                                    #  43    0xd7190  1      OPC=nop             
  nop                                    #  44    0xd7191  1      OPC=nop             
  nop                                    #  45    0xd7192  1      OPC=nop             
  nop                                    #  46    0xd7193  1      OPC=nop             
  nop                                    #  47    0xd7194  1      OPC=nop             
  nop                                    #  48    0xd7195  1      OPC=nop             
  nop                                    #  49    0xd7196  1      OPC=nop             
  nop                                    #  50    0xd7197  1      OPC=nop             
  nop                                    #  51    0xd7198  1      OPC=nop             
  nop                                    #  52    0xd7199  1      OPC=nop             
  nop                                    #  53    0xd719a  1      OPC=nop             
  nop                                    #  54    0xd719b  1      OPC=nop             
  nop                                    #  55    0xd719c  1      OPC=nop             
  nop                                    #  56    0xd719d  1      OPC=nop             
  nop                                    #  57    0xd719e  1      OPC=nop             
  nop                                    #  58    0xd719f  1      OPC=nop             
  nop                                    #  59    0xd71a0  1      OPC=nop             
  nop                                    #  60    0xd71a1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc   #  61    0xd71a2  5      OPC=callq_label     
                                                                                      
.size _ZNKSbIwSt11char_traitsIwESaIwEE2atEj, .-_ZNKSbIwSt11char_traitsIwESaIwEE2atEj

