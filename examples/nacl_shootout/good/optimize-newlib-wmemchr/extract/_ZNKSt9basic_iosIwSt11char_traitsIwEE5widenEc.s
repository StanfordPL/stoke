  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc, @function

#! file-offset 0xa5240
#! rip-offset  0x65240
#! capacity    96 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc:  #        0x65240  0      OPC=<label>         
  movl %edi, %edi                                #  1     0x65240  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                #  2     0x65242  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  3     0x65245  3      OPC=addq_r64_r64    
  movl %edi, %edi                                #  4     0x65248  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rdi,1), %edi                   #  5     0x6524a  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                               #  6     0x65252  3      OPC=testq_r64_r64   
  je .L_65280                                    #  7     0x65255  2      OPC=je_label        
  movl %edi, %edi                                #  8     0x65257  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                       #  9     0x65259  4      OPC=movl_r32_m32    
  nop                                            #  10    0x6525d  1      OPC=nop             
  nop                                            #  11    0x6525e  1      OPC=nop             
  nop                                            #  12    0x6525f  1      OPC=nop             
  movsbl %sil, %esi                              #  13    0x65260  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                #  14    0x65264  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                   #  15    0x65266  5      OPC=movl_r32_m32    
  addl $0x8, %esp                                #  16    0x6526b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  17    0x6526e  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                         #  18    0x65271  6      OPC=andl_r32_imm32  
  nop                                            #  19    0x65277  1      OPC=nop             
  nop                                            #  20    0x65278  1      OPC=nop             
  nop                                            #  21    0x65279  1      OPC=nop             
  addq %r15, %rax                                #  22    0x6527a  3      OPC=addq_r64_r64    
  jmpq %rax                                      #  23    0x6527d  2      OPC=jmpq_r64        
  nop                                            #  24    0x6527f  1      OPC=nop             
  nop                                            #  25    0x65280  1      OPC=nop             
  nop                                            #  26    0x65281  1      OPC=nop             
  nop                                            #  27    0x65282  1      OPC=nop             
  nop                                            #  28    0x65283  1      OPC=nop             
  nop                                            #  29    0x65284  1      OPC=nop             
  nop                                            #  30    0x65285  1      OPC=nop             
.L_65280:                                        #        0x65286  0      OPC=<label>         
  nop                                            #  31    0x65286  1      OPC=nop             
  nop                                            #  32    0x65287  1      OPC=nop             
  nop                                            #  33    0x65288  1      OPC=nop             
  nop                                            #  34    0x65289  1      OPC=nop             
  nop                                            #  35    0x6528a  1      OPC=nop             
  nop                                            #  36    0x6528b  1      OPC=nop             
  nop                                            #  37    0x6528c  1      OPC=nop             
  nop                                            #  38    0x6528d  1      OPC=nop             
  nop                                            #  39    0x6528e  1      OPC=nop             
  nop                                            #  40    0x6528f  1      OPC=nop             
  nop                                            #  41    0x65290  1      OPC=nop             
  nop                                            #  42    0x65291  1      OPC=nop             
  nop                                            #  43    0x65292  1      OPC=nop             
  nop                                            #  44    0x65293  1      OPC=nop             
  nop                                            #  45    0x65294  1      OPC=nop             
  nop                                            #  46    0x65295  1      OPC=nop             
  nop                                            #  47    0x65296  1      OPC=nop             
  nop                                            #  48    0x65297  1      OPC=nop             
  nop                                            #  49    0x65298  1      OPC=nop             
  nop                                            #  50    0x65299  1      OPC=nop             
  nop                                            #  51    0x6529a  1      OPC=nop             
  nop                                            #  52    0x6529b  1      OPC=nop             
  nop                                            #  53    0x6529c  1      OPC=nop             
  nop                                            #  54    0x6529d  1      OPC=nop             
  nop                                            #  55    0x6529e  1      OPC=nop             
  nop                                            #  56    0x6529f  1      OPC=nop             
  nop                                            #  57    0x652a0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                 #  58    0x652a1  5      OPC=callq_label     
                                                                                              
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE5widenEc

