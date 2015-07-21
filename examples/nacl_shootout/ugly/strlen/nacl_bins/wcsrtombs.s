  .text
  .globl wcsrtombs
  .type wcsrtombs, @function

#! file-offset 0x1828a0
#! rip-offset  0x1428a0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.wcsrtombs:                 #        0x1428a0  0      OPC=0     
  movq %rbx, -0x20(%rsp)    #  1     0x1428a0  5      OPC=1138  
  movq %r12, -0x18(%rsp)    #  2     0x1428a5  5      OPC=1138  
  movl %edi, %ebx           #  3     0x1428aa  2      OPC=1157  
  movq %r13, -0x10(%rsp)    #  4     0x1428ac  5      OPC=1138  
  movq %r14, -0x8(%rsp)     #  5     0x1428b1  5      OPC=1138  
  subl $0x28, %esp          #  6     0x1428b6  3      OPC=2384  
  addq %r15, %rsp           #  7     0x1428b9  3      OPC=72    
  movl %edx, %r13d          #  8     0x1428bc  3      OPC=1157  
  nop                       #  9     0x1428bf  1      OPC=1343  
  movl %esi, %r12d          #  10    0x1428c0  3      OPC=1157  
  movl %ecx, %r14d          #  11    0x1428c3  3      OPC=1157  
  nop                       #  12    0x1428c6  1      OPC=1343  
  nop                       #  13    0x1428c7  1      OPC=1343  
  nop                       #  14    0x1428c8  1      OPC=1343  
  nop                       #  15    0x1428c9  1      OPC=1343  
  nop                       #  16    0x1428ca  1      OPC=1343  
  nop                       #  17    0x1428cb  1      OPC=1343  
  nop                       #  18    0x1428cc  1      OPC=1343  
  nop                       #  19    0x1428cd  1      OPC=1343  
  nop                       #  20    0x1428ce  1      OPC=1343  
  nop                       #  21    0x1428cf  1      OPC=1343  
  nop                       #  22    0x1428d0  1      OPC=1343  
  nop                       #  23    0x1428d1  1      OPC=1343  
  nop                       #  24    0x1428d2  1      OPC=1343  
  nop                       #  25    0x1428d3  1      OPC=1343  
  nop                       #  26    0x1428d4  1      OPC=1343  
  nop                       #  27    0x1428d5  1      OPC=1343  
  nop                       #  28    0x1428d6  1      OPC=1343  
  nop                       #  29    0x1428d7  1      OPC=1343  
  nop                       #  30    0x1428d8  1      OPC=1343  
  nop                       #  31    0x1428d9  1      OPC=1343  
  nop                       #  32    0x1428da  1      OPC=1343  
  callq .__nacl_read_tp     #  33    0x1428db  5      OPC=260   
  leaq -0x480(%rax), %rax   #  34    0x1428e0  7      OPC=1069  
  movl %r14d, %r9d          #  35    0x1428e7  3      OPC=1157  
  movl %r13d, %r8d          #  36    0x1428ea  3      OPC=1157  
  movl %r12d, %edx          #  37    0x1428ed  3      OPC=1157  
  movl %ebx, %esi           #  38    0x1428f0  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  39    0x1428f2  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  40    0x1428f7  5      OPC=1161  
  nop                       #  41    0x1428fc  1      OPC=1343  
  nop                       #  42    0x1428fd  1      OPC=1343  
  nop                       #  43    0x1428fe  1      OPC=1343  
  nop                       #  44    0x1428ff  1      OPC=1343  
  movq 0x18(%rsp), %r13     #  45    0x142900  5      OPC=1161  
  movl $0xffffffff, %ecx    #  46    0x142905  6      OPC=1155  
  movq 0x20(%rsp), %r14     #  47    0x14290b  5      OPC=1161  
  movl %eax, %eax           #  48    0x142910  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  49    0x142912  4      OPC=1156  
  addl $0x28, %esp          #  50    0x142916  3      OPC=65    
  addq %r15, %rsp           #  51    0x142919  3      OPC=72    
  jmpq ._wcsnrtombs_r       #  52    0x14291c  5      OPC=930   
                                                                
.size wcsrtombs, .-wcsrtombs

