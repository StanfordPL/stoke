  .text
  .globl _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc
  .type _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc, @function

#! file-offset 0xf1c80
#! rip-offset  0xb1c80
#! capacity    96 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc:  #        0xb1c80  0      OPC=<label>         
  subl $0x18, %esp                                                                            #  1     0xb1c80  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  2     0xb1c83  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  3     0xb1c86  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                                             #  4     0xb1c88  2      OPC=movl_r32_r32    
  movsbl 0x20(%rsp), %r10d                                                                    #  5     0xb1c8a  6      OPC=movsbl_r32_m8   
  movl %edi, %edi                                                                             #  6     0xb1c90  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  7     0xb1c92  4      OPC=movl_r32_m32    
  movsbl %r9b, %r9d                                                                           #  8     0xb1c96  4      OPC=movsbl_r32_r8   
  movl %r10d, (%rsp)                                                                          #  9     0xb1c9a  4      OPC=movl_m32_r32    
  xchgw %ax, %ax                                                                              #  10    0xb1c9e  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                             #  11    0xb1ca0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                 #  12    0xb1ca2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                              #  13    0xb1ca7  2      OPC=xchgw_ax_r16    
  nop                                                                                         #  14    0xb1ca9  1      OPC=nop             
  nop                                                                                         #  15    0xb1caa  1      OPC=nop             
  nop                                                                                         #  16    0xb1cab  1      OPC=nop             
  nop                                                                                         #  17    0xb1cac  1      OPC=nop             
  nop                                                                                         #  18    0xb1cad  1      OPC=nop             
  nop                                                                                         #  19    0xb1cae  1      OPC=nop             
  nop                                                                                         #  20    0xb1caf  1      OPC=nop             
  nop                                                                                         #  21    0xb1cb0  1      OPC=nop             
  nop                                                                                         #  22    0xb1cb1  1      OPC=nop             
  nop                                                                                         #  23    0xb1cb2  1      OPC=nop             
  nop                                                                                         #  24    0xb1cb3  1      OPC=nop             
  nop                                                                                         #  25    0xb1cb4  1      OPC=nop             
  nop                                                                                         #  26    0xb1cb5  1      OPC=nop             
  nop                                                                                         #  27    0xb1cb6  1      OPC=nop             
  nop                                                                                         #  28    0xb1cb7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  29    0xb1cb8  6      OPC=andl_r32_imm32  
  nop                                                                                         #  30    0xb1cbe  1      OPC=nop             
  nop                                                                                         #  31    0xb1cbf  1      OPC=nop             
  nop                                                                                         #  32    0xb1cc0  1      OPC=nop             
  addq %r15, %rax                                                                             #  33    0xb1cc1  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  34    0xb1cc4  2      OPC=callq_r64       
  addl $0x18, %esp                                                                            #  35    0xb1cc6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  36    0xb1cc9  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  37    0xb1ccc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  38    0xb1cce  7      OPC=andl_r32_imm32  
  nop                                                                                         #  39    0xb1cd5  1      OPC=nop             
  nop                                                                                         #  40    0xb1cd6  1      OPC=nop             
  nop                                                                                         #  41    0xb1cd7  1      OPC=nop             
  nop                                                                                         #  42    0xb1cd8  1      OPC=nop             
  addq %r15, %r11                                                                             #  43    0xb1cd9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  44    0xb1cdc  3      OPC=jmpq_r64        
  nop                                                                                         #  45    0xb1cdf  1      OPC=nop             
  nop                                                                                         #  46    0xb1ce0  1      OPC=nop             
  nop                                                                                         #  47    0xb1ce1  1      OPC=nop             
  nop                                                                                         #  48    0xb1ce2  1      OPC=nop             
  nop                                                                                         #  49    0xb1ce3  1      OPC=nop             
  nop                                                                                         #  50    0xb1ce4  1      OPC=nop             
  nop                                                                                         #  51    0xb1ce5  1      OPC=nop             
  nop                                                                                         #  52    0xb1ce6  1      OPC=nop             
  nop                                                                                         #  53    0xb1ce7  1      OPC=nop             
  nop                                                                                         #  54    0xb1ce8  1      OPC=nop             
  nop                                                                                         #  55    0xb1ce9  1      OPC=nop             
  nop                                                                                         #  56    0xb1cea  1      OPC=nop             
  nop                                                                                         #  57    0xb1ceb  1      OPC=nop             
  nop                                                                                         #  58    0xb1cec  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc, .-_ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc

