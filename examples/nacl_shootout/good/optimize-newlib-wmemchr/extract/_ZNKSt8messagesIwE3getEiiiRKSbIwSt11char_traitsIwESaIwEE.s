  .text
  .globl _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE
  .type _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE, @function

#! file-offset 0xf2020
#! rip-offset  0xb2020
#! capacity    64 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE:  #        0xb2020  0      OPC=<label>         
  movl %esi, %esi                                           #  1     0xb2020  2      OPC=movl_r32_r32    
  pushq %rbx                                                #  2     0xb2022  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                           #  3     0xb2023  2      OPC=movl_r32_r32    
  movl %esi, %esi                                           #  4     0xb2025  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                  #  5     0xb2027  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                           #  6     0xb202b  2      OPC=movl_r32_r32    
  movl %eax, %eax                                           #  7     0xb202d  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                               #  8     0xb202f  5      OPC=movl_r32_m32    
  nop                                                       #  9     0xb2034  1      OPC=nop             
  nop                                                       #  10    0xb2035  1      OPC=nop             
  nop                                                       #  11    0xb2036  1      OPC=nop             
  nop                                                       #  12    0xb2037  1      OPC=nop             
  andl $0xffffffe0, %eax                                    #  13    0xb2038  6      OPC=andl_r32_imm32  
  nop                                                       #  14    0xb203e  1      OPC=nop             
  nop                                                       #  15    0xb203f  1      OPC=nop             
  nop                                                       #  16    0xb2040  1      OPC=nop             
  addq %r15, %rax                                           #  17    0xb2041  3      OPC=addq_r64_r64    
  callq %rax                                                #  18    0xb2044  2      OPC=callq_r64       
  movl %ebx, %eax                                           #  19    0xb2046  2      OPC=movl_r32_r32    
  popq %rbx                                                 #  20    0xb2048  1      OPC=popq_r64_1      
  popq %r11                                                 #  21    0xb2049  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                   #  22    0xb204b  7      OPC=andl_r32_imm32  
  nop                                                       #  23    0xb2052  1      OPC=nop             
  nop                                                       #  24    0xb2053  1      OPC=nop             
  nop                                                       #  25    0xb2054  1      OPC=nop             
  nop                                                       #  26    0xb2055  1      OPC=nop             
  addq %r15, %r11                                           #  27    0xb2056  3      OPC=addq_r64_r64    
  jmpq %r11                                                 #  28    0xb2059  3      OPC=jmpq_r64        
  nop                                                       #  29    0xb205c  1      OPC=nop             
  nop                                                       #  30    0xb205d  1      OPC=nop             
  nop                                                       #  31    0xb205e  1      OPC=nop             
  nop                                                       #  32    0xb205f  1      OPC=nop             
  nop                                                       #  33    0xb2060  1      OPC=nop             
  nop                                                       #  34    0xb2061  1      OPC=nop             
  nop                                                       #  35    0xb2062  1      OPC=nop             
  nop                                                       #  36    0xb2063  1      OPC=nop             
  nop                                                       #  37    0xb2064  1      OPC=nop             
  nop                                                       #  38    0xb2065  1      OPC=nop             
  nop                                                       #  39    0xb2066  1      OPC=nop             
  nop                                                       #  40    0xb2067  1      OPC=nop             
  nop                                                       #  41    0xb2068  1      OPC=nop             
  nop                                                       #  42    0xb2069  1      OPC=nop             
  nop                                                       #  43    0xb206a  1      OPC=nop             
  nop                                                       #  44    0xb206b  1      OPC=nop             
  nop                                                       #  45    0xb206c  1      OPC=nop             
                                                                                                         
.size _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE, .-_ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE

