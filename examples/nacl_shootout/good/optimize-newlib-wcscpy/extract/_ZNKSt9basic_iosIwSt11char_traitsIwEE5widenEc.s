  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc, @function

#! file-offset 0xa4f40
#! rip-offset  0x64f40
#! capacity    96 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc:  #        0x64f40  0      OPC=<label>         
  movl %edi, %edi                                #  1     0x64f40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                #  2     0x64f42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  3     0x64f45  3      OPC=addq_r64_r64    
  movl %edi, %edi                                #  4     0x64f48  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rdi,1), %edi                   #  5     0x64f4a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                               #  6     0x64f52  3      OPC=testq_r64_r64   
  je .L_64f80                                    #  7     0x64f55  2      OPC=je_label        
  movl %edi, %edi                                #  8     0x64f57  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                       #  9     0x64f59  4      OPC=movl_r32_m32    
  nop                                            #  10    0x64f5d  1      OPC=nop             
  nop                                            #  11    0x64f5e  1      OPC=nop             
  nop                                            #  12    0x64f5f  1      OPC=nop             
  movsbl %sil, %esi                              #  13    0x64f60  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                #  14    0x64f64  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                   #  15    0x64f66  5      OPC=movl_r32_m32    
  addl $0x8, %esp                                #  16    0x64f6b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  17    0x64f6e  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                         #  18    0x64f71  6      OPC=andl_r32_imm32  
  nop                                            #  19    0x64f77  1      OPC=nop             
  nop                                            #  20    0x64f78  1      OPC=nop             
  nop                                            #  21    0x64f79  1      OPC=nop             
  addq %r15, %rax                                #  22    0x64f7a  3      OPC=addq_r64_r64    
  jmpq %rax                                      #  23    0x64f7d  2      OPC=jmpq_r64        
  nop                                            #  24    0x64f7f  1      OPC=nop             
  nop                                            #  25    0x64f80  1      OPC=nop             
  nop                                            #  26    0x64f81  1      OPC=nop             
  nop                                            #  27    0x64f82  1      OPC=nop             
  nop                                            #  28    0x64f83  1      OPC=nop             
  nop                                            #  29    0x64f84  1      OPC=nop             
  nop                                            #  30    0x64f85  1      OPC=nop             
.L_64f80:                                        #        0x64f86  0      OPC=<label>         
  nop                                            #  31    0x64f86  1      OPC=nop             
  nop                                            #  32    0x64f87  1      OPC=nop             
  nop                                            #  33    0x64f88  1      OPC=nop             
  nop                                            #  34    0x64f89  1      OPC=nop             
  nop                                            #  35    0x64f8a  1      OPC=nop             
  nop                                            #  36    0x64f8b  1      OPC=nop             
  nop                                            #  37    0x64f8c  1      OPC=nop             
  nop                                            #  38    0x64f8d  1      OPC=nop             
  nop                                            #  39    0x64f8e  1      OPC=nop             
  nop                                            #  40    0x64f8f  1      OPC=nop             
  nop                                            #  41    0x64f90  1      OPC=nop             
  nop                                            #  42    0x64f91  1      OPC=nop             
  nop                                            #  43    0x64f92  1      OPC=nop             
  nop                                            #  44    0x64f93  1      OPC=nop             
  nop                                            #  45    0x64f94  1      OPC=nop             
  nop                                            #  46    0x64f95  1      OPC=nop             
  nop                                            #  47    0x64f96  1      OPC=nop             
  nop                                            #  48    0x64f97  1      OPC=nop             
  nop                                            #  49    0x64f98  1      OPC=nop             
  nop                                            #  50    0x64f99  1      OPC=nop             
  nop                                            #  51    0x64f9a  1      OPC=nop             
  nop                                            #  52    0x64f9b  1      OPC=nop             
  nop                                            #  53    0x64f9c  1      OPC=nop             
  nop                                            #  54    0x64f9d  1      OPC=nop             
  nop                                            #  55    0x64f9e  1      OPC=nop             
  nop                                            #  56    0x64f9f  1      OPC=nop             
  nop                                            #  57    0x64fa0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                 #  58    0x64fa1  5      OPC=callq_label     
                                                                                              
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc

