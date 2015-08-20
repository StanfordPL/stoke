  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEED1Ev
  .type _ZNSbIwSt11char_traitsIwESaIwEED1Ev, @function

#! file-offset 0x117f20
#! rip-offset  0xd7f20
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEED1Ev:                            #        0xd7f20  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xd7f20  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                               #  2     0xd7f22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xd7f25  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xd7f28  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi                                       #  5     0xd7f2a  4      OPC=movl_r32_m32    
  subl $0xc, %edi                                                #  6     0xd7f2e  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %edi                                         #  7     0xd7f31  6      OPC=cmpl_r32_imm32  
  jne .L_d7f60                                                   #  8     0xd7f37  2      OPC=jne_label       
  nop                                                            #  9     0xd7f39  1      OPC=nop             
  nop                                                            #  10    0xd7f3a  1      OPC=nop             
  nop                                                            #  11    0xd7f3b  1      OPC=nop             
  nop                                                            #  12    0xd7f3c  1      OPC=nop             
  nop                                                            #  13    0xd7f3d  1      OPC=nop             
  nop                                                            #  14    0xd7f3e  1      OPC=nop             
  nop                                                            #  15    0xd7f3f  1      OPC=nop             
.L_d7f40:                                                        #        0xd7f40  0      OPC=<label>         
  addl $0x18, %esp                                               #  16    0xd7f40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  17    0xd7f43  3      OPC=addq_r64_r64    
  popq %r11                                                      #  18    0xd7f46  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  19    0xd7f48  7      OPC=andl_r32_imm32  
  nop                                                            #  20    0xd7f4f  1      OPC=nop             
  nop                                                            #  21    0xd7f50  1      OPC=nop             
  nop                                                            #  22    0xd7f51  1      OPC=nop             
  nop                                                            #  23    0xd7f52  1      OPC=nop             
  addq %r15, %r11                                                #  24    0xd7f53  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  25    0xd7f56  3      OPC=jmpq_r64        
  nop                                                            #  26    0xd7f59  1      OPC=nop             
  nop                                                            #  27    0xd7f5a  1      OPC=nop             
  nop                                                            #  28    0xd7f5b  1      OPC=nop             
  nop                                                            #  29    0xd7f5c  1      OPC=nop             
  nop                                                            #  30    0xd7f5d  1      OPC=nop             
  nop                                                            #  31    0xd7f5e  1      OPC=nop             
  nop                                                            #  32    0xd7f5f  1      OPC=nop             
  nop                                                            #  33    0xd7f60  1      OPC=nop             
  nop                                                            #  34    0xd7f61  1      OPC=nop             
  nop                                                            #  35    0xd7f62  1      OPC=nop             
  nop                                                            #  36    0xd7f63  1      OPC=nop             
  nop                                                            #  37    0xd7f64  1      OPC=nop             
  nop                                                            #  38    0xd7f65  1      OPC=nop             
  nop                                                            #  39    0xd7f66  1      OPC=nop             
.L_d7f60:                                                        #        0xd7f67  0      OPC=<label>         
  movl %edi, %edi                                                #  40    0xd7f67  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  41    0xd7f69  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                          #  42    0xd7f6e  3      OPC=leal_r32_m16    
  testl %eax, %eax                                               #  43    0xd7f71  2      OPC=testl_r32_r32   
  movl %edi, %edi                                                #  44    0xd7f73  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                    #  45    0xd7f75  5      OPC=movl_m32_r32    
  jg .L_d7f40                                                    #  46    0xd7f7a  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                                           #  47    0xd7f7c  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                                 #  48    0xd7f80  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  49    0xd7f82  5      OPC=callq_label     
  jmpq .L_d7f40                                                  #  50    0xd7f87  2      OPC=jmpq_label      
  nop                                                            #  51    0xd7f89  1      OPC=nop             
  nop                                                            #  52    0xd7f8a  1      OPC=nop             
  nop                                                            #  53    0xd7f8b  1      OPC=nop             
  nop                                                            #  54    0xd7f8c  1      OPC=nop             
  nop                                                            #  55    0xd7f8d  1      OPC=nop             
  nop                                                            #  56    0xd7f8e  1      OPC=nop             
  nop                                                            #  57    0xd7f8f  1      OPC=nop             
  nop                                                            #  58    0xd7f90  1      OPC=nop             
  nop                                                            #  59    0xd7f91  1      OPC=nop             
  nop                                                            #  60    0xd7f92  1      OPC=nop             
  nop                                                            #  61    0xd7f93  1      OPC=nop             
  nop                                                            #  62    0xd7f94  1      OPC=nop             
  nop                                                            #  63    0xd7f95  1      OPC=nop             
  nop                                                            #  64    0xd7f96  1      OPC=nop             
  nop                                                            #  65    0xd7f97  1      OPC=nop             
  nop                                                            #  66    0xd7f98  1      OPC=nop             
  nop                                                            #  67    0xd7f99  1      OPC=nop             
  nop                                                            #  68    0xd7f9a  1      OPC=nop             
  nop                                                            #  69    0xd7f9b  1      OPC=nop             
  nop                                                            #  70    0xd7f9c  1      OPC=nop             
  nop                                                            #  71    0xd7f9d  1      OPC=nop             
  nop                                                            #  72    0xd7f9e  1      OPC=nop             
  nop                                                            #  73    0xd7f9f  1      OPC=nop             
  nop                                                            #  74    0xd7fa0  1      OPC=nop             
  nop                                                            #  75    0xd7fa1  1      OPC=nop             
  nop                                                            #  76    0xd7fa2  1      OPC=nop             
  nop                                                            #  77    0xd7fa3  1      OPC=nop             
  nop                                                            #  78    0xd7fa4  1      OPC=nop             
  nop                                                            #  79    0xd7fa5  1      OPC=nop             
  nop                                                            #  80    0xd7fa6  1      OPC=nop             
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEED1Ev, .-_ZNSbIwSt11char_traitsIwESaIwEED1Ev

