  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc
  .type _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc, @function

#! file-offset 0x1154e0
#! rip-offset  0xd54e0
#! capacity    96 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc:  #        0xd54e0  0      OPC=0     
  movl %edi, %edi                                          #  1     0xd54e0  2      OPC=1157  
  subl $0x8, %esp                                          #  2     0xd54e2  3      OPC=2384  
  addq %r15, %rsp                                          #  3     0xd54e5  3      OPC=72    
  movl %ecx, %ecx                                          #  4     0xd54e8  2      OPC=1157  
  movl %edi, %edi                                          #  5     0xd54ea  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                 #  6     0xd54ec  4      OPC=1156  
  subl $0xc, %eax                                          #  7     0xd54f0  3      OPC=2384  
  movl %eax, %eax                                          #  8     0xd54f3  2      OPC=1157  
  subl (%r15,%rax,1), %esi                                 #  9     0xd54f5  4      OPC=2385  
  addl $0xffffffe, %esi                                    #  10    0xd54f9  6      OPC=64    
  nop                                                      #  11    0xd54ff  1      OPC=1343  
  cmpl %edx, %esi                                          #  12    0xd5500  2      OPC=472   
  jb .L_d5520                                              #  13    0xd5502  6      OPC=875   
  nop                                                      #  14    0xd5508  1      OPC=1343  
  nop                                                      #  15    0xd5509  1      OPC=1343  
  addl $0x8, %esp                                          #  16    0xd550a  3      OPC=65    
  addq %r15, %rsp                                          #  17    0xd550d  3      OPC=72    
  popq %r11                                                #  18    0xd5510  2      OPC=1694  
  andl $0xffffffe0, %r11d                                  #  19    0xd5512  7      OPC=131   
  nop                                                      #  20    0xd5519  1      OPC=1343  
  nop                                                      #  21    0xd551a  1      OPC=1343  
  nop                                                      #  22    0xd551b  1      OPC=1343  
  nop                                                      #  23    0xd551c  1      OPC=1343  
  addq %r15, %r11                                          #  24    0xd551d  3      OPC=72    
  jmpq %r11                                                #  25    0xd5520  3      OPC=928   
  nop                                                      #  26    0xd5523  1      OPC=1343  
  nop                                                      #  27    0xd5524  1      OPC=1343  
  nop                                                      #  28    0xd5525  1      OPC=1343  
  nop                                                      #  29    0xd5526  1      OPC=1343  
  nop                                                      #  30    0xd5527  1      OPC=1343  
  nop                                                      #  31    0xd5528  1      OPC=1343  
  nop                                                      #  32    0xd5529  1      OPC=1343  
  nop                                                      #  33    0xd552a  1      OPC=1343  
  nop                                                      #  34    0xd552b  1      OPC=1343  
  nop                                                      #  35    0xd552c  1      OPC=1343  
.L_d5520:                                                  #        0xd552d  0      OPC=0     
  movl %ecx, %edi                                          #  36    0xd552d  2      OPC=1157  
  nop                                                      #  37    0xd552f  1      OPC=1343  
  nop                                                      #  38    0xd5530  1      OPC=1343  
  nop                                                      #  39    0xd5531  1      OPC=1343  
  nop                                                      #  40    0xd5532  1      OPC=1343  
  nop                                                      #  41    0xd5533  1      OPC=1343  
  nop                                                      #  42    0xd5534  1      OPC=1343  
  nop                                                      #  43    0xd5535  1      OPC=1343  
  nop                                                      #  44    0xd5536  1      OPC=1343  
  nop                                                      #  45    0xd5537  1      OPC=1343  
  nop                                                      #  46    0xd5538  1      OPC=1343  
  nop                                                      #  47    0xd5539  1      OPC=1343  
  nop                                                      #  48    0xd553a  1      OPC=1343  
  nop                                                      #  49    0xd553b  1      OPC=1343  
  nop                                                      #  50    0xd553c  1      OPC=1343  
  nop                                                      #  51    0xd553d  1      OPC=1343  
  nop                                                      #  52    0xd553e  1      OPC=1343  
  nop                                                      #  53    0xd553f  1      OPC=1343  
  nop                                                      #  54    0xd5540  1      OPC=1343  
  nop                                                      #  55    0xd5541  1      OPC=1343  
  nop                                                      #  56    0xd5542  1      OPC=1343  
  nop                                                      #  57    0xd5543  1      OPC=1343  
  nop                                                      #  58    0xd5544  1      OPC=1343  
  nop                                                      #  59    0xd5545  1      OPC=1343  
  nop                                                      #  60    0xd5546  1      OPC=1343  
  nop                                                      #  61    0xd5547  1      OPC=1343  
  callq ._ZSt20__throw_length_errorPKc                     #  62    0xd5548  5      OPC=260   
                                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc, .-_ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc

