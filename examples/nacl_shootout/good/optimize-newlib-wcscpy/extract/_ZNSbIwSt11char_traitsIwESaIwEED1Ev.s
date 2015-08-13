  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEED1Ev
  .type _ZNSbIwSt11char_traitsIwESaIwEED1Ev, @function

#! file-offset 0x117c20
#! rip-offset  0xd7c20
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEED1Ev:                            #        0xd7c20  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xd7c20  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                               #  2     0xd7c22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xd7c25  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xd7c28  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi                                       #  5     0xd7c2a  4      OPC=movl_r32_m32    
  subl $0xc, %edi                                                #  6     0xd7c2e  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %edi                                         #  7     0xd7c31  6      OPC=cmpl_r32_imm32  
  jne .L_d7c60                                                   #  8     0xd7c37  2      OPC=jne_label       
  nop                                                            #  9     0xd7c39  1      OPC=nop             
  nop                                                            #  10    0xd7c3a  1      OPC=nop             
  nop                                                            #  11    0xd7c3b  1      OPC=nop             
  nop                                                            #  12    0xd7c3c  1      OPC=nop             
  nop                                                            #  13    0xd7c3d  1      OPC=nop             
  nop                                                            #  14    0xd7c3e  1      OPC=nop             
  nop                                                            #  15    0xd7c3f  1      OPC=nop             
.L_d7c40:                                                        #        0xd7c40  0      OPC=<label>         
  addl $0x18, %esp                                               #  16    0xd7c40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  17    0xd7c43  3      OPC=addq_r64_r64    
  popq %r11                                                      #  18    0xd7c46  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  19    0xd7c48  7      OPC=andl_r32_imm32  
  nop                                                            #  20    0xd7c4f  1      OPC=nop             
  nop                                                            #  21    0xd7c50  1      OPC=nop             
  nop                                                            #  22    0xd7c51  1      OPC=nop             
  nop                                                            #  23    0xd7c52  1      OPC=nop             
  addq %r15, %r11                                                #  24    0xd7c53  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  25    0xd7c56  3      OPC=jmpq_r64        
  nop                                                            #  26    0xd7c59  1      OPC=nop             
  nop                                                            #  27    0xd7c5a  1      OPC=nop             
  nop                                                            #  28    0xd7c5b  1      OPC=nop             
  nop                                                            #  29    0xd7c5c  1      OPC=nop             
  nop                                                            #  30    0xd7c5d  1      OPC=nop             
  nop                                                            #  31    0xd7c5e  1      OPC=nop             
  nop                                                            #  32    0xd7c5f  1      OPC=nop             
  nop                                                            #  33    0xd7c60  1      OPC=nop             
  nop                                                            #  34    0xd7c61  1      OPC=nop             
  nop                                                            #  35    0xd7c62  1      OPC=nop             
  nop                                                            #  36    0xd7c63  1      OPC=nop             
  nop                                                            #  37    0xd7c64  1      OPC=nop             
  nop                                                            #  38    0xd7c65  1      OPC=nop             
  nop                                                            #  39    0xd7c66  1      OPC=nop             
.L_d7c60:                                                        #        0xd7c67  0      OPC=<label>         
  movl %edi, %edi                                                #  40    0xd7c67  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  41    0xd7c69  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                          #  42    0xd7c6e  3      OPC=leal_r32_m16    
  testl %eax, %eax                                               #  43    0xd7c71  2      OPC=testl_r32_r32   
  movl %edi, %edi                                                #  44    0xd7c73  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                    #  45    0xd7c75  5      OPC=movl_m32_r32    
  jg .L_d7c40                                                    #  46    0xd7c7a  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                                           #  47    0xd7c7c  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                                 #  48    0xd7c80  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  49    0xd7c82  5      OPC=callq_label     
  jmpq .L_d7c40                                                  #  50    0xd7c87  2      OPC=jmpq_label      
  nop                                                            #  51    0xd7c89  1      OPC=nop             
  nop                                                            #  52    0xd7c8a  1      OPC=nop             
  nop                                                            #  53    0xd7c8b  1      OPC=nop             
  nop                                                            #  54    0xd7c8c  1      OPC=nop             
  nop                                                            #  55    0xd7c8d  1      OPC=nop             
  nop                                                            #  56    0xd7c8e  1      OPC=nop             
  nop                                                            #  57    0xd7c8f  1      OPC=nop             
  nop                                                            #  58    0xd7c90  1      OPC=nop             
  nop                                                            #  59    0xd7c91  1      OPC=nop             
  nop                                                            #  60    0xd7c92  1      OPC=nop             
  nop                                                            #  61    0xd7c93  1      OPC=nop             
  nop                                                            #  62    0xd7c94  1      OPC=nop             
  nop                                                            #  63    0xd7c95  1      OPC=nop             
  nop                                                            #  64    0xd7c96  1      OPC=nop             
  nop                                                            #  65    0xd7c97  1      OPC=nop             
  nop                                                            #  66    0xd7c98  1      OPC=nop             
  nop                                                            #  67    0xd7c99  1      OPC=nop             
  nop                                                            #  68    0xd7c9a  1      OPC=nop             
  nop                                                            #  69    0xd7c9b  1      OPC=nop             
  nop                                                            #  70    0xd7c9c  1      OPC=nop             
  nop                                                            #  71    0xd7c9d  1      OPC=nop             
  nop                                                            #  72    0xd7c9e  1      OPC=nop             
  nop                                                            #  73    0xd7c9f  1      OPC=nop             
  nop                                                            #  74    0xd7ca0  1      OPC=nop             
  nop                                                            #  75    0xd7ca1  1      OPC=nop             
  nop                                                            #  76    0xd7ca2  1      OPC=nop             
  nop                                                            #  77    0xd7ca3  1      OPC=nop             
  nop                                                            #  78    0xd7ca4  1      OPC=nop             
  nop                                                            #  79    0xd7ca5  1      OPC=nop             
  nop                                                            #  80    0xd7ca6  1      OPC=nop             
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEED1Ev, .-_ZNSbIwSt11char_traitsIwESaIwEED1Ev

