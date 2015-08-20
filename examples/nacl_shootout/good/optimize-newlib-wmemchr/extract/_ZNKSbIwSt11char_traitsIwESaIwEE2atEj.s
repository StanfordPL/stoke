  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE2atEj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE2atEj, @function

#! file-offset 0x116a20
#! rip-offset  0xd6a20
#! capacity    96 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE2atEj:  #        0xd6a20  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xd6a20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                        #  2     0xd6a22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xd6a25  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xd6a28  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax               #  5     0xd6a2a  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                  #  6     0xd6a2e  3      OPC=leal_r32_m16    
  movl %edx, %edx                        #  7     0xd6a31  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi               #  8     0xd6a33  4      OPC=cmpl_r32_m32    
  jae .L_d6a60                           #  9     0xd6a37  2      OPC=jae_label       
  addl $0x8, %esp                        #  10    0xd6a39  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  11    0xd6a3c  3      OPC=addq_r64_r64    
  nop                                    #  12    0xd6a3f  1      OPC=nop             
  leal (%rax,%rsi,4), %eax               #  13    0xd6a40  3      OPC=leal_r32_m16    
  popq %r11                              #  14    0xd6a43  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  15    0xd6a45  7      OPC=andl_r32_imm32  
  nop                                    #  16    0xd6a4c  1      OPC=nop             
  nop                                    #  17    0xd6a4d  1      OPC=nop             
  nop                                    #  18    0xd6a4e  1      OPC=nop             
  nop                                    #  19    0xd6a4f  1      OPC=nop             
  addq %r15, %r11                        #  20    0xd6a50  3      OPC=addq_r64_r64    
  jmpq %r11                              #  21    0xd6a53  3      OPC=jmpq_r64        
  xchgw %ax, %ax                         #  22    0xd6a56  2      OPC=xchgw_ax_r16    
  nop                                    #  23    0xd6a58  1      OPC=nop             
  nop                                    #  24    0xd6a59  1      OPC=nop             
  nop                                    #  25    0xd6a5a  1      OPC=nop             
  nop                                    #  26    0xd6a5b  1      OPC=nop             
  nop                                    #  27    0xd6a5c  1      OPC=nop             
  nop                                    #  28    0xd6a5d  1      OPC=nop             
  nop                                    #  29    0xd6a5e  1      OPC=nop             
  nop                                    #  30    0xd6a5f  1      OPC=nop             
  nop                                    #  31    0xd6a60  1      OPC=nop             
  nop                                    #  32    0xd6a61  1      OPC=nop             
  nop                                    #  33    0xd6a62  1      OPC=nop             
  nop                                    #  34    0xd6a63  1      OPC=nop             
  nop                                    #  35    0xd6a64  1      OPC=nop             
  nop                                    #  36    0xd6a65  1      OPC=nop             
  nop                                    #  37    0xd6a66  1      OPC=nop             
.L_d6a60:                                #        0xd6a67  0      OPC=<label>         
  movl $0x1003baac, %edi                 #  38    0xd6a67  5      OPC=movl_r32_imm32  
  nop                                    #  39    0xd6a6c  1      OPC=nop             
  nop                                    #  40    0xd6a6d  1      OPC=nop             
  nop                                    #  41    0xd6a6e  1      OPC=nop             
  nop                                    #  42    0xd6a6f  1      OPC=nop             
  nop                                    #  43    0xd6a70  1      OPC=nop             
  nop                                    #  44    0xd6a71  1      OPC=nop             
  nop                                    #  45    0xd6a72  1      OPC=nop             
  nop                                    #  46    0xd6a73  1      OPC=nop             
  nop                                    #  47    0xd6a74  1      OPC=nop             
  nop                                    #  48    0xd6a75  1      OPC=nop             
  nop                                    #  49    0xd6a76  1      OPC=nop             
  nop                                    #  50    0xd6a77  1      OPC=nop             
  nop                                    #  51    0xd6a78  1      OPC=nop             
  nop                                    #  52    0xd6a79  1      OPC=nop             
  nop                                    #  53    0xd6a7a  1      OPC=nop             
  nop                                    #  54    0xd6a7b  1      OPC=nop             
  nop                                    #  55    0xd6a7c  1      OPC=nop             
  nop                                    #  56    0xd6a7d  1      OPC=nop             
  nop                                    #  57    0xd6a7e  1      OPC=nop             
  nop                                    #  58    0xd6a7f  1      OPC=nop             
  nop                                    #  59    0xd6a80  1      OPC=nop             
  nop                                    #  60    0xd6a81  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc   #  61    0xd6a82  5      OPC=callq_label     
                                                                                      
.size _ZNKSbIwSt11char_traitsIwESaIwEE2atEj, .-_ZNKSbIwSt11char_traitsIwESaIwEE2atEj

