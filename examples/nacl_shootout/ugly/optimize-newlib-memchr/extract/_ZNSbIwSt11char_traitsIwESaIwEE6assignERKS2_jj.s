  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj, @function

#! file-offset 0x119f60
#! rip-offset  0xd9f60
#! capacity    96 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj:     #        0xd9f60  0      OPC=<label>         
  movl %esi, %esi                                    #  1     0xd9f60  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                    #  2     0xd9f62  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  3     0xd9f65  3      OPC=addq_r64_r64    
  movl %edi, %edi                                    #  4     0xd9f68  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  5     0xd9f6a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %esi                           #  6     0xd9f6c  4      OPC=movl_r32_m32    
  leal -0xc(%rsi), %eax                              #  7     0xd9f70  3      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  8     0xd9f73  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                           #  9     0xd9f75  4      OPC=movl_r32_m32    
  cmpl %eax, %edx                                    #  10    0xd9f79  2      OPC=cmpl_r32_r32    
  nop                                                #  11    0xd9f7b  1      OPC=nop             
  nop                                                #  12    0xd9f7c  1      OPC=nop             
  nop                                                #  13    0xd9f7d  1      OPC=nop             
  nop                                                #  14    0xd9f7e  1      OPC=nop             
  nop                                                #  15    0xd9f7f  1      OPC=nop             
  ja .L_d9fa0                                        #  16    0xd9f80  2      OPC=ja_label        
  subl %edx, %eax                                    #  17    0xd9f82  2      OPC=subl_r32_r32    
  leal (%rsi,%rdx,4), %esi                           #  18    0xd9f84  3      OPC=leal_r32_m16    
  cmpl %ecx, %eax                                    #  19    0xd9f87  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %eax                                  #  20    0xd9f89  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                    #  21    0xd9f8c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  22    0xd9f8f  3      OPC=addq_r64_r64    
  movl %eax, %edx                                    #  23    0xd9f92  2      OPC=movl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  24    0xd9f94  5      OPC=jmpq_label_1    
  nop                                                #  25    0xd9f99  1      OPC=nop             
  nop                                                #  26    0xd9f9a  1      OPC=nop             
  nop                                                #  27    0xd9f9b  1      OPC=nop             
  nop                                                #  28    0xd9f9c  1      OPC=nop             
  nop                                                #  29    0xd9f9d  1      OPC=nop             
  nop                                                #  30    0xd9f9e  1      OPC=nop             
  nop                                                #  31    0xd9f9f  1      OPC=nop             
.L_d9fa0:                                            #        0xd9fa0  0      OPC=<label>         
  movl $0x1003bb2b, %edi                             #  32    0xd9fa0  5      OPC=movl_r32_imm32  
  nop                                                #  33    0xd9fa5  1      OPC=nop             
  nop                                                #  34    0xd9fa6  1      OPC=nop             
  nop                                                #  35    0xd9fa7  1      OPC=nop             
  nop                                                #  36    0xd9fa8  1      OPC=nop             
  nop                                                #  37    0xd9fa9  1      OPC=nop             
  nop                                                #  38    0xd9faa  1      OPC=nop             
  nop                                                #  39    0xd9fab  1      OPC=nop             
  nop                                                #  40    0xd9fac  1      OPC=nop             
  nop                                                #  41    0xd9fad  1      OPC=nop             
  nop                                                #  42    0xd9fae  1      OPC=nop             
  nop                                                #  43    0xd9faf  1      OPC=nop             
  nop                                                #  44    0xd9fb0  1      OPC=nop             
  nop                                                #  45    0xd9fb1  1      OPC=nop             
  nop                                                #  46    0xd9fb2  1      OPC=nop             
  nop                                                #  47    0xd9fb3  1      OPC=nop             
  nop                                                #  48    0xd9fb4  1      OPC=nop             
  nop                                                #  49    0xd9fb5  1      OPC=nop             
  nop                                                #  50    0xd9fb6  1      OPC=nop             
  nop                                                #  51    0xd9fb7  1      OPC=nop             
  nop                                                #  52    0xd9fb8  1      OPC=nop             
  nop                                                #  53    0xd9fb9  1      OPC=nop             
  nop                                                #  54    0xd9fba  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc               #  55    0xd9fbb  5      OPC=callq_label     
                                                                                                  
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj

