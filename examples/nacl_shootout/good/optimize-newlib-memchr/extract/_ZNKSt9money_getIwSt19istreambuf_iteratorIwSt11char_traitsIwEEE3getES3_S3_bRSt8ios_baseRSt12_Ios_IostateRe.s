  .text
  .globl _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe
  .type _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe, @function

#! file-offset 0xf0dc0
#! rip-offset  0xb0dc0
#! capacity    96 bytes

# Text                                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe:  #        0xb0dc0  0      OPC=<label>         
  subl $0x18, %esp                                                                                            #  1     0xb0dc0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                             #  2     0xb0dc3  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                             #  3     0xb0dc6  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                            #  4     0xb0dc8  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                      #  5     0xb0dcb  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                             #  6     0xb0dd0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                    #  7     0xb0dd2  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                          #  8     0xb0dd6  4      OPC=movl_m32_r32    
  nop                                                                                                         #  9     0xb0dda  1      OPC=nop             
  nop                                                                                                         #  10    0xb0ddb  1      OPC=nop             
  nop                                                                                                         #  11    0xb0ddc  1      OPC=nop             
  nop                                                                                                         #  12    0xb0ddd  1      OPC=nop             
  nop                                                                                                         #  13    0xb0dde  1      OPC=nop             
  nop                                                                                                         #  14    0xb0ddf  1      OPC=nop             
  movl %eax, %eax                                                                                             #  15    0xb0de0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                                 #  16    0xb0de2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                              #  17    0xb0de7  2      OPC=xchgw_ax_r16    
  nop                                                                                                         #  18    0xb0de9  1      OPC=nop             
  nop                                                                                                         #  19    0xb0dea  1      OPC=nop             
  nop                                                                                                         #  20    0xb0deb  1      OPC=nop             
  nop                                                                                                         #  21    0xb0dec  1      OPC=nop             
  nop                                                                                                         #  22    0xb0ded  1      OPC=nop             
  nop                                                                                                         #  23    0xb0dee  1      OPC=nop             
  nop                                                                                                         #  24    0xb0def  1      OPC=nop             
  nop                                                                                                         #  25    0xb0df0  1      OPC=nop             
  nop                                                                                                         #  26    0xb0df1  1      OPC=nop             
  nop                                                                                                         #  27    0xb0df2  1      OPC=nop             
  nop                                                                                                         #  28    0xb0df3  1      OPC=nop             
  nop                                                                                                         #  29    0xb0df4  1      OPC=nop             
  nop                                                                                                         #  30    0xb0df5  1      OPC=nop             
  nop                                                                                                         #  31    0xb0df6  1      OPC=nop             
  nop                                                                                                         #  32    0xb0df7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                      #  33    0xb0df8  6      OPC=andl_r32_imm32  
  nop                                                                                                         #  34    0xb0dfe  1      OPC=nop             
  nop                                                                                                         #  35    0xb0dff  1      OPC=nop             
  nop                                                                                                         #  36    0xb0e00  1      OPC=nop             
  addq %r15, %rax                                                                                             #  37    0xb0e01  3      OPC=addq_r64_r64    
  callq %rax                                                                                                  #  38    0xb0e04  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                            #  39    0xb0e06  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                             #  40    0xb0e09  3      OPC=addq_r64_r64    
  popq %r11                                                                                                   #  41    0xb0e0c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                     #  42    0xb0e0e  7      OPC=andl_r32_imm32  
  nop                                                                                                         #  43    0xb0e15  1      OPC=nop             
  nop                                                                                                         #  44    0xb0e16  1      OPC=nop             
  nop                                                                                                         #  45    0xb0e17  1      OPC=nop             
  nop                                                                                                         #  46    0xb0e18  1      OPC=nop             
  addq %r15, %r11                                                                                             #  47    0xb0e19  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                   #  48    0xb0e1c  3      OPC=jmpq_r64        
  nop                                                                                                         #  49    0xb0e1f  1      OPC=nop             
  nop                                                                                                         #  50    0xb0e20  1      OPC=nop             
  nop                                                                                                         #  51    0xb0e21  1      OPC=nop             
  nop                                                                                                         #  52    0xb0e22  1      OPC=nop             
  nop                                                                                                         #  53    0xb0e23  1      OPC=nop             
  nop                                                                                                         #  54    0xb0e24  1      OPC=nop             
  nop                                                                                                         #  55    0xb0e25  1      OPC=nop             
  nop                                                                                                         #  56    0xb0e26  1      OPC=nop             
  nop                                                                                                         #  57    0xb0e27  1      OPC=nop             
  nop                                                                                                         #  58    0xb0e28  1      OPC=nop             
  nop                                                                                                         #  59    0xb0e29  1      OPC=nop             
  nop                                                                                                         #  60    0xb0e2a  1      OPC=nop             
  nop                                                                                                         #  61    0xb0e2b  1      OPC=nop             
  nop                                                                                                         #  62    0xb0e2c  1      OPC=nop             
                                                                                                                                                           
.size _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe, .-_ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe

