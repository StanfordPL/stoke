  .text
  .globl strtoul
  .type strtoul, @function

#! file-offset 0x16bb80
#! rip-offset  0x12bb80
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.strtoul:                   #        0x12bb80  0      OPC=0     
  movq %rbx, -0x18(%rsp)    #  1     0x12bb80  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  2     0x12bb85  5      OPC=1138  
  movl %edi, %ebx           #  3     0x12bb8a  2      OPC=1157  
  movq %r13, -0x8(%rsp)     #  4     0x12bb8c  5      OPC=1138  
  subl $0x18, %esp          #  5     0x12bb91  3      OPC=2384  
  addq %r15, %rsp           #  6     0x12bb94  3      OPC=72    
  movl %edx, %r13d          #  7     0x12bb97  3      OPC=1157  
  movl %esi, %r12d          #  8     0x12bb9a  3      OPC=1157  
  nop                       #  9     0x12bb9d  1      OPC=1343  
  nop                       #  10    0x12bb9e  1      OPC=1343  
  nop                       #  11    0x12bb9f  1      OPC=1343  
  nop                       #  12    0x12bba0  1      OPC=1343  
  nop                       #  13    0x12bba1  1      OPC=1343  
  nop                       #  14    0x12bba2  1      OPC=1343  
  nop                       #  15    0x12bba3  1      OPC=1343  
  nop                       #  16    0x12bba4  1      OPC=1343  
  nop                       #  17    0x12bba5  1      OPC=1343  
  nop                       #  18    0x12bba6  1      OPC=1343  
  nop                       #  19    0x12bba7  1      OPC=1343  
  nop                       #  20    0x12bba8  1      OPC=1343  
  nop                       #  21    0x12bba9  1      OPC=1343  
  nop                       #  22    0x12bbaa  1      OPC=1343  
  nop                       #  23    0x12bbab  1      OPC=1343  
  nop                       #  24    0x12bbac  1      OPC=1343  
  nop                       #  25    0x12bbad  1      OPC=1343  
  nop                       #  26    0x12bbae  1      OPC=1343  
  nop                       #  27    0x12bbaf  1      OPC=1343  
  nop                       #  28    0x12bbb0  1      OPC=1343  
  nop                       #  29    0x12bbb1  1      OPC=1343  
  nop                       #  30    0x12bbb2  1      OPC=1343  
  nop                       #  31    0x12bbb3  1      OPC=1343  
  nop                       #  32    0x12bbb4  1      OPC=1343  
  nop                       #  33    0x12bbb5  1      OPC=1343  
  nop                       #  34    0x12bbb6  1      OPC=1343  
  nop                       #  35    0x12bbb7  1      OPC=1343  
  nop                       #  36    0x12bbb8  1      OPC=1343  
  nop                       #  37    0x12bbb9  1      OPC=1343  
  nop                       #  38    0x12bbba  1      OPC=1343  
  callq .__nacl_read_tp     #  39    0x12bbbb  5      OPC=260   
  leaq -0x480(%rax), %rax   #  40    0x12bbc0  7      OPC=1069  
  movl %r13d, %ecx          #  41    0x12bbc7  3      OPC=1157  
  movl %r12d, %edx          #  42    0x12bbca  3      OPC=1157  
  movl %ebx, %esi           #  43    0x12bbcd  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  44    0x12bbcf  5      OPC=1161  
  movq (%rsp), %rbx         #  45    0x12bbd4  4      OPC=1161  
  movq 0x10(%rsp), %r13     #  46    0x12bbd8  5      OPC=1161  
  nop                       #  47    0x12bbdd  1      OPC=1343  
  nop                       #  48    0x12bbde  1      OPC=1343  
  nop                       #  49    0x12bbdf  1      OPC=1343  
  movl %eax, %eax           #  50    0x12bbe0  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  51    0x12bbe2  4      OPC=1156  
  addl $0x18, %esp          #  52    0x12bbe6  3      OPC=65    
  addq %r15, %rsp           #  53    0x12bbe9  3      OPC=72    
  jmpq ._strtoul_r          #  54    0x12bbec  5      OPC=930   
  nop                       #  55    0x12bbf1  1      OPC=1343  
  nop                       #  56    0x12bbf2  1      OPC=1343  
  nop                       #  57    0x12bbf3  1      OPC=1343  
  nop                       #  58    0x12bbf4  1      OPC=1343  
  nop                       #  59    0x12bbf5  1      OPC=1343  
  nop                       #  60    0x12bbf6  1      OPC=1343  
  nop                       #  61    0x12bbf7  1      OPC=1343  
  nop                       #  62    0x12bbf8  1      OPC=1343  
  nop                       #  63    0x12bbf9  1      OPC=1343  
  nop                       #  64    0x12bbfa  1      OPC=1343  
  nop                       #  65    0x12bbfb  1      OPC=1343  
  nop                       #  66    0x12bbfc  1      OPC=1343  
  nop                       #  67    0x12bbfd  1      OPC=1343  
  nop                       #  68    0x12bbfe  1      OPC=1343  
  nop                       #  69    0x12bbff  1      OPC=1343  
                                                                
.size strtoul, .-strtoul

