  .text
  .globl vsprintf
  .type vsprintf, @function

#! file-offset 0x180360
#! rip-offset  0x140360
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.vsprintf:                  #        0x140360  0      OPC=0     
  movq %rbx, -0x18(%rsp)    #  1     0x140360  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  2     0x140365  5      OPC=1138  
  movl %edi, %ebx           #  3     0x14036a  2      OPC=1157  
  movq %r13, -0x8(%rsp)     #  4     0x14036c  5      OPC=1138  
  subl $0x18, %esp          #  5     0x140371  3      OPC=2384  
  addq %r15, %rsp           #  6     0x140374  3      OPC=72    
  movl %esi, %r12d          #  7     0x140377  3      OPC=1157  
  movl %edx, %r13d          #  8     0x14037a  3      OPC=1157  
  nop                       #  9     0x14037d  1      OPC=1343  
  nop                       #  10    0x14037e  1      OPC=1343  
  nop                       #  11    0x14037f  1      OPC=1343  
  nop                       #  12    0x140380  1      OPC=1343  
  nop                       #  13    0x140381  1      OPC=1343  
  nop                       #  14    0x140382  1      OPC=1343  
  nop                       #  15    0x140383  1      OPC=1343  
  nop                       #  16    0x140384  1      OPC=1343  
  nop                       #  17    0x140385  1      OPC=1343  
  nop                       #  18    0x140386  1      OPC=1343  
  nop                       #  19    0x140387  1      OPC=1343  
  nop                       #  20    0x140388  1      OPC=1343  
  nop                       #  21    0x140389  1      OPC=1343  
  nop                       #  22    0x14038a  1      OPC=1343  
  nop                       #  23    0x14038b  1      OPC=1343  
  nop                       #  24    0x14038c  1      OPC=1343  
  nop                       #  25    0x14038d  1      OPC=1343  
  nop                       #  26    0x14038e  1      OPC=1343  
  nop                       #  27    0x14038f  1      OPC=1343  
  nop                       #  28    0x140390  1      OPC=1343  
  nop                       #  29    0x140391  1      OPC=1343  
  nop                       #  30    0x140392  1      OPC=1343  
  nop                       #  31    0x140393  1      OPC=1343  
  nop                       #  32    0x140394  1      OPC=1343  
  nop                       #  33    0x140395  1      OPC=1343  
  nop                       #  34    0x140396  1      OPC=1343  
  nop                       #  35    0x140397  1      OPC=1343  
  nop                       #  36    0x140398  1      OPC=1343  
  nop                       #  37    0x140399  1      OPC=1343  
  nop                       #  38    0x14039a  1      OPC=1343  
  callq .__nacl_read_tp     #  39    0x14039b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  40    0x1403a0  7      OPC=1069  
  movl %r13d, %ecx          #  41    0x1403a7  3      OPC=1157  
  movl %r12d, %edx          #  42    0x1403aa  3      OPC=1157  
  movl %ebx, %esi           #  43    0x1403ad  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  44    0x1403af  5      OPC=1161  
  movq (%rsp), %rbx         #  45    0x1403b4  4      OPC=1161  
  movq 0x10(%rsp), %r13     #  46    0x1403b8  5      OPC=1161  
  nop                       #  47    0x1403bd  1      OPC=1343  
  nop                       #  48    0x1403be  1      OPC=1343  
  nop                       #  49    0x1403bf  1      OPC=1343  
  movl %eax, %eax           #  50    0x1403c0  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  51    0x1403c2  4      OPC=1156  
  addl $0x18, %esp          #  52    0x1403c6  3      OPC=65    
  addq %r15, %rsp           #  53    0x1403c9  3      OPC=72    
  jmpq ._vsprintf_r         #  54    0x1403cc  5      OPC=930   
  nop                       #  55    0x1403d1  1      OPC=1343  
  nop                       #  56    0x1403d2  1      OPC=1343  
  nop                       #  57    0x1403d3  1      OPC=1343  
  nop                       #  58    0x1403d4  1      OPC=1343  
  nop                       #  59    0x1403d5  1      OPC=1343  
  nop                       #  60    0x1403d6  1      OPC=1343  
  nop                       #  61    0x1403d7  1      OPC=1343  
  nop                       #  62    0x1403d8  1      OPC=1343  
  nop                       #  63    0x1403d9  1      OPC=1343  
  nop                       #  64    0x1403da  1      OPC=1343  
  nop                       #  65    0x1403db  1      OPC=1343  
  nop                       #  66    0x1403dc  1      OPC=1343  
  nop                       #  67    0x1403dd  1      OPC=1343  
  nop                       #  68    0x1403de  1      OPC=1343  
  nop                       #  69    0x1403df  1      OPC=1343  
                                                                
.size vsprintf, .-vsprintf

