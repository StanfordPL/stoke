  .text
  .globl _ZSt18uncaught_exceptionv
  .type _ZSt18uncaught_exceptionv, @function

#! file-offset 0x122980
#! rip-offset  0xe2980
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZSt18uncaught_exceptionv:    #        0xe2980  0      OPC=0     
  subl $0x8, %esp              #  1     0xe2980  3      OPC=2384  
  addq %r15, %rsp              #  2     0xe2983  3      OPC=72    
  nop                          #  3     0xe2986  1      OPC=1343  
  nop                          #  4     0xe2987  1      OPC=1343  
  nop                          #  5     0xe2988  1      OPC=1343  
  nop                          #  6     0xe2989  1      OPC=1343  
  nop                          #  7     0xe298a  1      OPC=1343  
  nop                          #  8     0xe298b  1      OPC=1343  
  nop                          #  9     0xe298c  1      OPC=1343  
  nop                          #  10    0xe298d  1      OPC=1343  
  nop                          #  11    0xe298e  1      OPC=1343  
  nop                          #  12    0xe298f  1      OPC=1343  
  nop                          #  13    0xe2990  1      OPC=1343  
  nop                          #  14    0xe2991  1      OPC=1343  
  nop                          #  15    0xe2992  1      OPC=1343  
  nop                          #  16    0xe2993  1      OPC=1343  
  nop                          #  17    0xe2994  1      OPC=1343  
  nop                          #  18    0xe2995  1      OPC=1343  
  nop                          #  19    0xe2996  1      OPC=1343  
  nop                          #  20    0xe2997  1      OPC=1343  
  nop                          #  21    0xe2998  1      OPC=1343  
  nop                          #  22    0xe2999  1      OPC=1343  
  nop                          #  23    0xe299a  1      OPC=1343  
  callq .__cxa_get_globals     #  24    0xe299b  5      OPC=260   
  movl %eax, %eax              #  25    0xe29a0  2      OPC=1157  
  movl %eax, %eax              #  26    0xe29a2  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax  #  27    0xe29a4  5      OPC=1156  
  testl %eax, %eax             #  28    0xe29a9  2      OPC=2436  
  setne %al                    #  29    0xe29ab  3      OPC=2208  
  addl $0x8, %esp              #  30    0xe29ae  3      OPC=65    
  addq %r15, %rsp              #  31    0xe29b1  3      OPC=72    
  popq %r11                    #  32    0xe29b4  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  33    0xe29b6  7      OPC=131   
  nop                          #  34    0xe29bd  1      OPC=1343  
  nop                          #  35    0xe29be  1      OPC=1343  
  nop                          #  36    0xe29bf  1      OPC=1343  
  nop                          #  37    0xe29c0  1      OPC=1343  
  addq %r15, %r11              #  38    0xe29c1  3      OPC=72    
  jmpq %r11                    #  39    0xe29c4  3      OPC=928   
                                                                  
.size _ZSt18uncaught_exceptionv, .-_ZSt18uncaught_exceptionv

