  .text
  .globl _ZNKSs2atEj
  .type _ZNKSs2atEj, @function

#! file-offset 0xea920
#! rip-offset  0xaa920
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNKSs2atEj:                           #        0xaa920  0      OPC=0     
  movl %edi, %edi                       #  1     0xaa920  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xaa922  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xaa925  3      OPC=72    
  movl %edi, %edi                       #  4     0xaa928  2      OPC=1157  
  movl (%r15,%rdi,1), %eax              #  5     0xaa92a  4      OPC=1156  
  leal -0xc(%rax), %edx                 #  6     0xaa92e  3      OPC=1066  
  movl %edx, %edx                       #  7     0xaa931  2      OPC=1157  
  cmpl (%r15,%rdx,1), %esi              #  8     0xaa933  4      OPC=471   
  jae .L_aa960                          #  9     0xaa937  6      OPC=869   
  nop                                   #  10    0xaa93d  1      OPC=1343  
  nop                                   #  11    0xaa93e  1      OPC=1343  
  addl $0x8, %esp                       #  12    0xaa93f  3      OPC=65    
  addq %r15, %rsp                       #  13    0xaa942  3      OPC=72    
  nop                                   #  14    0xaa945  1      OPC=1343  
  leal (%rsi,%rax,1), %eax              #  15    0xaa946  3      OPC=1066  
  popq %r11                             #  16    0xaa949  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  17    0xaa94b  7      OPC=131   
  nop                                   #  18    0xaa952  1      OPC=1343  
  nop                                   #  19    0xaa953  1      OPC=1343  
  nop                                   #  20    0xaa954  1      OPC=1343  
  nop                                   #  21    0xaa955  1      OPC=1343  
  addq %r15, %r11                       #  22    0xaa956  3      OPC=72    
  jmpq %r11                             #  23    0xaa959  3      OPC=928   
  xchgw %ax, %ax                        #  24    0xaa95c  2      OPC=3700  
  nop                                   #  25    0xaa95e  1      OPC=1343  
  nop                                   #  26    0xaa95f  1      OPC=1343  
  nop                                   #  27    0xaa960  1      OPC=1343  
  nop                                   #  28    0xaa961  1      OPC=1343  
  nop                                   #  29    0xaa962  1      OPC=1343  
  nop                                   #  30    0xaa963  1      OPC=1343  
  nop                                   #  31    0xaa964  1      OPC=1343  
  nop                                   #  32    0xaa965  1      OPC=1343  
  nop                                   #  33    0xaa966  1      OPC=1343  
  nop                                   #  34    0xaa967  1      OPC=1343  
  nop                                   #  35    0xaa968  1      OPC=1343  
  nop                                   #  36    0xaa969  1      OPC=1343  
  nop                                   #  37    0xaa96a  1      OPC=1343  
  nop                                   #  38    0xaa96b  1      OPC=1343  
  nop                                   #  39    0xaa96c  1      OPC=1343  
.L_aa960:                               #        0xaa96d  0      OPC=0     
  movl $0x1003baac, %edi                #  40    0xaa96d  5      OPC=1154  
  nop                                   #  41    0xaa972  1      OPC=1343  
  nop                                   #  42    0xaa973  1      OPC=1343  
  nop                                   #  43    0xaa974  1      OPC=1343  
  nop                                   #  44    0xaa975  1      OPC=1343  
  nop                                   #  45    0xaa976  1      OPC=1343  
  nop                                   #  46    0xaa977  1      OPC=1343  
  nop                                   #  47    0xaa978  1      OPC=1343  
  nop                                   #  48    0xaa979  1      OPC=1343  
  nop                                   #  49    0xaa97a  1      OPC=1343  
  nop                                   #  50    0xaa97b  1      OPC=1343  
  nop                                   #  51    0xaa97c  1      OPC=1343  
  nop                                   #  52    0xaa97d  1      OPC=1343  
  nop                                   #  53    0xaa97e  1      OPC=1343  
  nop                                   #  54    0xaa97f  1      OPC=1343  
  nop                                   #  55    0xaa980  1      OPC=1343  
  nop                                   #  56    0xaa981  1      OPC=1343  
  nop                                   #  57    0xaa982  1      OPC=1343  
  nop                                   #  58    0xaa983  1      OPC=1343  
  nop                                   #  59    0xaa984  1      OPC=1343  
  nop                                   #  60    0xaa985  1      OPC=1343  
  nop                                   #  61    0xaa986  1      OPC=1343  
  nop                                   #  62    0xaa987  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  63    0xaa988  5      OPC=260   
                                                                           
.size _ZNKSs2atEj, .-_ZNKSs2atEj

