  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj, @function

#! file-offset 0x1194e0
#! rip-offset  0xd94e0
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj:              #        0xd94e0  0      OPC=0     
  pushq %rbx                                            #  1     0xd94e0  1      OPC=1861  
  movl %edi, %ebx                                       #  2     0xd94e1  2      OPC=1157  
  movl %edx, %ecx                                       #  3     0xd94e3  2      OPC=1157  
  movl %ebx, %ebx                                       #  4     0xd94e5  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                              #  5     0xd94e7  4      OPC=1156  
  subl $0xc, %eax                                       #  6     0xd94eb  3      OPC=2384  
  movl %eax, %eax                                       #  7     0xd94ee  2      OPC=1157  
  movl (%r15,%rax,1), %eax                              #  8     0xd94f0  4      OPC=1156  
  cmpl %eax, %esi                                       #  9     0xd94f4  2      OPC=472   
  ja .L_d9540                                           #  10    0xd94f6  6      OPC=863   
  nop                                                   #  11    0xd94fc  1      OPC=1343  
  nop                                                   #  12    0xd94fd  1      OPC=1343  
  movl %eax, %edx                                       #  13    0xd94fe  2      OPC=1157  
  movl %ebx, %edi                                       #  14    0xd9500  2      OPC=1157  
  subl %esi, %edx                                       #  15    0xd9502  2      OPC=2386  
  cmpl %ecx, %edx                                       #  16    0xd9504  2      OPC=472   
  cmoval %ecx, %edx                                     #  17    0xd9506  3      OPC=272   
  xorl %ecx, %ecx                                       #  18    0xd9509  2      OPC=3758  
  nop                                                   #  19    0xd950b  1      OPC=1343  
  nop                                                   #  20    0xd950c  1      OPC=1343  
  nop                                                   #  21    0xd950d  1      OPC=1343  
  nop                                                   #  22    0xd950e  1      OPC=1343  
  nop                                                   #  23    0xd950f  1      OPC=1343  
  nop                                                   #  24    0xd9510  1      OPC=1343  
  nop                                                   #  25    0xd9511  1      OPC=1343  
  nop                                                   #  26    0xd9512  1      OPC=1343  
  nop                                                   #  27    0xd9513  1      OPC=1343  
  nop                                                   #  28    0xd9514  1      OPC=1343  
  nop                                                   #  29    0xd9515  1      OPC=1343  
  nop                                                   #  30    0xd9516  1      OPC=1343  
  nop                                                   #  31    0xd9517  1      OPC=1343  
  nop                                                   #  32    0xd9518  1      OPC=1343  
  nop                                                   #  33    0xd9519  1      OPC=1343  
  nop                                                   #  34    0xd951a  1      OPC=1343  
  nop                                                   #  35    0xd951b  1      OPC=1343  
  nop                                                   #  36    0xd951c  1      OPC=1343  
  nop                                                   #  37    0xd951d  1      OPC=1343  
  nop                                                   #  38    0xd951e  1      OPC=1343  
  nop                                                   #  39    0xd951f  1      OPC=1343  
  nop                                                   #  40    0xd9520  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  41    0xd9521  5      OPC=260   
  movl %ebx, %eax                                       #  42    0xd9526  2      OPC=1157  
  popq %rbx                                             #  43    0xd9528  1      OPC=1694  
  popq %r11                                             #  44    0xd9529  2      OPC=1694  
  andl $0xffffffe0, %r11d                               #  45    0xd952b  7      OPC=131   
  nop                                                   #  46    0xd9532  1      OPC=1343  
  nop                                                   #  47    0xd9533  1      OPC=1343  
  nop                                                   #  48    0xd9534  1      OPC=1343  
  nop                                                   #  49    0xd9535  1      OPC=1343  
  addq %r15, %r11                                       #  50    0xd9536  3      OPC=72    
  jmpq %r11                                             #  51    0xd9539  3      OPC=928   
  xchgw %ax, %ax                                        #  52    0xd953c  2      OPC=3700  
  nop                                                   #  53    0xd953e  1      OPC=1343  
  nop                                                   #  54    0xd953f  1      OPC=1343  
  nop                                                   #  55    0xd9540  1      OPC=1343  
  nop                                                   #  56    0xd9541  1      OPC=1343  
  nop                                                   #  57    0xd9542  1      OPC=1343  
  nop                                                   #  58    0xd9543  1      OPC=1343  
  nop                                                   #  59    0xd9544  1      OPC=1343  
  nop                                                   #  60    0xd9545  1      OPC=1343  
  nop                                                   #  61    0xd9546  1      OPC=1343  
  nop                                                   #  62    0xd9547  1      OPC=1343  
  nop                                                   #  63    0xd9548  1      OPC=1343  
  nop                                                   #  64    0xd9549  1      OPC=1343  
  nop                                                   #  65    0xd954a  1      OPC=1343  
  nop                                                   #  66    0xd954b  1      OPC=1343  
  nop                                                   #  67    0xd954c  1      OPC=1343  
.L_d9540:                                               #        0xd954d  0      OPC=0     
  movl $0x1003a8e6, %edi                                #  68    0xd954d  5      OPC=1154  
  nop                                                   #  69    0xd9552  1      OPC=1343  
  nop                                                   #  70    0xd9553  1      OPC=1343  
  nop                                                   #  71    0xd9554  1      OPC=1343  
  nop                                                   #  72    0xd9555  1      OPC=1343  
  nop                                                   #  73    0xd9556  1      OPC=1343  
  nop                                                   #  74    0xd9557  1      OPC=1343  
  nop                                                   #  75    0xd9558  1      OPC=1343  
  nop                                                   #  76    0xd9559  1      OPC=1343  
  nop                                                   #  77    0xd955a  1      OPC=1343  
  nop                                                   #  78    0xd955b  1      OPC=1343  
  nop                                                   #  79    0xd955c  1      OPC=1343  
  nop                                                   #  80    0xd955d  1      OPC=1343  
  nop                                                   #  81    0xd955e  1      OPC=1343  
  nop                                                   #  82    0xd955f  1      OPC=1343  
  nop                                                   #  83    0xd9560  1      OPC=1343  
  nop                                                   #  84    0xd9561  1      OPC=1343  
  nop                                                   #  85    0xd9562  1      OPC=1343  
  nop                                                   #  86    0xd9563  1      OPC=1343  
  nop                                                   #  87    0xd9564  1      OPC=1343  
  nop                                                   #  88    0xd9565  1      OPC=1343  
  nop                                                   #  89    0xd9566  1      OPC=1343  
  nop                                                   #  90    0xd9567  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                  #  91    0xd9568  5      OPC=260   
                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj

