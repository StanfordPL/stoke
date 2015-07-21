  .text
  .globl vsnprintf
  .type vsnprintf, @function

#! file-offset 0x180260
#! rip-offset  0x140260
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.vsnprintf:                 #        0x140260  0      OPC=0     
  movq %rbx, -0x20(%rsp)    #  1     0x140260  5      OPC=1138  
  movq %r12, -0x18(%rsp)    #  2     0x140265  5      OPC=1138  
  movl %edi, %ebx           #  3     0x14026a  2      OPC=1157  
  movq %r13, -0x10(%rsp)    #  4     0x14026c  5      OPC=1138  
  movq %r14, -0x8(%rsp)     #  5     0x140271  5      OPC=1138  
  subl $0x28, %esp          #  6     0x140276  3      OPC=2384  
  addq %r15, %rsp           #  7     0x140279  3      OPC=72    
  movl %esi, %r12d          #  8     0x14027c  3      OPC=1157  
  nop                       #  9     0x14027f  1      OPC=1343  
  movl %edx, %r13d          #  10    0x140280  3      OPC=1157  
  movl %ecx, %r14d          #  11    0x140283  3      OPC=1157  
  nop                       #  12    0x140286  1      OPC=1343  
  nop                       #  13    0x140287  1      OPC=1343  
  nop                       #  14    0x140288  1      OPC=1343  
  nop                       #  15    0x140289  1      OPC=1343  
  nop                       #  16    0x14028a  1      OPC=1343  
  nop                       #  17    0x14028b  1      OPC=1343  
  nop                       #  18    0x14028c  1      OPC=1343  
  nop                       #  19    0x14028d  1      OPC=1343  
  nop                       #  20    0x14028e  1      OPC=1343  
  nop                       #  21    0x14028f  1      OPC=1343  
  nop                       #  22    0x140290  1      OPC=1343  
  nop                       #  23    0x140291  1      OPC=1343  
  nop                       #  24    0x140292  1      OPC=1343  
  nop                       #  25    0x140293  1      OPC=1343  
  nop                       #  26    0x140294  1      OPC=1343  
  nop                       #  27    0x140295  1      OPC=1343  
  nop                       #  28    0x140296  1      OPC=1343  
  nop                       #  29    0x140297  1      OPC=1343  
  nop                       #  30    0x140298  1      OPC=1343  
  nop                       #  31    0x140299  1      OPC=1343  
  nop                       #  32    0x14029a  1      OPC=1343  
  callq .__nacl_read_tp     #  33    0x14029b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  34    0x1402a0  7      OPC=1069  
  movl %r14d, %r8d          #  35    0x1402a7  3      OPC=1157  
  movl %r13d, %ecx          #  36    0x1402aa  3      OPC=1157  
  movl %r12d, %edx          #  37    0x1402ad  3      OPC=1157  
  movl %ebx, %esi           #  38    0x1402b0  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  39    0x1402b2  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  40    0x1402b7  5      OPC=1161  
  nop                       #  41    0x1402bc  1      OPC=1343  
  nop                       #  42    0x1402bd  1      OPC=1343  
  nop                       #  43    0x1402be  1      OPC=1343  
  nop                       #  44    0x1402bf  1      OPC=1343  
  movq 0x18(%rsp), %r13     #  45    0x1402c0  5      OPC=1161  
  movq 0x20(%rsp), %r14     #  46    0x1402c5  5      OPC=1161  
  movl %eax, %eax           #  47    0x1402ca  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  48    0x1402cc  4      OPC=1156  
  addl $0x28, %esp          #  49    0x1402d0  3      OPC=65    
  addq %r15, %rsp           #  50    0x1402d3  3      OPC=72    
  jmpq ._vsnprintf_r        #  51    0x1402d6  5      OPC=930   
  nop                       #  52    0x1402db  1      OPC=1343  
  nop                       #  53    0x1402dc  1      OPC=1343  
  nop                       #  54    0x1402dd  1      OPC=1343  
  nop                       #  55    0x1402de  1      OPC=1343  
  nop                       #  56    0x1402df  1      OPC=1343  
                                                                
.size vsnprintf, .-vsnprintf

