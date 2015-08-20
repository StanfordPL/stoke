  .text
  .globl _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe
  .type _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe, @function

#! file-offset 0xf06a0
#! rip-offset  0xb06a0
#! capacity    96 bytes

# Text                                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe:  #        0xb06a0  0      OPC=<label>         
  subl $0x18, %esp                                                                                            #  1     0xb06a0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                             #  2     0xb06a3  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                             #  3     0xb06a6  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                            #  4     0xb06a8  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                      #  5     0xb06ab  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                             #  6     0xb06b0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                    #  7     0xb06b2  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                          #  8     0xb06b6  4      OPC=movl_m32_r32    
  nop                                                                                                         #  9     0xb06ba  1      OPC=nop             
  nop                                                                                                         #  10    0xb06bb  1      OPC=nop             
  nop                                                                                                         #  11    0xb06bc  1      OPC=nop             
  nop                                                                                                         #  12    0xb06bd  1      OPC=nop             
  nop                                                                                                         #  13    0xb06be  1      OPC=nop             
  nop                                                                                                         #  14    0xb06bf  1      OPC=nop             
  movl %eax, %eax                                                                                             #  15    0xb06c0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                                 #  16    0xb06c2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                              #  17    0xb06c7  2      OPC=xchgw_ax_r16    
  nop                                                                                                         #  18    0xb06c9  1      OPC=nop             
  nop                                                                                                         #  19    0xb06ca  1      OPC=nop             
  nop                                                                                                         #  20    0xb06cb  1      OPC=nop             
  nop                                                                                                         #  21    0xb06cc  1      OPC=nop             
  nop                                                                                                         #  22    0xb06cd  1      OPC=nop             
  nop                                                                                                         #  23    0xb06ce  1      OPC=nop             
  nop                                                                                                         #  24    0xb06cf  1      OPC=nop             
  nop                                                                                                         #  25    0xb06d0  1      OPC=nop             
  nop                                                                                                         #  26    0xb06d1  1      OPC=nop             
  nop                                                                                                         #  27    0xb06d2  1      OPC=nop             
  nop                                                                                                         #  28    0xb06d3  1      OPC=nop             
  nop                                                                                                         #  29    0xb06d4  1      OPC=nop             
  nop                                                                                                         #  30    0xb06d5  1      OPC=nop             
  nop                                                                                                         #  31    0xb06d6  1      OPC=nop             
  nop                                                                                                         #  32    0xb06d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                      #  33    0xb06d8  6      OPC=andl_r32_imm32  
  nop                                                                                                         #  34    0xb06de  1      OPC=nop             
  nop                                                                                                         #  35    0xb06df  1      OPC=nop             
  nop                                                                                                         #  36    0xb06e0  1      OPC=nop             
  addq %r15, %rax                                                                                             #  37    0xb06e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                                  #  38    0xb06e4  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                            #  39    0xb06e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                             #  40    0xb06e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                   #  41    0xb06ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                     #  42    0xb06ee  7      OPC=andl_r32_imm32  
  nop                                                                                                         #  43    0xb06f5  1      OPC=nop             
  nop                                                                                                         #  44    0xb06f6  1      OPC=nop             
  nop                                                                                                         #  45    0xb06f7  1      OPC=nop             
  nop                                                                                                         #  46    0xb06f8  1      OPC=nop             
  addq %r15, %r11                                                                                             #  47    0xb06f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                   #  48    0xb06fc  3      OPC=jmpq_r64        
  nop                                                                                                         #  49    0xb06ff  1      OPC=nop             
  nop                                                                                                         #  50    0xb0700  1      OPC=nop             
  nop                                                                                                         #  51    0xb0701  1      OPC=nop             
  nop                                                                                                         #  52    0xb0702  1      OPC=nop             
  nop                                                                                                         #  53    0xb0703  1      OPC=nop             
  nop                                                                                                         #  54    0xb0704  1      OPC=nop             
  nop                                                                                                         #  55    0xb0705  1      OPC=nop             
  nop                                                                                                         #  56    0xb0706  1      OPC=nop             
  nop                                                                                                         #  57    0xb0707  1      OPC=nop             
  nop                                                                                                         #  58    0xb0708  1      OPC=nop             
  nop                                                                                                         #  59    0xb0709  1      OPC=nop             
  nop                                                                                                         #  60    0xb070a  1      OPC=nop             
  nop                                                                                                         #  61    0xb070b  1      OPC=nop             
  nop                                                                                                         #  62    0xb070c  1      OPC=nop             
                                                                                                                                                           
.size _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe, .-_ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe

