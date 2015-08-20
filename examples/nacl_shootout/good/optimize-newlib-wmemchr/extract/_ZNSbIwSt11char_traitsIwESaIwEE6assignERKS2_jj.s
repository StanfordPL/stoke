  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj, @function

#! file-offset 0x119840
#! rip-offset  0xd9840
#! capacity    96 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj:     #        0xd9840  0      OPC=<label>         
  movl %esi, %esi                                    #  1     0xd9840  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                    #  2     0xd9842  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  3     0xd9845  3      OPC=addq_r64_r64    
  movl %edi, %edi                                    #  4     0xd9848  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  5     0xd984a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %esi                           #  6     0xd984c  4      OPC=movl_r32_m32    
  leal -0xc(%rsi), %eax                              #  7     0xd9850  3      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  8     0xd9853  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                           #  9     0xd9855  4      OPC=movl_r32_m32    
  cmpl %eax, %edx                                    #  10    0xd9859  2      OPC=cmpl_r32_r32    
  nop                                                #  11    0xd985b  1      OPC=nop             
  nop                                                #  12    0xd985c  1      OPC=nop             
  nop                                                #  13    0xd985d  1      OPC=nop             
  nop                                                #  14    0xd985e  1      OPC=nop             
  nop                                                #  15    0xd985f  1      OPC=nop             
  ja .L_d9880                                        #  16    0xd9860  2      OPC=ja_label        
  subl %edx, %eax                                    #  17    0xd9862  2      OPC=subl_r32_r32    
  leal (%rsi,%rdx,4), %esi                           #  18    0xd9864  3      OPC=leal_r32_m16    
  cmpl %ecx, %eax                                    #  19    0xd9867  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %eax                                  #  20    0xd9869  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                    #  21    0xd986c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  22    0xd986f  3      OPC=addq_r64_r64    
  movl %eax, %edx                                    #  23    0xd9872  2      OPC=movl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  24    0xd9874  5      OPC=jmpq_label_1    
  nop                                                #  25    0xd9879  1      OPC=nop             
  nop                                                #  26    0xd987a  1      OPC=nop             
  nop                                                #  27    0xd987b  1      OPC=nop             
  nop                                                #  28    0xd987c  1      OPC=nop             
  nop                                                #  29    0xd987d  1      OPC=nop             
  nop                                                #  30    0xd987e  1      OPC=nop             
  nop                                                #  31    0xd987f  1      OPC=nop             
.L_d9880:                                            #        0xd9880  0      OPC=<label>         
  movl $0x1003bb2b, %edi                             #  32    0xd9880  5      OPC=movl_r32_imm32  
  nop                                                #  33    0xd9885  1      OPC=nop             
  nop                                                #  34    0xd9886  1      OPC=nop             
  nop                                                #  35    0xd9887  1      OPC=nop             
  nop                                                #  36    0xd9888  1      OPC=nop             
  nop                                                #  37    0xd9889  1      OPC=nop             
  nop                                                #  38    0xd988a  1      OPC=nop             
  nop                                                #  39    0xd988b  1      OPC=nop             
  nop                                                #  40    0xd988c  1      OPC=nop             
  nop                                                #  41    0xd988d  1      OPC=nop             
  nop                                                #  42    0xd988e  1      OPC=nop             
  nop                                                #  43    0xd988f  1      OPC=nop             
  nop                                                #  44    0xd9890  1      OPC=nop             
  nop                                                #  45    0xd9891  1      OPC=nop             
  nop                                                #  46    0xd9892  1      OPC=nop             
  nop                                                #  47    0xd9893  1      OPC=nop             
  nop                                                #  48    0xd9894  1      OPC=nop             
  nop                                                #  49    0xd9895  1      OPC=nop             
  nop                                                #  50    0xd9896  1      OPC=nop             
  nop                                                #  51    0xd9897  1      OPC=nop             
  nop                                                #  52    0xd9898  1      OPC=nop             
  nop                                                #  53    0xd9899  1      OPC=nop             
  nop                                                #  54    0xd989a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc               #  55    0xd989b  5      OPC=callq_label     
                                                                                                  
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj

