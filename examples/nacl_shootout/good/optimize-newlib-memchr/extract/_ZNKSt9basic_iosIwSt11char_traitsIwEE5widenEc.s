  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc, @function

#! file-offset 0xa5960
#! rip-offset  0x65960
#! capacity    96 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc:  #        0x65960  0      OPC=<label>         
  movl %edi, %edi                                #  1     0x65960  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                #  2     0x65962  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  3     0x65965  3      OPC=addq_r64_r64    
  movl %edi, %edi                                #  4     0x65968  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rdi,1), %edi                   #  5     0x6596a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                               #  6     0x65972  3      OPC=testq_r64_r64   
  je .L_659a0                                    #  7     0x65975  2      OPC=je_label        
  movl %edi, %edi                                #  8     0x65977  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                       #  9     0x65979  4      OPC=movl_r32_m32    
  nop                                            #  10    0x6597d  1      OPC=nop             
  nop                                            #  11    0x6597e  1      OPC=nop             
  nop                                            #  12    0x6597f  1      OPC=nop             
  movsbl %sil, %esi                              #  13    0x65980  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                #  14    0x65984  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                   #  15    0x65986  5      OPC=movl_r32_m32    
  addl $0x8, %esp                                #  16    0x6598b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  17    0x6598e  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                         #  18    0x65991  6      OPC=andl_r32_imm32  
  nop                                            #  19    0x65997  1      OPC=nop             
  nop                                            #  20    0x65998  1      OPC=nop             
  nop                                            #  21    0x65999  1      OPC=nop             
  addq %r15, %rax                                #  22    0x6599a  3      OPC=addq_r64_r64    
  jmpq %rax                                      #  23    0x6599d  2      OPC=jmpq_r64        
  nop                                            #  24    0x6599f  1      OPC=nop             
  nop                                            #  25    0x659a0  1      OPC=nop             
  nop                                            #  26    0x659a1  1      OPC=nop             
  nop                                            #  27    0x659a2  1      OPC=nop             
  nop                                            #  28    0x659a3  1      OPC=nop             
  nop                                            #  29    0x659a4  1      OPC=nop             
  nop                                            #  30    0x659a5  1      OPC=nop             
.L_659a0:                                        #        0x659a6  0      OPC=<label>         
  nop                                            #  31    0x659a6  1      OPC=nop             
  nop                                            #  32    0x659a7  1      OPC=nop             
  nop                                            #  33    0x659a8  1      OPC=nop             
  nop                                            #  34    0x659a9  1      OPC=nop             
  nop                                            #  35    0x659aa  1      OPC=nop             
  nop                                            #  36    0x659ab  1      OPC=nop             
  nop                                            #  37    0x659ac  1      OPC=nop             
  nop                                            #  38    0x659ad  1      OPC=nop             
  nop                                            #  39    0x659ae  1      OPC=nop             
  nop                                            #  40    0x659af  1      OPC=nop             
  nop                                            #  41    0x659b0  1      OPC=nop             
  nop                                            #  42    0x659b1  1      OPC=nop             
  nop                                            #  43    0x659b2  1      OPC=nop             
  nop                                            #  44    0x659b3  1      OPC=nop             
  nop                                            #  45    0x659b4  1      OPC=nop             
  nop                                            #  46    0x659b5  1      OPC=nop             
  nop                                            #  47    0x659b6  1      OPC=nop             
  nop                                            #  48    0x659b7  1      OPC=nop             
  nop                                            #  49    0x659b8  1      OPC=nop             
  nop                                            #  50    0x659b9  1      OPC=nop             
  nop                                            #  51    0x659ba  1      OPC=nop             
  nop                                            #  52    0x659bb  1      OPC=nop             
  nop                                            #  53    0x659bc  1      OPC=nop             
  nop                                            #  54    0x659bd  1      OPC=nop             
  nop                                            #  55    0x659be  1      OPC=nop             
  nop                                            #  56    0x659bf  1      OPC=nop             
  nop                                            #  57    0x659c0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                 #  58    0x659c1  5      OPC=callq_label     
                                                                                              
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc

