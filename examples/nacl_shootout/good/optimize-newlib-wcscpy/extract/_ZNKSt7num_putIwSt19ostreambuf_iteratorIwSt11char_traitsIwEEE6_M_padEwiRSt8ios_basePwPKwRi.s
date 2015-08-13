  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi, @function

#! file-offset 0xf7e40
#! rip-offset  0xb7e40
#! capacity    128 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi:  #        0xb7e40  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                      #  1     0xb7e40  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                       #  2     0xb7e45  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                            #  3     0xb7e4a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  4     0xb7e4d  3      OPC=addq_r64_r64    
  movl 0x20(%rsp), %ebx                                                                       #  5     0xb7e50  4      OPC=movl_r32_m32    
  movl %ecx, %edi                                                                             #  6     0xb7e54  2      OPC=movl_r32_r32    
  movl %r9d, %ecx                                                                             #  7     0xb7e56  3      OPC=movl_r32_r32    
  movl %edx, %r12d                                                                            #  8     0xb7e59  3      OPC=movl_r32_r32    
  movl %r8d, %edx                                                                             #  9     0xb7e5c  3      OPC=movl_r32_r32    
  nop                                                                                         #  10    0xb7e5f  1      OPC=nop             
  movl %r12d, %r8d                                                                            #  11    0xb7e60  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                             #  12    0xb7e63  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                    #  13    0xb7e65  4      OPC=movl_r32_m32    
  nop                                                                                         #  14    0xb7e69  1      OPC=nop             
  nop                                                                                         #  15    0xb7e6a  1      OPC=nop             
  nop                                                                                         #  16    0xb7e6b  1      OPC=nop             
  nop                                                                                         #  17    0xb7e6c  1      OPC=nop             
  nop                                                                                         #  18    0xb7e6d  1      OPC=nop             
  nop                                                                                         #  19    0xb7e6e  1      OPC=nop             
  nop                                                                                         #  20    0xb7e6f  1      OPC=nop             
  nop                                                                                         #  21    0xb7e70  1      OPC=nop             
  nop                                                                                         #  22    0xb7e71  1      OPC=nop             
  nop                                                                                         #  23    0xb7e72  1      OPC=nop             
  nop                                                                                         #  24    0xb7e73  1      OPC=nop             
  nop                                                                                         #  25    0xb7e74  1      OPC=nop             
  nop                                                                                         #  26    0xb7e75  1      OPC=nop             
  nop                                                                                         #  27    0xb7e76  1      OPC=nop             
  nop                                                                                         #  28    0xb7e77  1      OPC=nop             
  nop                                                                                         #  29    0xb7e78  1      OPC=nop             
  nop                                                                                         #  30    0xb7e79  1      OPC=nop             
  nop                                                                                         #  31    0xb7e7a  1      OPC=nop             
  callq ._ZNSt5__padIwSt11char_traitsIwEE6_S_padERSt8ios_basewPwPKwii                         #  32    0xb7e7b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                             #  33    0xb7e80  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rbx,1)                                                                   #  34    0xb7e82  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                        #  35    0xb7e86  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                       #  36    0xb7e8b  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                            #  37    0xb7e90  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  38    0xb7e93  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  39    0xb7e96  2      OPC=popq_r64_1      
  nop                                                                                         #  40    0xb7e98  1      OPC=nop             
  nop                                                                                         #  41    0xb7e99  1      OPC=nop             
  nop                                                                                         #  42    0xb7e9a  1      OPC=nop             
  nop                                                                                         #  43    0xb7e9b  1      OPC=nop             
  nop                                                                                         #  44    0xb7e9c  1      OPC=nop             
  nop                                                                                         #  45    0xb7e9d  1      OPC=nop             
  nop                                                                                         #  46    0xb7e9e  1      OPC=nop             
  nop                                                                                         #  47    0xb7e9f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                     #  48    0xb7ea0  7      OPC=andl_r32_imm32  
  nop                                                                                         #  49    0xb7ea7  1      OPC=nop             
  nop                                                                                         #  50    0xb7ea8  1      OPC=nop             
  nop                                                                                         #  51    0xb7ea9  1      OPC=nop             
  nop                                                                                         #  52    0xb7eaa  1      OPC=nop             
  addq %r15, %r11                                                                             #  53    0xb7eab  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  54    0xb7eae  3      OPC=jmpq_r64        
  nop                                                                                         #  55    0xb7eb1  1      OPC=nop             
  nop                                                                                         #  56    0xb7eb2  1      OPC=nop             
  nop                                                                                         #  57    0xb7eb3  1      OPC=nop             
  nop                                                                                         #  58    0xb7eb4  1      OPC=nop             
  nop                                                                                         #  59    0xb7eb5  1      OPC=nop             
  nop                                                                                         #  60    0xb7eb6  1      OPC=nop             
  nop                                                                                         #  61    0xb7eb7  1      OPC=nop             
  nop                                                                                         #  62    0xb7eb8  1      OPC=nop             
  nop                                                                                         #  63    0xb7eb9  1      OPC=nop             
  nop                                                                                         #  64    0xb7eba  1      OPC=nop             
  nop                                                                                         #  65    0xb7ebb  1      OPC=nop             
  nop                                                                                         #  66    0xb7ebc  1      OPC=nop             
  nop                                                                                         #  67    0xb7ebd  1      OPC=nop             
  nop                                                                                         #  68    0xb7ebe  1      OPC=nop             
  nop                                                                                         #  69    0xb7ebf  1      OPC=nop             
  nop                                                                                         #  70    0xb7ec0  1      OPC=nop             
  nop                                                                                         #  71    0xb7ec1  1      OPC=nop             
  nop                                                                                         #  72    0xb7ec2  1      OPC=nop             
  nop                                                                                         #  73    0xb7ec3  1      OPC=nop             
  nop                                                                                         #  74    0xb7ec4  1      OPC=nop             
  nop                                                                                         #  75    0xb7ec5  1      OPC=nop             
  nop                                                                                         #  76    0xb7ec6  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi

