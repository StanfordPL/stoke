  .text
  .globl __cxa_get_exception_ptr
  .type __cxa_get_exception_ptr, @function

#! file-offset 0x122960
#! rip-offset  0xe2960
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.__cxa_get_exception_ptr:       #        0xe2960  0      OPC=0     
  popq %r11                     #  1     0xe2960  2      OPC=1694  
  subl $0x30, %edi              #  2     0xe2962  3      OPC=2384  
  movl %edi, %edi               #  3     0xe2965  2      OPC=1157  
  movl 0x28(%r15,%rdi,1), %eax  #  4     0xe2967  5      OPC=1156  
  andl $0xffffffe0, %r11d       #  5     0xe296c  7      OPC=131   
  nop                           #  6     0xe2973  1      OPC=1343  
  nop                           #  7     0xe2974  1      OPC=1343  
  nop                           #  8     0xe2975  1      OPC=1343  
  nop                           #  9     0xe2976  1      OPC=1343  
  addq %r15, %r11               #  10    0xe2977  3      OPC=72    
  jmpq %r11                     #  11    0xe297a  3      OPC=928   
  nop                           #  12    0xe297d  1      OPC=1343  
  nop                           #  13    0xe297e  1      OPC=1343  
  nop                           #  14    0xe297f  1      OPC=1343  
  nop                           #  15    0xe2980  1      OPC=1343  
  nop                           #  16    0xe2981  1      OPC=1343  
  nop                           #  17    0xe2982  1      OPC=1343  
  nop                           #  18    0xe2983  1      OPC=1343  
  nop                           #  19    0xe2984  1      OPC=1343  
  nop                           #  20    0xe2985  1      OPC=1343  
  nop                           #  21    0xe2986  1      OPC=1343  
                                                                   
.size __cxa_get_exception_ptr, .-__cxa_get_exception_ptr

