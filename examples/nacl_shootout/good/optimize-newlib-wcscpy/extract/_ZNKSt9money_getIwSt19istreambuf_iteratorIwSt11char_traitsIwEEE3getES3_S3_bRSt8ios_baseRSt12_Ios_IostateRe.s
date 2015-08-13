  .text
  .globl _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe
  .type _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe, @function

#! file-offset 0xf03a0
#! rip-offset  0xb03a0
#! capacity    96 bytes

# Text                                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe:  #        0xb03a0  0      OPC=<label>         
  subl $0x18, %esp                                                                                            #  1     0xb03a0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                             #  2     0xb03a3  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                             #  3     0xb03a6  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                            #  4     0xb03a8  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                      #  5     0xb03ab  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                             #  6     0xb03b0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                    #  7     0xb03b2  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                          #  8     0xb03b6  4      OPC=movl_m32_r32    
  nop                                                                                                         #  9     0xb03ba  1      OPC=nop             
  nop                                                                                                         #  10    0xb03bb  1      OPC=nop             
  nop                                                                                                         #  11    0xb03bc  1      OPC=nop             
  nop                                                                                                         #  12    0xb03bd  1      OPC=nop             
  nop                                                                                                         #  13    0xb03be  1      OPC=nop             
  nop                                                                                                         #  14    0xb03bf  1      OPC=nop             
  movl %eax, %eax                                                                                             #  15    0xb03c0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                                 #  16    0xb03c2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                              #  17    0xb03c7  2      OPC=xchgw_ax_r16    
  nop                                                                                                         #  18    0xb03c9  1      OPC=nop             
  nop                                                                                                         #  19    0xb03ca  1      OPC=nop             
  nop                                                                                                         #  20    0xb03cb  1      OPC=nop             
  nop                                                                                                         #  21    0xb03cc  1      OPC=nop             
  nop                                                                                                         #  22    0xb03cd  1      OPC=nop             
  nop                                                                                                         #  23    0xb03ce  1      OPC=nop             
  nop                                                                                                         #  24    0xb03cf  1      OPC=nop             
  nop                                                                                                         #  25    0xb03d0  1      OPC=nop             
  nop                                                                                                         #  26    0xb03d1  1      OPC=nop             
  nop                                                                                                         #  27    0xb03d2  1      OPC=nop             
  nop                                                                                                         #  28    0xb03d3  1      OPC=nop             
  nop                                                                                                         #  29    0xb03d4  1      OPC=nop             
  nop                                                                                                         #  30    0xb03d5  1      OPC=nop             
  nop                                                                                                         #  31    0xb03d6  1      OPC=nop             
  nop                                                                                                         #  32    0xb03d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                      #  33    0xb03d8  6      OPC=andl_r32_imm32  
  nop                                                                                                         #  34    0xb03de  1      OPC=nop             
  nop                                                                                                         #  35    0xb03df  1      OPC=nop             
  nop                                                                                                         #  36    0xb03e0  1      OPC=nop             
  addq %r15, %rax                                                                                             #  37    0xb03e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                                  #  38    0xb03e4  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                            #  39    0xb03e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                             #  40    0xb03e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                   #  41    0xb03ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                     #  42    0xb03ee  7      OPC=andl_r32_imm32  
  nop                                                                                                         #  43    0xb03f5  1      OPC=nop             
  nop                                                                                                         #  44    0xb03f6  1      OPC=nop             
  nop                                                                                                         #  45    0xb03f7  1      OPC=nop             
  nop                                                                                                         #  46    0xb03f8  1      OPC=nop             
  addq %r15, %r11                                                                                             #  47    0xb03f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                   #  48    0xb03fc  3      OPC=jmpq_r64        
  nop                                                                                                         #  49    0xb03ff  1      OPC=nop             
  nop                                                                                                         #  50    0xb0400  1      OPC=nop             
  nop                                                                                                         #  51    0xb0401  1      OPC=nop             
  nop                                                                                                         #  52    0xb0402  1      OPC=nop             
  nop                                                                                                         #  53    0xb0403  1      OPC=nop             
  nop                                                                                                         #  54    0xb0404  1      OPC=nop             
  nop                                                                                                         #  55    0xb0405  1      OPC=nop             
  nop                                                                                                         #  56    0xb0406  1      OPC=nop             
  nop                                                                                                         #  57    0xb0407  1      OPC=nop             
  nop                                                                                                         #  58    0xb0408  1      OPC=nop             
  nop                                                                                                         #  59    0xb0409  1      OPC=nop             
  nop                                                                                                         #  60    0xb040a  1      OPC=nop             
  nop                                                                                                         #  61    0xb040b  1      OPC=nop             
  nop                                                                                                         #  62    0xb040c  1      OPC=nop             
                                                                                                                                                           
.size _ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe, .-_ZNKSt9money_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRe

