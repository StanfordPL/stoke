  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw, @function

#! file-offset 0xe9140
#! rip-offset  0xa9140
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw:  #        0xa9140  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9140  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9142  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                         #  3     0xa9144  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9149  2      OPC=movl_r32_r32    
  cmpl %eax, 0x18(%r15,%rdi,1)                         #  5     0xa914b  5      OPC=cmpl_m32_r32    
  jbe .L_a9180                                         #  6     0xa9150  2      OPC=jbe_label       
  movl %eax, %eax                                      #  7     0xa9152  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rax,1)                             #  8     0xa9154  4      OPC=movl_m32_r32    
  movl %edi, %edi                                      #  9     0xa9158  2      OPC=movl_r32_r32    
  addl $0x4, 0x14(%r15,%rdi,1)                         #  10    0xa915a  6      OPC=addl_m32_imm8   
  movl %esi, %eax                                      #  11    0xa9160  2      OPC=movl_r32_r32    
  popq %r11                                            #  12    0xa9162  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  13    0xa9164  7      OPC=andl_r32_imm32  
  nop                                                  #  14    0xa916b  1      OPC=nop             
  nop                                                  #  15    0xa916c  1      OPC=nop             
  nop                                                  #  16    0xa916d  1      OPC=nop             
  nop                                                  #  17    0xa916e  1      OPC=nop             
  addq %r15, %r11                                      #  18    0xa916f  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  19    0xa9172  3      OPC=jmpq_r64        
  nop                                                  #  20    0xa9175  1      OPC=nop             
  nop                                                  #  21    0xa9176  1      OPC=nop             
  nop                                                  #  22    0xa9177  1      OPC=nop             
  nop                                                  #  23    0xa9178  1      OPC=nop             
  nop                                                  #  24    0xa9179  1      OPC=nop             
  nop                                                  #  25    0xa917a  1      OPC=nop             
  nop                                                  #  26    0xa917b  1      OPC=nop             
  nop                                                  #  27    0xa917c  1      OPC=nop             
  nop                                                  #  28    0xa917d  1      OPC=nop             
  nop                                                  #  29    0xa917e  1      OPC=nop             
  nop                                                  #  30    0xa917f  1      OPC=nop             
  nop                                                  #  31    0xa9180  1      OPC=nop             
  nop                                                  #  32    0xa9181  1      OPC=nop             
  nop                                                  #  33    0xa9182  1      OPC=nop             
  nop                                                  #  34    0xa9183  1      OPC=nop             
  nop                                                  #  35    0xa9184  1      OPC=nop             
  nop                                                  #  36    0xa9185  1      OPC=nop             
  nop                                                  #  37    0xa9186  1      OPC=nop             
.L_a9180:                                              #        0xa9187  0      OPC=<label>         
  movl %edi, %edi                                      #  38    0xa9187  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  39    0xa9189  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  40    0xa918d  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %edx                         #  41    0xa918f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                               #  42    0xa9194  6      OPC=andl_r32_imm32  
  nop                                                  #  43    0xa919a  1      OPC=nop             
  nop                                                  #  44    0xa919b  1      OPC=nop             
  nop                                                  #  45    0xa919c  1      OPC=nop             
  addq %r15, %rdx                                      #  46    0xa919d  3      OPC=addq_r64_r64    
  jmpq %rdx                                            #  47    0xa91a0  2      OPC=jmpq_r64        
  nop                                                  #  48    0xa91a2  1      OPC=nop             
  nop                                                  #  49    0xa91a3  1      OPC=nop             
  nop                                                  #  50    0xa91a4  1      OPC=nop             
  nop                                                  #  51    0xa91a5  1      OPC=nop             
  nop                                                  #  52    0xa91a6  1      OPC=nop             
  nop                                                  #  53    0xa91a7  1      OPC=nop             
  nop                                                  #  54    0xa91a8  1      OPC=nop             
  nop                                                  #  55    0xa91a9  1      OPC=nop             
  nop                                                  #  56    0xa91aa  1      OPC=nop             
  nop                                                  #  57    0xa91ab  1      OPC=nop             
  nop                                                  #  58    0xa91ac  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw

