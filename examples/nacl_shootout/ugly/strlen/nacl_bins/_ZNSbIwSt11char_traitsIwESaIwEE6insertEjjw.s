  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw, @function

#! file-offset 0x1192e0
#! rip-offset  0xd92e0
#! capacity    96 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw:                  #        0xd92e0  0      OPC=0     
  movl %edi, %edi                                             #  1     0xd92e0  2      OPC=1157  
  subl $0x8, %esp                                             #  2     0xd92e2  3      OPC=2384  
  addq %r15, %rsp                                             #  3     0xd92e5  3      OPC=72    
  movl %ecx, %r8d                                             #  4     0xd92e8  3      OPC=1157  
  movl %edi, %edi                                             #  5     0xd92eb  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                    #  6     0xd92ed  4      OPC=1156  
  subl $0xc, %eax                                             #  7     0xd92f1  3      OPC=2384  
  movl %eax, %eax                                             #  8     0xd92f4  2      OPC=1157  
  cmpl (%r15,%rax,1), %esi                                    #  9     0xd92f6  4      OPC=471   
  ja .L_d9320                                                 #  10    0xd92fa  6      OPC=863   
  nop                                                         #  11    0xd9300  1      OPC=1343  
  nop                                                         #  12    0xd9301  1      OPC=1343  
  movl %edx, %ecx                                             #  13    0xd9302  2      OPC=1157  
  xchgw %ax, %ax                                              #  14    0xd9304  2      OPC=3700  
  addl $0x8, %esp                                             #  15    0xd9306  3      OPC=65    
  addq %r15, %rsp                                             #  16    0xd9309  3      OPC=72    
  xorl %edx, %edx                                             #  17    0xd930c  2      OPC=3758  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  18    0xd930e  5      OPC=930   
  nop                                                         #  19    0xd9313  1      OPC=1343  
  nop                                                         #  20    0xd9314  1      OPC=1343  
  nop                                                         #  21    0xd9315  1      OPC=1343  
  nop                                                         #  22    0xd9316  1      OPC=1343  
  nop                                                         #  23    0xd9317  1      OPC=1343  
  nop                                                         #  24    0xd9318  1      OPC=1343  
  nop                                                         #  25    0xd9319  1      OPC=1343  
  nop                                                         #  26    0xd931a  1      OPC=1343  
  nop                                                         #  27    0xd931b  1      OPC=1343  
  nop                                                         #  28    0xd931c  1      OPC=1343  
  nop                                                         #  29    0xd931d  1      OPC=1343  
  nop                                                         #  30    0xd931e  1      OPC=1343  
  nop                                                         #  31    0xd931f  1      OPC=1343  
  nop                                                         #  32    0xd9320  1      OPC=1343  
  nop                                                         #  33    0xd9321  1      OPC=1343  
  nop                                                         #  34    0xd9322  1      OPC=1343  
  nop                                                         #  35    0xd9323  1      OPC=1343  
  nop                                                         #  36    0xd9324  1      OPC=1343  
  nop                                                         #  37    0xd9325  1      OPC=1343  
.L_d9320:                                                     #        0xd9326  0      OPC=0     
  movl $0x1003bb73, %edi                                      #  38    0xd9326  5      OPC=1154  
  nop                                                         #  39    0xd932b  1      OPC=1343  
  nop                                                         #  40    0xd932c  1      OPC=1343  
  nop                                                         #  41    0xd932d  1      OPC=1343  
  nop                                                         #  42    0xd932e  1      OPC=1343  
  nop                                                         #  43    0xd932f  1      OPC=1343  
  nop                                                         #  44    0xd9330  1      OPC=1343  
  nop                                                         #  45    0xd9331  1      OPC=1343  
  nop                                                         #  46    0xd9332  1      OPC=1343  
  nop                                                         #  47    0xd9333  1      OPC=1343  
  nop                                                         #  48    0xd9334  1      OPC=1343  
  nop                                                         #  49    0xd9335  1      OPC=1343  
  nop                                                         #  50    0xd9336  1      OPC=1343  
  nop                                                         #  51    0xd9337  1      OPC=1343  
  nop                                                         #  52    0xd9338  1      OPC=1343  
  nop                                                         #  53    0xd9339  1      OPC=1343  
  nop                                                         #  54    0xd933a  1      OPC=1343  
  nop                                                         #  55    0xd933b  1      OPC=1343  
  nop                                                         #  56    0xd933c  1      OPC=1343  
  nop                                                         #  57    0xd933d  1      OPC=1343  
  nop                                                         #  58    0xd933e  1      OPC=1343  
  nop                                                         #  59    0xd933f  1      OPC=1343  
  nop                                                         #  60    0xd9340  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                        #  61    0xd9341  5      OPC=260   
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw

