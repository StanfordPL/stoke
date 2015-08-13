  .text
  .globl _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE
  .type _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE, @function

#! file-offset 0xf0400
#! rip-offset  0xb0400
#! capacity    96 bytes

# Text                                                                                                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE:  #        0xb0400  0      OPC=<label>         
  subl $0x18, %esp                                                                                                        #  1     0xb0400  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                         #  2     0xb0403  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                                         #  3     0xb0406  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                                        #  4     0xb0408  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                                  #  5     0xb040b  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                                         #  6     0xb0410  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                                #  7     0xb0412  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                                      #  8     0xb0416  4      OPC=movl_m32_r32    
  nop                                                                                                                     #  9     0xb041a  1      OPC=nop             
  nop                                                                                                                     #  10    0xb041b  1      OPC=nop             
  nop                                                                                                                     #  11    0xb041c  1      OPC=nop             
  nop                                                                                                                     #  12    0xb041d  1      OPC=nop             
  nop                                                                                                                     #  13    0xb041e  1      OPC=nop             
  nop                                                                                                                     #  14    0xb041f  1      OPC=nop             
  movl %eax, %eax                                                                                                         #  15    0xb0420  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                                             #  16    0xb0422  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                                          #  17    0xb0427  2      OPC=xchgw_ax_r16    
  nop                                                                                                                     #  18    0xb0429  1      OPC=nop             
  nop                                                                                                                     #  19    0xb042a  1      OPC=nop             
  nop                                                                                                                     #  20    0xb042b  1      OPC=nop             
  nop                                                                                                                     #  21    0xb042c  1      OPC=nop             
  nop                                                                                                                     #  22    0xb042d  1      OPC=nop             
  nop                                                                                                                     #  23    0xb042e  1      OPC=nop             
  nop                                                                                                                     #  24    0xb042f  1      OPC=nop             
  nop                                                                                                                     #  25    0xb0430  1      OPC=nop             
  nop                                                                                                                     #  26    0xb0431  1      OPC=nop             
  nop                                                                                                                     #  27    0xb0432  1      OPC=nop             
  nop                                                                                                                     #  28    0xb0433  1      OPC=nop             
  nop                                                                                                                     #  29    0xb0434  1      OPC=nop             
  nop                                                                                                                     #  30    0xb0435  1      OPC=nop             
  nop                                                                                                                     #  31    0xb0436  1      OPC=nop             
  nop                                                                                                                     #  32    0xb0437  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                                  #  33    0xb0438  6      OPC=andl_r32_imm32  
  nop                                                                                                                     #  34    0xb043e  1      OPC=nop             
  nop                                                                                                                     #  35    0xb043f  1      OPC=nop             
  nop                                                                                                                     #  36    0xb0440  1      OPC=nop             
  addq %r15, %rax                                                                                                         #  37    0xb0441  3      OPC=addq_r64_r64    
  callq %rax                                                                                                              #  38    0xb0444  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                                        #  39    0xb0446  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                         #  40    0xb0449  3      OPC=addq_r64_r64    
  popq %r11                                                                                                               #  41    0xb044c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                                 #  42    0xb044e  7      OPC=andl_r32_imm32  
  nop                                                                                                                     #  43    0xb0455  1      OPC=nop             
  nop                                                                                                                     #  44    0xb0456  1      OPC=nop             
  nop                                                                                                                     #  45    0xb0457  1      OPC=nop             
  nop                                                                                                                     #  46    0xb0458  1      OPC=nop             
  addq %r15, %r11                                                                                                         #  47    0xb0459  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                               #  48    0xb045c  3      OPC=jmpq_r64        
  nop                                                                                                                     #  49    0xb045f  1      OPC=nop             
  nop                                                                                                                     #  50    0xb0460  1      OPC=nop             
  nop                                                                                                                     #  51    0xb0461  1      OPC=nop             
  nop                                                                                                                     #  52    0xb0462  1      OPC=nop             
  nop                                                                                                                     #  53    0xb0463  1      OPC=nop             
  nop                                                                                                                     #  54    0xb0464  1      OPC=nop             
  nop                                                                                                                     #  55    0xb0465  1      OPC=nop             
  nop                                                                                                                     #  56    0xb0466  1      OPC=nop             
  nop                                                                                                                     #  57    0xb0467  1      OPC=nop             
  nop                                                                                                                     #  58    0xb0468  1      OPC=nop             
  nop                                                                                                                     #  59    0xb0469  1      OPC=nop             
  nop                                                                                                                     #  60    0xb046a  1      OPC=nop             
  nop                                                                                                                     #  61    0xb046b  1      OPC=nop             
  nop                                                                                                                     #  62    0xb046c  1      OPC=nop             
                                                                                                                                                                       
.size _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE, .-_ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE

