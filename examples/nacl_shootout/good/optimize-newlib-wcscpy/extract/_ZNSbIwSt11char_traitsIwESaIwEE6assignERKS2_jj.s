  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj, @function

#! file-offset 0x119540
#! rip-offset  0xd9540
#! capacity    96 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj:     #        0xd9540  0      OPC=<label>         
  movl %esi, %esi                                    #  1     0xd9540  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                    #  2     0xd9542  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  3     0xd9545  3      OPC=addq_r64_r64    
  movl %edi, %edi                                    #  4     0xd9548  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  5     0xd954a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %esi                           #  6     0xd954c  4      OPC=movl_r32_m32    
  leal -0xc(%rsi), %eax                              #  7     0xd9550  3      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  8     0xd9553  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                           #  9     0xd9555  4      OPC=movl_r32_m32    
  cmpl %eax, %edx                                    #  10    0xd9559  2      OPC=cmpl_r32_r32    
  nop                                                #  11    0xd955b  1      OPC=nop             
  nop                                                #  12    0xd955c  1      OPC=nop             
  nop                                                #  13    0xd955d  1      OPC=nop             
  nop                                                #  14    0xd955e  1      OPC=nop             
  nop                                                #  15    0xd955f  1      OPC=nop             
  ja .L_d9580                                        #  16    0xd9560  2      OPC=ja_label        
  subl %edx, %eax                                    #  17    0xd9562  2      OPC=subl_r32_r32    
  leal (%rsi,%rdx,4), %esi                           #  18    0xd9564  3      OPC=leal_r32_m16    
  cmpl %ecx, %eax                                    #  19    0xd9567  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %eax                                  #  20    0xd9569  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                    #  21    0xd956c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  22    0xd956f  3      OPC=addq_r64_r64    
  movl %eax, %edx                                    #  23    0xd9572  2      OPC=movl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  24    0xd9574  5      OPC=jmpq_label_1    
  nop                                                #  25    0xd9579  1      OPC=nop             
  nop                                                #  26    0xd957a  1      OPC=nop             
  nop                                                #  27    0xd957b  1      OPC=nop             
  nop                                                #  28    0xd957c  1      OPC=nop             
  nop                                                #  29    0xd957d  1      OPC=nop             
  nop                                                #  30    0xd957e  1      OPC=nop             
  nop                                                #  31    0xd957f  1      OPC=nop             
.L_d9580:                                            #        0xd9580  0      OPC=<label>         
  movl $0x1003bb2b, %edi                             #  32    0xd9580  5      OPC=movl_r32_imm32  
  nop                                                #  33    0xd9585  1      OPC=nop             
  nop                                                #  34    0xd9586  1      OPC=nop             
  nop                                                #  35    0xd9587  1      OPC=nop             
  nop                                                #  36    0xd9588  1      OPC=nop             
  nop                                                #  37    0xd9589  1      OPC=nop             
  nop                                                #  38    0xd958a  1      OPC=nop             
  nop                                                #  39    0xd958b  1      OPC=nop             
  nop                                                #  40    0xd958c  1      OPC=nop             
  nop                                                #  41    0xd958d  1      OPC=nop             
  nop                                                #  42    0xd958e  1      OPC=nop             
  nop                                                #  43    0xd958f  1      OPC=nop             
  nop                                                #  44    0xd9590  1      OPC=nop             
  nop                                                #  45    0xd9591  1      OPC=nop             
  nop                                                #  46    0xd9592  1      OPC=nop             
  nop                                                #  47    0xd9593  1      OPC=nop             
  nop                                                #  48    0xd9594  1      OPC=nop             
  nop                                                #  49    0xd9595  1      OPC=nop             
  nop                                                #  50    0xd9596  1      OPC=nop             
  nop                                                #  51    0xd9597  1      OPC=nop             
  nop                                                #  52    0xd9598  1      OPC=nop             
  nop                                                #  53    0xd9599  1      OPC=nop             
  nop                                                #  54    0xd959a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc               #  55    0xd959b  5      OPC=callq_label     
                                                                                                  
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj

