  .text
  .globl _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE
  .type _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE, @function

#! file-offset 0xf0e20
#! rip-offset  0xb0e20
#! capacity    96 bytes

# Text                                                                                                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE:  #        0xb0e20  0      OPC=<label>         
  subl $0x18, %esp                                                                                                        #  1     0xb0e20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                         #  2     0xb0e23  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                                         #  3     0xb0e26  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                                        #  4     0xb0e28  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                                  #  5     0xb0e2b  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                                         #  6     0xb0e30  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                                #  7     0xb0e32  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                                      #  8     0xb0e36  4      OPC=movl_m32_r32    
  nop                                                                                                                     #  9     0xb0e3a  1      OPC=nop             
  nop                                                                                                                     #  10    0xb0e3b  1      OPC=nop             
  nop                                                                                                                     #  11    0xb0e3c  1      OPC=nop             
  nop                                                                                                                     #  12    0xb0e3d  1      OPC=nop             
  nop                                                                                                                     #  13    0xb0e3e  1      OPC=nop             
  nop                                                                                                                     #  14    0xb0e3f  1      OPC=nop             
  movl %eax, %eax                                                                                                         #  15    0xb0e40  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                                             #  16    0xb0e42  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                                          #  17    0xb0e47  2      OPC=xchgw_ax_r16    
  nop                                                                                                                     #  18    0xb0e49  1      OPC=nop             
  nop                                                                                                                     #  19    0xb0e4a  1      OPC=nop             
  nop                                                                                                                     #  20    0xb0e4b  1      OPC=nop             
  nop                                                                                                                     #  21    0xb0e4c  1      OPC=nop             
  nop                                                                                                                     #  22    0xb0e4d  1      OPC=nop             
  nop                                                                                                                     #  23    0xb0e4e  1      OPC=nop             
  nop                                                                                                                     #  24    0xb0e4f  1      OPC=nop             
  nop                                                                                                                     #  25    0xb0e50  1      OPC=nop             
  nop                                                                                                                     #  26    0xb0e51  1      OPC=nop             
  nop                                                                                                                     #  27    0xb0e52  1      OPC=nop             
  nop                                                                                                                     #  28    0xb0e53  1      OPC=nop             
  nop                                                                                                                     #  29    0xb0e54  1      OPC=nop             
  nop                                                                                                                     #  30    0xb0e55  1      OPC=nop             
  nop                                                                                                                     #  31    0xb0e56  1      OPC=nop             
  nop                                                                                                                     #  32    0xb0e57  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                                  #  33    0xb0e58  6      OPC=andl_r32_imm32  
  nop                                                                                                                     #  34    0xb0e5e  1      OPC=nop             
  nop                                                                                                                     #  35    0xb0e5f  1      OPC=nop             
  nop                                                                                                                     #  36    0xb0e60  1      OPC=nop             
  addq %r15, %rax                                                                                                         #  37    0xb0e61  3      OPC=addq_r64_r64    
  callq %rax                                                                                                              #  38    0xb0e64  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                                        #  39    0xb0e66  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                         #  40    0xb0e69  3      OPC=addq_r64_r64    
  popq %r11                                                                                                               #  41    0xb0e6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                                 #  42    0xb0e6e  7      OPC=andl_r32_imm32  
  nop                                                                                                                     #  43    0xb0e75  1      OPC=nop             
  nop                                                                                                                     #  44    0xb0e76  1      OPC=nop             
  nop                                                                                                                     #  45    0xb0e77  1      OPC=nop             
  nop                                                                                                                     #  46    0xb0e78  1      OPC=nop             
  addq %r15, %r11                                                                                                         #  47    0xb0e79  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                               #  48    0xb0e7c  3      OPC=jmpq_r64        
  nop                                                                                                                     #  49    0xb0e7f  1      OPC=nop             
  nop                                                                                                                     #  50    0xb0e80  1      OPC=nop             
  nop                                                                                                                     #  51    0xb0e81  1      OPC=nop             
  nop                                                                                                                     #  52    0xb0e82  1      OPC=nop             
  nop                                                                                                                     #  53    0xb0e83  1      OPC=nop             
  nop                                                                                                                     #  54    0xb0e84  1      OPC=nop             
  nop                                                                                                                     #  55    0xb0e85  1      OPC=nop             
  nop                                                                                                                     #  56    0xb0e86  1      OPC=nop             
  nop                                                                                                                     #  57    0xb0e87  1      OPC=nop             
  nop                                                                                                                     #  58    0xb0e88  1      OPC=nop             
  nop                                                                                                                     #  59    0xb0e89  1      OPC=nop             
  nop                                                                                                                     #  60    0xb0e8a  1      OPC=nop             
  nop                                                                                                                     #  61    0xb0e8b  1      OPC=nop             
  nop                                                                                                                     #  62    0xb0e8c  1      OPC=nop             
                                                                                                                                                                       
.size _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE, .-_ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSbIwS2_SaIwEE

