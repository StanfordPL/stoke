  .text
  .globl _ZNKSt9type_info10__do_catchEPKS_PPvj
  .type _ZNKSt9type_info10__do_catchEPKS_PPvj, @function

#! file-offset 0x123500
#! rip-offset  0xe3500
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt9type_info10__do_catchEPKS_PPvj:  #        0xe3500  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xe3500  2      OPC=movl_r32_r32    
  movl %esi, %esi                        #  2     0xe3502  2      OPC=movl_r32_r32    
  movl %edi, %edi                        #  3     0xe3504  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax            #  4     0xe3506  5      OPC=movl_r32_m32    
  movl %esi, %esi                        #  5     0xe350b  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %eax            #  6     0xe350d  5      OPC=cmpl_r32_m32    
  popq %r11                              #  7     0xe3512  2      OPC=popq_r64_1      
  sete %al                               #  8     0xe3514  3      OPC=sete_r8         
  nop                                    #  9     0xe3517  1      OPC=nop             
  nop                                    #  10    0xe3518  1      OPC=nop             
  nop                                    #  11    0xe3519  1      OPC=nop             
  nop                                    #  12    0xe351a  1      OPC=nop             
  nop                                    #  13    0xe351b  1      OPC=nop             
  nop                                    #  14    0xe351c  1      OPC=nop             
  nop                                    #  15    0xe351d  1      OPC=nop             
  nop                                    #  16    0xe351e  1      OPC=nop             
  nop                                    #  17    0xe351f  1      OPC=nop             
  andl $0xffffffe0, %r11d                #  18    0xe3520  7      OPC=andl_r32_imm32  
  nop                                    #  19    0xe3527  1      OPC=nop             
  nop                                    #  20    0xe3528  1      OPC=nop             
  nop                                    #  21    0xe3529  1      OPC=nop             
  nop                                    #  22    0xe352a  1      OPC=nop             
  addq %r15, %r11                        #  23    0xe352b  3      OPC=addq_r64_r64    
  jmpq %r11                              #  24    0xe352e  3      OPC=jmpq_r64        
  nop                                    #  25    0xe3531  1      OPC=nop             
  nop                                    #  26    0xe3532  1      OPC=nop             
  nop                                    #  27    0xe3533  1      OPC=nop             
  nop                                    #  28    0xe3534  1      OPC=nop             
  nop                                    #  29    0xe3535  1      OPC=nop             
  nop                                    #  30    0xe3536  1      OPC=nop             
  nop                                    #  31    0xe3537  1      OPC=nop             
  nop                                    #  32    0xe3538  1      OPC=nop             
  nop                                    #  33    0xe3539  1      OPC=nop             
  nop                                    #  34    0xe353a  1      OPC=nop             
  nop                                    #  35    0xe353b  1      OPC=nop             
  nop                                    #  36    0xe353c  1      OPC=nop             
  nop                                    #  37    0xe353d  1      OPC=nop             
  nop                                    #  38    0xe353e  1      OPC=nop             
  nop                                    #  39    0xe353f  1      OPC=nop             
  nop                                    #  40    0xe3540  1      OPC=nop             
  nop                                    #  41    0xe3541  1      OPC=nop             
  nop                                    #  42    0xe3542  1      OPC=nop             
  nop                                    #  43    0xe3543  1      OPC=nop             
  nop                                    #  44    0xe3544  1      OPC=nop             
  nop                                    #  45    0xe3545  1      OPC=nop             
  nop                                    #  46    0xe3546  1      OPC=nop             
                                                                                      
.size _ZNKSt9type_info10__do_catchEPKS_PPvj, .-_ZNKSt9type_info10__do_catchEPKS_PPvj

