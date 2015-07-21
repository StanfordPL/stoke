  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw, @function

#! file-offset 0x119200
#! rip-offset  0xd9200
#! capacity    96 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw:                #        0xd9200  0      OPC=0     
  movl %edi, %edi                                             #  1     0xd9200  2      OPC=1157  
  subl $0x8, %esp                                             #  2     0xd9202  3      OPC=2384  
  addq %r15, %rsp                                             #  3     0xd9205  3      OPC=72    
  movl %edx, %eax                                             #  4     0xd9208  2      OPC=1157  
  movl %edi, %edi                                             #  5     0xd920a  2      OPC=1157  
  movl (%r15,%rdi,1), %edx                                    #  6     0xd920c  4      OPC=1156  
  subl $0xc, %edx                                             #  7     0xd9210  3      OPC=2384  
  movl %edx, %edx                                             #  8     0xd9213  2      OPC=1157  
  movl (%r15,%rdx,1), %edx                                    #  9     0xd9215  4      OPC=1156  
  cmpl %edx, %esi                                             #  10    0xd9219  2      OPC=472   
  nop                                                         #  11    0xd921b  1      OPC=1343  
  nop                                                         #  12    0xd921c  1      OPC=1343  
  nop                                                         #  13    0xd921d  1      OPC=1343  
  nop                                                         #  14    0xd921e  1      OPC=1343  
  nop                                                         #  15    0xd921f  1      OPC=1343  
  ja .L_d9240                                                 #  16    0xd9220  6      OPC=863   
  nop                                                         #  17    0xd9226  1      OPC=1343  
  nop                                                         #  18    0xd9227  1      OPC=1343  
  subl %esi, %edx                                             #  19    0xd9228  2      OPC=2386  
  cmpl %eax, %edx                                             #  20    0xd922a  2      OPC=472   
  cmoval %eax, %edx                                           #  21    0xd922c  3      OPC=272   
  addl $0x8, %esp                                             #  22    0xd922f  3      OPC=65    
  addq %r15, %rsp                                             #  23    0xd9232  3      OPC=72    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  24    0xd9235  5      OPC=930   
  nop                                                         #  25    0xd923a  1      OPC=1343  
  nop                                                         #  26    0xd923b  1      OPC=1343  
  nop                                                         #  27    0xd923c  1      OPC=1343  
  nop                                                         #  28    0xd923d  1      OPC=1343  
  nop                                                         #  29    0xd923e  1      OPC=1343  
  nop                                                         #  30    0xd923f  1      OPC=1343  
  nop                                                         #  31    0xd9240  1      OPC=1343  
  nop                                                         #  32    0xd9241  1      OPC=1343  
  nop                                                         #  33    0xd9242  1      OPC=1343  
  nop                                                         #  34    0xd9243  1      OPC=1343  
  nop                                                         #  35    0xd9244  1      OPC=1343  
  nop                                                         #  36    0xd9245  1      OPC=1343  
.L_d9240:                                                     #        0xd9246  0      OPC=0     
  movl $0x1003bb5d, %edi                                      #  37    0xd9246  5      OPC=1154  
  nop                                                         #  38    0xd924b  1      OPC=1343  
  nop                                                         #  39    0xd924c  1      OPC=1343  
  nop                                                         #  40    0xd924d  1      OPC=1343  
  nop                                                         #  41    0xd924e  1      OPC=1343  
  nop                                                         #  42    0xd924f  1      OPC=1343  
  nop                                                         #  43    0xd9250  1      OPC=1343  
  nop                                                         #  44    0xd9251  1      OPC=1343  
  nop                                                         #  45    0xd9252  1      OPC=1343  
  nop                                                         #  46    0xd9253  1      OPC=1343  
  nop                                                         #  47    0xd9254  1      OPC=1343  
  nop                                                         #  48    0xd9255  1      OPC=1343  
  nop                                                         #  49    0xd9256  1      OPC=1343  
  nop                                                         #  50    0xd9257  1      OPC=1343  
  nop                                                         #  51    0xd9258  1      OPC=1343  
  nop                                                         #  52    0xd9259  1      OPC=1343  
  nop                                                         #  53    0xd925a  1      OPC=1343  
  nop                                                         #  54    0xd925b  1      OPC=1343  
  nop                                                         #  55    0xd925c  1      OPC=1343  
  nop                                                         #  56    0xd925d  1      OPC=1343  
  nop                                                         #  57    0xd925e  1      OPC=1343  
  nop                                                         #  58    0xd925f  1      OPC=1343  
  nop                                                         #  59    0xd9260  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                        #  60    0xd9261  5      OPC=260   
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw

