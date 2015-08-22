  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi, @function

#! file-offset 0xf8860
#! rip-offset  0xb8860
#! capacity    128 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi:  #        0xb8860  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                      #  1     0xb8860  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                       #  2     0xb8865  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                            #  3     0xb886a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  4     0xb886d  3      OPC=addq_r64_r64    
  movl 0x20(%rsp), %ebx                                                                       #  5     0xb8870  4      OPC=movl_r32_m32    
  movl %ecx, %edi                                                                             #  6     0xb8874  2      OPC=movl_r32_r32    
  movl %r9d, %ecx                                                                             #  7     0xb8876  3      OPC=movl_r32_r32    
  movl %edx, %r12d                                                                            #  8     0xb8879  3      OPC=movl_r32_r32    
  movl %r8d, %edx                                                                             #  9     0xb887c  3      OPC=movl_r32_r32    
  nop                                                                                         #  10    0xb887f  1      OPC=nop             
  movl %r12d, %r8d                                                                            #  11    0xb8880  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                             #  12    0xb8883  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                    #  13    0xb8885  4      OPC=movl_r32_m32    
  nop                                                                                         #  14    0xb8889  1      OPC=nop             
  nop                                                                                         #  15    0xb888a  1      OPC=nop             
  nop                                                                                         #  16    0xb888b  1      OPC=nop             
  nop                                                                                         #  17    0xb888c  1      OPC=nop             
  nop                                                                                         #  18    0xb888d  1      OPC=nop             
  nop                                                                                         #  19    0xb888e  1      OPC=nop             
  nop                                                                                         #  20    0xb888f  1      OPC=nop             
  nop                                                                                         #  21    0xb8890  1      OPC=nop             
  nop                                                                                         #  22    0xb8891  1      OPC=nop             
  nop                                                                                         #  23    0xb8892  1      OPC=nop             
  nop                                                                                         #  24    0xb8893  1      OPC=nop             
  nop                                                                                         #  25    0xb8894  1      OPC=nop             
  nop                                                                                         #  26    0xb8895  1      OPC=nop             
  nop                                                                                         #  27    0xb8896  1      OPC=nop             
  nop                                                                                         #  28    0xb8897  1      OPC=nop             
  nop                                                                                         #  29    0xb8898  1      OPC=nop             
  nop                                                                                         #  30    0xb8899  1      OPC=nop             
  nop                                                                                         #  31    0xb889a  1      OPC=nop             
  callq ._ZNSt5__padIwSt11char_traitsIwEE6_S_padERSt8ios_basewPwPKwii                         #  32    0xb889b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                             #  33    0xb88a0  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rbx,1)                                                                   #  34    0xb88a2  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                        #  35    0xb88a6  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                       #  36    0xb88ab  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                            #  37    0xb88b0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  38    0xb88b3  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  39    0xb88b6  2      OPC=popq_r64_1      
  nop                                                                                         #  40    0xb88b8  1      OPC=nop             
  nop                                                                                         #  41    0xb88b9  1      OPC=nop             
  nop                                                                                         #  42    0xb88ba  1      OPC=nop             
  nop                                                                                         #  43    0xb88bb  1      OPC=nop             
  nop                                                                                         #  44    0xb88bc  1      OPC=nop             
  nop                                                                                         #  45    0xb88bd  1      OPC=nop             
  nop                                                                                         #  46    0xb88be  1      OPC=nop             
  nop                                                                                         #  47    0xb88bf  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                     #  48    0xb88c0  7      OPC=andl_r32_imm32  
  nop                                                                                         #  49    0xb88c7  1      OPC=nop             
  nop                                                                                         #  50    0xb88c8  1      OPC=nop             
  nop                                                                                         #  51    0xb88c9  1      OPC=nop             
  nop                                                                                         #  52    0xb88ca  1      OPC=nop             
  addq %r15, %r11                                                                             #  53    0xb88cb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  54    0xb88ce  3      OPC=jmpq_r64        
  nop                                                                                         #  55    0xb88d1  1      OPC=nop             
  nop                                                                                         #  56    0xb88d2  1      OPC=nop             
  nop                                                                                         #  57    0xb88d3  1      OPC=nop             
  nop                                                                                         #  58    0xb88d4  1      OPC=nop             
  nop                                                                                         #  59    0xb88d5  1      OPC=nop             
  nop                                                                                         #  60    0xb88d6  1      OPC=nop             
  nop                                                                                         #  61    0xb88d7  1      OPC=nop             
  nop                                                                                         #  62    0xb88d8  1      OPC=nop             
  nop                                                                                         #  63    0xb88d9  1      OPC=nop             
  nop                                                                                         #  64    0xb88da  1      OPC=nop             
  nop                                                                                         #  65    0xb88db  1      OPC=nop             
  nop                                                                                         #  66    0xb88dc  1      OPC=nop             
  nop                                                                                         #  67    0xb88dd  1      OPC=nop             
  nop                                                                                         #  68    0xb88de  1      OPC=nop             
  nop                                                                                         #  69    0xb88df  1      OPC=nop             
  nop                                                                                         #  70    0xb88e0  1      OPC=nop             
  nop                                                                                         #  71    0xb88e1  1      OPC=nop             
  nop                                                                                         #  72    0xb88e2  1      OPC=nop             
  nop                                                                                         #  73    0xb88e3  1      OPC=nop             
  nop                                                                                         #  74    0xb88e4  1      OPC=nop             
  nop                                                                                         #  75    0xb88e5  1      OPC=nop             
  nop                                                                                         #  76    0xb88e6  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6_M_padEwiRSt8ios_basePwPKwRi

