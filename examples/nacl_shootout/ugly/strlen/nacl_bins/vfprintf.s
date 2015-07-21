  .text
  .globl vfprintf
  .type vfprintf, @function

#! file-offset 0x1800e0
#! rip-offset  0x1400e0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.vfprintf:                  #        0x1400e0  0      OPC=0     
  movq %rbx, -0x18(%rsp)    #  1     0x1400e0  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  2     0x1400e5  5      OPC=1138  
  movl %edi, %ebx           #  3     0x1400ea  2      OPC=1157  
  movq %r13, -0x8(%rsp)     #  4     0x1400ec  5      OPC=1138  
  subl $0x18, %esp          #  5     0x1400f1  3      OPC=2384  
  addq %r15, %rsp           #  6     0x1400f4  3      OPC=72    
  movl %esi, %r12d          #  7     0x1400f7  3      OPC=1157  
  movl %edx, %r13d          #  8     0x1400fa  3      OPC=1157  
  nop                       #  9     0x1400fd  1      OPC=1343  
  nop                       #  10    0x1400fe  1      OPC=1343  
  nop                       #  11    0x1400ff  1      OPC=1343  
  nop                       #  12    0x140100  1      OPC=1343  
  nop                       #  13    0x140101  1      OPC=1343  
  nop                       #  14    0x140102  1      OPC=1343  
  nop                       #  15    0x140103  1      OPC=1343  
  nop                       #  16    0x140104  1      OPC=1343  
  nop                       #  17    0x140105  1      OPC=1343  
  nop                       #  18    0x140106  1      OPC=1343  
  nop                       #  19    0x140107  1      OPC=1343  
  nop                       #  20    0x140108  1      OPC=1343  
  nop                       #  21    0x140109  1      OPC=1343  
  nop                       #  22    0x14010a  1      OPC=1343  
  nop                       #  23    0x14010b  1      OPC=1343  
  nop                       #  24    0x14010c  1      OPC=1343  
  nop                       #  25    0x14010d  1      OPC=1343  
  nop                       #  26    0x14010e  1      OPC=1343  
  nop                       #  27    0x14010f  1      OPC=1343  
  nop                       #  28    0x140110  1      OPC=1343  
  nop                       #  29    0x140111  1      OPC=1343  
  nop                       #  30    0x140112  1      OPC=1343  
  nop                       #  31    0x140113  1      OPC=1343  
  nop                       #  32    0x140114  1      OPC=1343  
  nop                       #  33    0x140115  1      OPC=1343  
  nop                       #  34    0x140116  1      OPC=1343  
  nop                       #  35    0x140117  1      OPC=1343  
  nop                       #  36    0x140118  1      OPC=1343  
  nop                       #  37    0x140119  1      OPC=1343  
  nop                       #  38    0x14011a  1      OPC=1343  
  callq .__nacl_read_tp     #  39    0x14011b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  40    0x140120  7      OPC=1069  
  movl %r13d, %ecx          #  41    0x140127  3      OPC=1157  
  movl %r12d, %edx          #  42    0x14012a  3      OPC=1157  
  movl %ebx, %esi           #  43    0x14012d  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  44    0x14012f  5      OPC=1161  
  movq (%rsp), %rbx         #  45    0x140134  4      OPC=1161  
  movq 0x10(%rsp), %r13     #  46    0x140138  5      OPC=1161  
  nop                       #  47    0x14013d  1      OPC=1343  
  nop                       #  48    0x14013e  1      OPC=1343  
  nop                       #  49    0x14013f  1      OPC=1343  
  movl %eax, %eax           #  50    0x140140  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  51    0x140142  4      OPC=1156  
  addl $0x18, %esp          #  52    0x140146  3      OPC=65    
  addq %r15, %rsp           #  53    0x140149  3      OPC=72    
  jmpq ._vfprintf_r         #  54    0x14014c  5      OPC=930   
  nop                       #  55    0x140151  1      OPC=1343  
  nop                       #  56    0x140152  1      OPC=1343  
  nop                       #  57    0x140153  1      OPC=1343  
  nop                       #  58    0x140154  1      OPC=1343  
  nop                       #  59    0x140155  1      OPC=1343  
  nop                       #  60    0x140156  1      OPC=1343  
  nop                       #  61    0x140157  1      OPC=1343  
  nop                       #  62    0x140158  1      OPC=1343  
  nop                       #  63    0x140159  1      OPC=1343  
  nop                       #  64    0x14015a  1      OPC=1343  
  nop                       #  65    0x14015b  1      OPC=1343  
  nop                       #  66    0x14015c  1      OPC=1343  
  nop                       #  67    0x14015d  1      OPC=1343  
  nop                       #  68    0x14015e  1      OPC=1343  
  nop                       #  69    0x14015f  1      OPC=1343  
                                                                
.size vfprintf, .-vfprintf

