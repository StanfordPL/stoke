  .text
  .globl _ZNKSt9type_info10__do_catchEPKS_PPvj
  .type _ZNKSt9type_info10__do_catchEPKS_PPvj, @function

#! file-offset 0x123800
#! rip-offset  0xe3800
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt9type_info10__do_catchEPKS_PPvj:  #        0xe3800  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xe3800  2      OPC=movl_r32_r32    
  movl %esi, %esi                        #  2     0xe3802  2      OPC=movl_r32_r32    
  movl %edi, %edi                        #  3     0xe3804  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax            #  4     0xe3806  5      OPC=movl_r32_m32    
  movl %esi, %esi                        #  5     0xe380b  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %eax            #  6     0xe380d  5      OPC=cmpl_r32_m32    
  popq %r11                              #  7     0xe3812  2      OPC=popq_r64_1      
  sete %al                               #  8     0xe3814  3      OPC=sete_r8         
  nop                                    #  9     0xe3817  1      OPC=nop             
  nop                                    #  10    0xe3818  1      OPC=nop             
  nop                                    #  11    0xe3819  1      OPC=nop             
  nop                                    #  12    0xe381a  1      OPC=nop             
  nop                                    #  13    0xe381b  1      OPC=nop             
  nop                                    #  14    0xe381c  1      OPC=nop             
  nop                                    #  15    0xe381d  1      OPC=nop             
  nop                                    #  16    0xe381e  1      OPC=nop             
  nop                                    #  17    0xe381f  1      OPC=nop             
  andl $0xffffffe0, %r11d                #  18    0xe3820  7      OPC=andl_r32_imm32  
  nop                                    #  19    0xe3827  1      OPC=nop             
  nop                                    #  20    0xe3828  1      OPC=nop             
  nop                                    #  21    0xe3829  1      OPC=nop             
  nop                                    #  22    0xe382a  1      OPC=nop             
  addq %r15, %r11                        #  23    0xe382b  3      OPC=addq_r64_r64    
  jmpq %r11                              #  24    0xe382e  3      OPC=jmpq_r64        
  nop                                    #  25    0xe3831  1      OPC=nop             
  nop                                    #  26    0xe3832  1      OPC=nop             
  nop                                    #  27    0xe3833  1      OPC=nop             
  nop                                    #  28    0xe3834  1      OPC=nop             
  nop                                    #  29    0xe3835  1      OPC=nop             
  nop                                    #  30    0xe3836  1      OPC=nop             
  nop                                    #  31    0xe3837  1      OPC=nop             
  nop                                    #  32    0xe3838  1      OPC=nop             
  nop                                    #  33    0xe3839  1      OPC=nop             
  nop                                    #  34    0xe383a  1      OPC=nop             
  nop                                    #  35    0xe383b  1      OPC=nop             
  nop                                    #  36    0xe383c  1      OPC=nop             
  nop                                    #  37    0xe383d  1      OPC=nop             
  nop                                    #  38    0xe383e  1      OPC=nop             
  nop                                    #  39    0xe383f  1      OPC=nop             
  nop                                    #  40    0xe3840  1      OPC=nop             
  nop                                    #  41    0xe3841  1      OPC=nop             
  nop                                    #  42    0xe3842  1      OPC=nop             
  nop                                    #  43    0xe3843  1      OPC=nop             
  nop                                    #  44    0xe3844  1      OPC=nop             
  nop                                    #  45    0xe3845  1      OPC=nop             
  nop                                    #  46    0xe3846  1      OPC=nop             
                                                                                      
.size _ZNKSt9type_info10__do_catchEPKS_PPvj, .-_ZNKSt9type_info10__do_catchEPKS_PPvj

