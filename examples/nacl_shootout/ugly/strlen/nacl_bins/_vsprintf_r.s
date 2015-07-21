  .text
  .globl _vsprintf_r
  .type _vsprintf_r, @function

#! file-offset 0x1802e0
#! rip-offset  0x1402e0
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._vsprintf_r:                   #        0x1402e0  0      OPC=0     
  subl $0x88, %esp              #  1     0x1402e0  6      OPC=2383  
  addq %r15, %rsp               #  2     0x1402e6  3      OPC=72    
  movl %esi, %esi               #  3     0x1402e9  2      OPC=1157  
  movl %edx, %edx               #  4     0x1402eb  2      OPC=1157  
  movl %esi, (%rsp)             #  5     0x1402ed  3      OPC=1136  
  movl %esi, 0x10(%rsp)         #  6     0x1402f0  4      OPC=1136  
  movl %edi, %edi               #  7     0x1402f4  2      OPC=1157  
  movl %esp, %esi               #  8     0x1402f6  2      OPC=1157  
  movl %ecx, %ecx               #  9     0x1402f8  2      OPC=1157  
  nop                           #  10    0x1402fa  1      OPC=1343  
  nop                           #  11    0x1402fb  1      OPC=1343  
  nop                           #  12    0x1402fc  1      OPC=1343  
  nop                           #  13    0x1402fd  1      OPC=1343  
  nop                           #  14    0x1402fe  1      OPC=1343  
  nop                           #  15    0x1402ff  1      OPC=1343  
  movw $0x208, 0xc(%rsp)        #  16    0x140300  7      OPC=1132  
  movl $0x7fffffff, 0x8(%rsp)   #  17    0x140307  8      OPC=1135  
  movl $0x7fffffff, 0x14(%rsp)  #  18    0x14030f  8      OPC=1135  
  movw $0xffff, 0xe(%rsp)       #  19    0x140317  7      OPC=1132  
  xchgw %ax, %ax                #  20    0x14031e  2      OPC=3700  
  nop                           #  21    0x140320  1      OPC=1343  
  nop                           #  22    0x140321  1      OPC=1343  
  nop                           #  23    0x140322  1      OPC=1343  
  nop                           #  24    0x140323  1      OPC=1343  
  nop                           #  25    0x140324  1      OPC=1343  
  nop                           #  26    0x140325  1      OPC=1343  
  nop                           #  27    0x140326  1      OPC=1343  
  nop                           #  28    0x140327  1      OPC=1343  
  nop                           #  29    0x140328  1      OPC=1343  
  nop                           #  30    0x140329  1      OPC=1343  
  nop                           #  31    0x14032a  1      OPC=1343  
  nop                           #  32    0x14032b  1      OPC=1343  
  nop                           #  33    0x14032c  1      OPC=1343  
  nop                           #  34    0x14032d  1      OPC=1343  
  nop                           #  35    0x14032e  1      OPC=1343  
  nop                           #  36    0x14032f  1      OPC=1343  
  nop                           #  37    0x140330  1      OPC=1343  
  nop                           #  38    0x140331  1      OPC=1343  
  nop                           #  39    0x140332  1      OPC=1343  
  nop                           #  40    0x140333  1      OPC=1343  
  nop                           #  41    0x140334  1      OPC=1343  
  nop                           #  42    0x140335  1      OPC=1343  
  nop                           #  43    0x140336  1      OPC=1343  
  nop                           #  44    0x140337  1      OPC=1343  
  nop                           #  45    0x140338  1      OPC=1343  
  nop                           #  46    0x140339  1      OPC=1343  
  nop                           #  47    0x14033a  1      OPC=1343  
  callq ._svfprintf_r           #  48    0x14033b  5      OPC=260   
  movl (%rsp), %edx             #  49    0x140340  3      OPC=1156  
  movl %edx, %edx               #  50    0x140343  2      OPC=1157  
  movb $0x0, (%r15,%rdx,1)      #  51    0x140345  5      OPC=1140  
  addl $0x88, %esp              #  52    0x14034a  6      OPC=64    
  addq %r15, %rsp               #  53    0x140350  3      OPC=72    
  popq %r11                     #  54    0x140353  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  55    0x140355  7      OPC=131   
  nop                           #  56    0x14035c  1      OPC=1343  
  nop                           #  57    0x14035d  1      OPC=1343  
  nop                           #  58    0x14035e  1      OPC=1343  
  nop                           #  59    0x14035f  1      OPC=1343  
  addq %r15, %r11               #  60    0x140360  3      OPC=72    
  jmpq %r11                     #  61    0x140363  3      OPC=928   
  nop                           #  62    0x140366  1      OPC=1343  
                                                                    
.size _vsprintf_r, .-_vsprintf_r

