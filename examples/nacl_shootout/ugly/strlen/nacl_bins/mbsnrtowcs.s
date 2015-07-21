  .text
  .globl mbsnrtowcs
  .type mbsnrtowcs, @function

#! file-offset 0x197c20
#! rip-offset  0x157c20
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.mbsnrtowcs:                #        0x157c20  0      OPC=0     
  movl %r8d, %r9d           #  1     0x157c20  3      OPC=1157  
  movq %rbx, -0x20(%rsp)    #  2     0x157c23  5      OPC=1138  
  movq %r12, -0x18(%rsp)    #  3     0x157c28  5      OPC=1138  
  movq %r13, -0x10(%rsp)    #  4     0x157c2d  5      OPC=1138  
  movq %r14, -0x8(%rsp)     #  5     0x157c32  5      OPC=1138  
  subl $0x38, %esp          #  6     0x157c37  3      OPC=2384  
  addq %r15, %rsp           #  7     0x157c3a  3      OPC=72    
  movl %edx, %r13d          #  8     0x157c3d  3      OPC=1157  
  movl %ecx, %r14d          #  9     0x157c40  3      OPC=1157  
  movl %edi, %ebx           #  10    0x157c43  2      OPC=1157  
  movl %esi, %r12d          #  11    0x157c45  3      OPC=1157  
  movq %r9, 0x8(%rsp)       #  12    0x157c48  5      OPC=1138  
  nop                       #  13    0x157c4d  1      OPC=1343  
  nop                       #  14    0x157c4e  1      OPC=1343  
  nop                       #  15    0x157c4f  1      OPC=1343  
  nop                       #  16    0x157c50  1      OPC=1343  
  nop                       #  17    0x157c51  1      OPC=1343  
  nop                       #  18    0x157c52  1      OPC=1343  
  nop                       #  19    0x157c53  1      OPC=1343  
  nop                       #  20    0x157c54  1      OPC=1343  
  nop                       #  21    0x157c55  1      OPC=1343  
  nop                       #  22    0x157c56  1      OPC=1343  
  nop                       #  23    0x157c57  1      OPC=1343  
  nop                       #  24    0x157c58  1      OPC=1343  
  nop                       #  25    0x157c59  1      OPC=1343  
  nop                       #  26    0x157c5a  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x157c5b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x157c60  7      OPC=1069  
  movq 0x8(%rsp), %r9       #  29    0x157c67  5      OPC=1161  
  movl %r14d, %r8d          #  30    0x157c6c  3      OPC=1157  
  movl %r13d, %ecx          #  31    0x157c6f  3      OPC=1157  
  movl %r12d, %edx          #  32    0x157c72  3      OPC=1157  
  movl %ebx, %esi           #  33    0x157c75  2      OPC=1157  
  movq 0x20(%rsp), %r12     #  34    0x157c77  5      OPC=1161  
  nop                       #  35    0x157c7c  1      OPC=1343  
  nop                       #  36    0x157c7d  1      OPC=1343  
  nop                       #  37    0x157c7e  1      OPC=1343  
  nop                       #  38    0x157c7f  1      OPC=1343  
  movq 0x18(%rsp), %rbx     #  39    0x157c80  5      OPC=1161  
  movq 0x28(%rsp), %r13     #  40    0x157c85  5      OPC=1161  
  movq 0x30(%rsp), %r14     #  41    0x157c8a  5      OPC=1161  
  movl %eax, %eax           #  42    0x157c8f  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  43    0x157c91  4      OPC=1156  
  addl $0x38, %esp          #  44    0x157c95  3      OPC=65    
  addq %r15, %rsp           #  45    0x157c98  3      OPC=72    
  jmpq ._mbsnrtowcs_r       #  46    0x157c9b  5      OPC=930   
                                                                
.size mbsnrtowcs, .-mbsnrtowcs

