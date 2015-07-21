  .text
  .globl wcsnrtombs
  .type wcsnrtombs, @function

#! file-offset 0x192100
#! rip-offset  0x152100
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.wcsnrtombs:                #        0x152100  0      OPC=0     
  movl %r8d, %r9d           #  1     0x152100  3      OPC=1157  
  movq %rbx, -0x20(%rsp)    #  2     0x152103  5      OPC=1138  
  movq %r12, -0x18(%rsp)    #  3     0x152108  5      OPC=1138  
  movq %r13, -0x10(%rsp)    #  4     0x15210d  5      OPC=1138  
  movq %r14, -0x8(%rsp)     #  5     0x152112  5      OPC=1138  
  subl $0x38, %esp          #  6     0x152117  3      OPC=2384  
  addq %r15, %rsp           #  7     0x15211a  3      OPC=72    
  movl %edx, %r13d          #  8     0x15211d  3      OPC=1157  
  movl %ecx, %r14d          #  9     0x152120  3      OPC=1157  
  movl %edi, %ebx           #  10    0x152123  2      OPC=1157  
  movl %esi, %r12d          #  11    0x152125  3      OPC=1157  
  movq %r9, 0x8(%rsp)       #  12    0x152128  5      OPC=1138  
  nop                       #  13    0x15212d  1      OPC=1343  
  nop                       #  14    0x15212e  1      OPC=1343  
  nop                       #  15    0x15212f  1      OPC=1343  
  nop                       #  16    0x152130  1      OPC=1343  
  nop                       #  17    0x152131  1      OPC=1343  
  nop                       #  18    0x152132  1      OPC=1343  
  nop                       #  19    0x152133  1      OPC=1343  
  nop                       #  20    0x152134  1      OPC=1343  
  nop                       #  21    0x152135  1      OPC=1343  
  nop                       #  22    0x152136  1      OPC=1343  
  nop                       #  23    0x152137  1      OPC=1343  
  nop                       #  24    0x152138  1      OPC=1343  
  nop                       #  25    0x152139  1      OPC=1343  
  nop                       #  26    0x15213a  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x15213b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x152140  7      OPC=1069  
  movq 0x8(%rsp), %r9       #  29    0x152147  5      OPC=1161  
  movl %r14d, %r8d          #  30    0x15214c  3      OPC=1157  
  movl %r13d, %ecx          #  31    0x15214f  3      OPC=1157  
  movl %r12d, %edx          #  32    0x152152  3      OPC=1157  
  movl %ebx, %esi           #  33    0x152155  2      OPC=1157  
  movq 0x20(%rsp), %r12     #  34    0x152157  5      OPC=1161  
  nop                       #  35    0x15215c  1      OPC=1343  
  nop                       #  36    0x15215d  1      OPC=1343  
  nop                       #  37    0x15215e  1      OPC=1343  
  nop                       #  38    0x15215f  1      OPC=1343  
  movq 0x18(%rsp), %rbx     #  39    0x152160  5      OPC=1161  
  movq 0x28(%rsp), %r13     #  40    0x152165  5      OPC=1161  
  movq 0x30(%rsp), %r14     #  41    0x15216a  5      OPC=1161  
  movl %eax, %eax           #  42    0x15216f  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  43    0x152171  4      OPC=1156  
  addl $0x38, %esp          #  44    0x152175  3      OPC=65    
  addq %r15, %rsp           #  45    0x152178  3      OPC=72    
  jmpq ._wcsnrtombs_r       #  46    0x15217b  5      OPC=930   
                                                                
.size wcsnrtombs, .-wcsnrtombs

