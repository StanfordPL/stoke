  .text
  .globl _ZNKSt9type_info10__do_catchEPKS_PPvj
  .type _ZNKSt9type_info10__do_catchEPKS_PPvj, @function

#! file-offset 0x123f20
#! rip-offset  0xe3f20
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt9type_info10__do_catchEPKS_PPvj:  #        0xe3f20  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xe3f20  2      OPC=movl_r32_r32    
  movl %esi, %esi                        #  2     0xe3f22  2      OPC=movl_r32_r32    
  movl %edi, %edi                        #  3     0xe3f24  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax            #  4     0xe3f26  5      OPC=movl_r32_m32    
  movl %esi, %esi                        #  5     0xe3f2b  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %eax            #  6     0xe3f2d  5      OPC=cmpl_r32_m32    
  popq %r11                              #  7     0xe3f32  2      OPC=popq_r64_1      
  sete %al                               #  8     0xe3f34  3      OPC=sete_r8         
  nop                                    #  9     0xe3f37  1      OPC=nop             
  nop                                    #  10    0xe3f38  1      OPC=nop             
  nop                                    #  11    0xe3f39  1      OPC=nop             
  nop                                    #  12    0xe3f3a  1      OPC=nop             
  nop                                    #  13    0xe3f3b  1      OPC=nop             
  nop                                    #  14    0xe3f3c  1      OPC=nop             
  nop                                    #  15    0xe3f3d  1      OPC=nop             
  nop                                    #  16    0xe3f3e  1      OPC=nop             
  nop                                    #  17    0xe3f3f  1      OPC=nop             
  andl $0xffffffe0, %r11d                #  18    0xe3f40  7      OPC=andl_r32_imm32  
  nop                                    #  19    0xe3f47  1      OPC=nop             
  nop                                    #  20    0xe3f48  1      OPC=nop             
  nop                                    #  21    0xe3f49  1      OPC=nop             
  nop                                    #  22    0xe3f4a  1      OPC=nop             
  addq %r15, %r11                        #  23    0xe3f4b  3      OPC=addq_r64_r64    
  jmpq %r11                              #  24    0xe3f4e  3      OPC=jmpq_r64        
  nop                                    #  25    0xe3f51  1      OPC=nop             
  nop                                    #  26    0xe3f52  1      OPC=nop             
  nop                                    #  27    0xe3f53  1      OPC=nop             
  nop                                    #  28    0xe3f54  1      OPC=nop             
  nop                                    #  29    0xe3f55  1      OPC=nop             
  nop                                    #  30    0xe3f56  1      OPC=nop             
  nop                                    #  31    0xe3f57  1      OPC=nop             
  nop                                    #  32    0xe3f58  1      OPC=nop             
  nop                                    #  33    0xe3f59  1      OPC=nop             
  nop                                    #  34    0xe3f5a  1      OPC=nop             
  nop                                    #  35    0xe3f5b  1      OPC=nop             
  nop                                    #  36    0xe3f5c  1      OPC=nop             
  nop                                    #  37    0xe3f5d  1      OPC=nop             
  nop                                    #  38    0xe3f5e  1      OPC=nop             
  nop                                    #  39    0xe3f5f  1      OPC=nop             
  nop                                    #  40    0xe3f60  1      OPC=nop             
  nop                                    #  41    0xe3f61  1      OPC=nop             
  nop                                    #  42    0xe3f62  1      OPC=nop             
  nop                                    #  43    0xe3f63  1      OPC=nop             
  nop                                    #  44    0xe3f64  1      OPC=nop             
  nop                                    #  45    0xe3f65  1      OPC=nop             
  nop                                    #  46    0xe3f66  1      OPC=nop             
                                                                                      
.size _ZNKSt9type_info10__do_catchEPKS_PPvj, .-_ZNKSt9type_info10__do_catchEPKS_PPvj

