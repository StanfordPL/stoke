  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi, @function

#! file-offset 0xf8140
#! rip-offset  0xb8140
#! capacity    128 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi:  #        0xb8140  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                      #  1     0xb8140  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                       #  2     0xb8145  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                            #  3     0xb814a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  4     0xb814d  3      OPC=addq_r64_r64    
  movl 0x20(%rsp), %ebx                                                                       #  5     0xb8150  4      OPC=movl_r32_m32    
  movl %ecx, %edi                                                                             #  6     0xb8154  2      OPC=movl_r32_r32    
  movl %r9d, %ecx                                                                             #  7     0xb8156  3      OPC=movl_r32_r32    
  movl %edx, %r12d                                                                            #  8     0xb8159  3      OPC=movl_r32_r32    
  movl %r8d, %edx                                                                             #  9     0xb815c  3      OPC=movl_r32_r32    
  nop                                                                                         #  10    0xb815f  1      OPC=nop             
  movl %r12d, %r8d                                                                            #  11    0xb8160  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                             #  12    0xb8163  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                    #  13    0xb8165  4      OPC=movl_r32_m32    
  nop                                                                                         #  14    0xb8169  1      OPC=nop             
  nop                                                                                         #  15    0xb816a  1      OPC=nop             
  nop                                                                                         #  16    0xb816b  1      OPC=nop             
  nop                                                                                         #  17    0xb816c  1      OPC=nop             
  nop                                                                                         #  18    0xb816d  1      OPC=nop             
  nop                                                                                         #  19    0xb816e  1      OPC=nop             
  nop                                                                                         #  20    0xb816f  1      OPC=nop             
  nop                                                                                         #  21    0xb8170  1      OPC=nop             
  nop                                                                                         #  22    0xb8171  1      OPC=nop             
  nop                                                                                         #  23    0xb8172  1      OPC=nop             
  nop                                                                                         #  24    0xb8173  1      OPC=nop             
  nop                                                                                         #  25    0xb8174  1      OPC=nop             
  nop                                                                                         #  26    0xb8175  1      OPC=nop             
  nop                                                                                         #  27    0xb8176  1      OPC=nop             
  nop                                                                                         #  28    0xb8177  1      OPC=nop             
  nop                                                                                         #  29    0xb8178  1      OPC=nop             
  nop                                                                                         #  30    0xb8179  1      OPC=nop             
  nop                                                                                         #  31    0xb817a  1      OPC=nop             
  callq ._ZNSt5__padIwSt11char_traitsIwEE6_S_padERSt8ios_basewPwPKwii                         #  32    0xb817b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                             #  33    0xb8180  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rbx,1)                                                                   #  34    0xb8182  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                        #  35    0xb8186  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                       #  36    0xb818b  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                            #  37    0xb8190  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  38    0xb8193  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  39    0xb8196  2      OPC=popq_r64_1      
  nop                                                                                         #  40    0xb8198  1      OPC=nop             
  nop                                                                                         #  41    0xb8199  1      OPC=nop             
  nop                                                                                         #  42    0xb819a  1      OPC=nop             
  nop                                                                                         #  43    0xb819b  1      OPC=nop             
  nop                                                                                         #  44    0xb819c  1      OPC=nop             
  nop                                                                                         #  45    0xb819d  1      OPC=nop             
  nop                                                                                         #  46    0xb819e  1      OPC=nop             
  nop                                                                                         #  47    0xb819f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                     #  48    0xb81a0  7      OPC=andl_r32_imm32  
  nop                                                                                         #  49    0xb81a7  1      OPC=nop             
  nop                                                                                         #  50    0xb81a8  1      OPC=nop             
  nop                                                                                         #  51    0xb81a9  1      OPC=nop             
  nop                                                                                         #  52    0xb81aa  1      OPC=nop             
  addq %r15, %r11                                                                             #  53    0xb81ab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  54    0xb81ae  3      OPC=jmpq_r64        
  nop                                                                                         #  55    0xb81b1  1      OPC=nop             
  nop                                                                                         #  56    0xb81b2  1      OPC=nop             
  nop                                                                                         #  57    0xb81b3  1      OPC=nop             
  nop                                                                                         #  58    0xb81b4  1      OPC=nop             
  nop                                                                                         #  59    0xb81b5  1      OPC=nop             
  nop                                                                                         #  60    0xb81b6  1      OPC=nop             
  nop                                                                                         #  61    0xb81b7  1      OPC=nop             
  nop                                                                                         #  62    0xb81b8  1      OPC=nop             
  nop                                                                                         #  63    0xb81b9  1      OPC=nop             
  nop                                                                                         #  64    0xb81ba  1      OPC=nop             
  nop                                                                                         #  65    0xb81bb  1      OPC=nop             
  nop                                                                                         #  66    0xb81bc  1      OPC=nop             
  nop                                                                                         #  67    0xb81bd  1      OPC=nop             
  nop                                                                                         #  68    0xb81be  1      OPC=nop             
  nop                                                                                         #  69    0xb81bf  1      OPC=nop             
  nop                                                                                         #  70    0xb81c0  1      OPC=nop             
  nop                                                                                         #  71    0xb81c1  1      OPC=nop             
  nop                                                                                         #  72    0xb81c2  1      OPC=nop             
  nop                                                                                         #  73    0xb81c3  1      OPC=nop             
  nop                                                                                         #  74    0xb81c4  1      OPC=nop             
  nop                                                                                         #  75    0xb81c5  1      OPC=nop             
  nop                                                                                         #  76    0xb81c6  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi

