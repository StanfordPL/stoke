  .text
  .globl _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE
  .type _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE, @function

#! file-offset 0xf0700
#! rip-offset  0xb0700
#! capacity    96 bytes

# Text                                                                                                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE:  #        0xb0700  0      OPC=<label>         
  subl $0x18, %esp                                                                                                        #  1     0xb0700  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                         #  2     0xb0703  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                                         #  3     0xb0706  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                                        #  4     0xb0708  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                                  #  5     0xb070b  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                                         #  6     0xb0710  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                                #  7     0xb0712  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                                      #  8     0xb0716  4      OPC=movl_m32_r32    
  nop                                                                                                                     #  9     0xb071a  1      OPC=nop             
  nop                                                                                                                     #  10    0xb071b  1      OPC=nop             
  nop                                                                                                                     #  11    0xb071c  1      OPC=nop             
  nop                                                                                                                     #  12    0xb071d  1      OPC=nop             
  nop                                                                                                                     #  13    0xb071e  1      OPC=nop             
  nop                                                                                                                     #  14    0xb071f  1      OPC=nop             
  movl %eax, %eax                                                                                                         #  15    0xb0720  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                                             #  16    0xb0722  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                                          #  17    0xb0727  2      OPC=xchgw_ax_r16    
  nop                                                                                                                     #  18    0xb0729  1      OPC=nop             
  nop                                                                                                                     #  19    0xb072a  1      OPC=nop             
  nop                                                                                                                     #  20    0xb072b  1      OPC=nop             
  nop                                                                                                                     #  21    0xb072c  1      OPC=nop             
  nop                                                                                                                     #  22    0xb072d  1      OPC=nop             
  nop                                                                                                                     #  23    0xb072e  1      OPC=nop             
  nop                                                                                                                     #  24    0xb072f  1      OPC=nop             
  nop                                                                                                                     #  25    0xb0730  1      OPC=nop             
  nop                                                                                                                     #  26    0xb0731  1      OPC=nop             
  nop                                                                                                                     #  27    0xb0732  1      OPC=nop             
  nop                                                                                                                     #  28    0xb0733  1      OPC=nop             
  nop                                                                                                                     #  29    0xb0734  1      OPC=nop             
  nop                                                                                                                     #  30    0xb0735  1      OPC=nop             
  nop                                                                                                                     #  31    0xb0736  1      OPC=nop             
  nop                                                                                                                     #  32    0xb0737  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                                  #  33    0xb0738  6      OPC=andl_r32_imm32  
  nop                                                                                                                     #  34    0xb073e  1      OPC=nop             
  nop                                                                                                                     #  35    0xb073f  1      OPC=nop             
  nop                                                                                                                     #  36    0xb0740  1      OPC=nop             
  addq %r15, %rax                                                                                                         #  37    0xb0741  3      OPC=addq_r64_r64    
  callq %rax                                                                                                              #  38    0xb0744  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                                        #  39    0xb0746  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                         #  40    0xb0749  3      OPC=addq_r64_r64    
  popq %r11                                                                                                               #  41    0xb074c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                                 #  42    0xb074e  7      OPC=andl_r32_imm32  
  nop                                                                                                                     #  43    0xb0755  1      OPC=nop             
  nop                                                                                                                     #  44    0xb0756  1      OPC=nop             
  nop                                                                                                                     #  45    0xb0757  1      OPC=nop             
  nop                                                                                                                     #  46    0xb0758  1      OPC=nop             
  addq %r15, %r11                                                                                                         #  47    0xb0759  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                               #  48    0xb075c  3      OPC=jmpq_r64        
  nop                                                                                                                     #  49    0xb075f  1      OPC=nop             
  nop                                                                                                                     #  50    0xb0760  1      OPC=nop             
  nop                                                                                                                     #  51    0xb0761  1      OPC=nop             
  nop                                                                                                                     #  52    0xb0762  1      OPC=nop             
  nop                                                                                                                     #  53    0xb0763  1      OPC=nop             
  nop                                                                                                                     #  54    0xb0764  1      OPC=nop             
  nop                                                                                                                     #  55    0xb0765  1      OPC=nop             
  nop                                                                                                                     #  56    0xb0766  1      OPC=nop             
  nop                                                                                                                     #  57    0xb0767  1      OPC=nop             
  nop                                                                                                                     #  58    0xb0768  1      OPC=nop             
  nop                                                                                                                     #  59    0xb0769  1      OPC=nop             
  nop                                                                                                                     #  60    0xb076a  1      OPC=nop             
  nop                                                                                                                     #  61    0xb076b  1      OPC=nop             
  nop                                                                                                                     #  62    0xb076c  1      OPC=nop             
                                                                                                                                                                       
.size _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE, .-_ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE

