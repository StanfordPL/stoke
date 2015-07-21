  .text
  .globl _mbtowc_r
  .type _mbtowc_r, @function

#! file-offset 0x162680
#! rip-offset  0x122680
#! capacity    128 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
._mbtowc_r:                    #        0x122680  0      OPC=0     
  movq %rbx, -0x20(%rsp)       #  1     0x122680  5      OPC=1138  
  movq %r12, -0x18(%rsp)       #  2     0x122685  5      OPC=1138  
  movl %r8d, %r9d              #  3     0x12268a  3      OPC=1157  
  movq %r13, -0x10(%rsp)       #  4     0x12268d  5      OPC=1138  
  movq %r14, -0x8(%rsp)        #  5     0x122692  5      OPC=1138  
  subl $0x38, %esp             #  6     0x122697  3      OPC=2384  
  addq %r15, %rsp              #  7     0x12269a  3      OPC=72    
  nop                          #  8     0x12269d  1      OPC=1343  
  nop                          #  9     0x12269e  1      OPC=1343  
  nop                          #  10    0x12269f  1      OPC=1343  
  movl 0xff4e939(%rip), %r12d  #  11    0x1226a0  7      OPC=1156  
  movl %edi, %ebx              #  12    0x1226a7  2      OPC=1157  
  movl %esi, %r13d             #  13    0x1226a9  3      OPC=1157  
  movl %edx, %r14d             #  14    0x1226ac  3      OPC=1157  
  movl %ecx, 0x8(%rsp)         #  15    0x1226af  4      OPC=1136  
  movq %r9, (%rsp)             #  16    0x1226b3  4      OPC=1138  
  nop                          #  17    0x1226b7  1      OPC=1343  
  nop                          #  18    0x1226b8  1      OPC=1343  
  nop                          #  19    0x1226b9  1      OPC=1343  
  nop                          #  20    0x1226ba  1      OPC=1343  
  callq .__locale_charset      #  21    0x1226bb  5      OPC=260   
  movq (%rsp), %r9             #  22    0x1226c0  4      OPC=1161  
  movl 0x8(%rsp), %ecx         #  23    0x1226c4  4      OPC=1156  
  movl %r14d, %edx             #  24    0x1226c8  3      OPC=1157  
  movl %r13d, %esi             #  25    0x1226cb  3      OPC=1157  
  movl %ebx, %edi              #  26    0x1226ce  2      OPC=1157  
  movq %r12, %r10              #  27    0x1226d0  3      OPC=1162  
  movq 0x18(%rsp), %rbx        #  28    0x1226d3  5      OPC=1161  
  movq 0x20(%rsp), %r12        #  29    0x1226d8  5      OPC=1161  
  movl %eax, %r8d              #  30    0x1226dd  3      OPC=1157  
  movq 0x28(%rsp), %r13        #  31    0x1226e0  5      OPC=1161  
  movq 0x30(%rsp), %r14        #  32    0x1226e5  5      OPC=1161  
  addl $0x38, %esp             #  33    0x1226ea  3      OPC=65    
  addq %r15, %rsp              #  34    0x1226ed  3      OPC=72    
  andl $0xffffffe0, %r10d      #  35    0x1226f0  7      OPC=131   
  nop                          #  36    0x1226f7  1      OPC=1343  
  nop                          #  37    0x1226f8  1      OPC=1343  
  nop                          #  38    0x1226f9  1      OPC=1343  
  nop                          #  39    0x1226fa  1      OPC=1343  
  addq %r15, %r10              #  40    0x1226fb  3      OPC=72    
  jmpq %r10                    #  41    0x1226fe  3      OPC=928   
  nop                          #  42    0x122701  1      OPC=1343  
  nop                          #  43    0x122702  1      OPC=1343  
  nop                          #  44    0x122703  1      OPC=1343  
  nop                          #  45    0x122704  1      OPC=1343  
  nop                          #  46    0x122705  1      OPC=1343  
  nop                          #  47    0x122706  1      OPC=1343  
                                                                   
.size _mbtowc_r, .-_mbtowc_r

