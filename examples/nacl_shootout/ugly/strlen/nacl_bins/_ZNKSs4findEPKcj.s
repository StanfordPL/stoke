  .text
  .globl _ZNKSs4findEPKcj
  .type _ZNKSs4findEPKcj, @function

#! file-offset 0xeb360
#! rip-offset  0xab360
#! capacity    128 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
._ZNKSs4findEPKcj:         #        0xab360  0      OPC=0     
  movq %r12, -0x10(%rsp)   #  1     0xab360  5      OPC=1138  
  movl %esi, %r12d         #  2     0xab365  3      OPC=1157  
  movq %rbx, -0x18(%rsp)   #  3     0xab368  5      OPC=1138  
  movq %r13, -0x8(%rsp)    #  4     0xab36d  5      OPC=1138  
  movl %edi, %ebx          #  5     0xab372  2      OPC=1157  
  subl $0x18, %esp         #  6     0xab374  3      OPC=2384  
  addq %r15, %rsp          #  7     0xab377  3      OPC=72    
  movl %edx, %r13d         #  8     0xab37a  3      OPC=1157  
  movl %r12d, %edi         #  9     0xab37d  3      OPC=1157  
  nop                      #  10    0xab380  1      OPC=1343  
  nop                      #  11    0xab381  1      OPC=1343  
  nop                      #  12    0xab382  1      OPC=1343  
  nop                      #  13    0xab383  1      OPC=1343  
  nop                      #  14    0xab384  1      OPC=1343  
  nop                      #  15    0xab385  1      OPC=1343  
  nop                      #  16    0xab386  1      OPC=1343  
  nop                      #  17    0xab387  1      OPC=1343  
  nop                      #  18    0xab388  1      OPC=1343  
  nop                      #  19    0xab389  1      OPC=1343  
  nop                      #  20    0xab38a  1      OPC=1343  
  nop                      #  21    0xab38b  1      OPC=1343  
  nop                      #  22    0xab38c  1      OPC=1343  
  nop                      #  23    0xab38d  1      OPC=1343  
  nop                      #  24    0xab38e  1      OPC=1343  
  nop                      #  25    0xab38f  1      OPC=1343  
  nop                      #  26    0xab390  1      OPC=1343  
  nop                      #  27    0xab391  1      OPC=1343  
  nop                      #  28    0xab392  1      OPC=1343  
  nop                      #  29    0xab393  1      OPC=1343  
  nop                      #  30    0xab394  1      OPC=1343  
  nop                      #  31    0xab395  1      OPC=1343  
  nop                      #  32    0xab396  1      OPC=1343  
  nop                      #  33    0xab397  1      OPC=1343  
  nop                      #  34    0xab398  1      OPC=1343  
  nop                      #  35    0xab399  1      OPC=1343  
  nop                      #  36    0xab39a  1      OPC=1343  
  callq .strlen            #  37    0xab39b  5      OPC=260   
  movl %r13d, %edx         #  38    0xab3a0  3      OPC=1157  
  movl %r12d, %esi         #  39    0xab3a3  3      OPC=1157  
  movl %ebx, %edi          #  40    0xab3a6  2      OPC=1157  
  movq 0x8(%rsp), %r12     #  41    0xab3a8  5      OPC=1161  
  movq (%rsp), %rbx        #  42    0xab3ad  4      OPC=1161  
  movl %eax, %ecx          #  43    0xab3b1  2      OPC=1157  
  movq 0x10(%rsp), %r13    #  44    0xab3b3  5      OPC=1161  
  addl $0x18, %esp         #  45    0xab3b8  3      OPC=65    
  addq %r15, %rsp          #  46    0xab3bb  3      OPC=72    
  xchgw %ax, %ax           #  47    0xab3be  2      OPC=3700  
  jmpq ._ZNKSs4findEPKcjj  #  48    0xab3c0  5      OPC=930   
  nop                      #  49    0xab3c5  1      OPC=1343  
  nop                      #  50    0xab3c6  1      OPC=1343  
  nop                      #  51    0xab3c7  1      OPC=1343  
  nop                      #  52    0xab3c8  1      OPC=1343  
  nop                      #  53    0xab3c9  1      OPC=1343  
  nop                      #  54    0xab3ca  1      OPC=1343  
  nop                      #  55    0xab3cb  1      OPC=1343  
  nop                      #  56    0xab3cc  1      OPC=1343  
  nop                      #  57    0xab3cd  1      OPC=1343  
  nop                      #  58    0xab3ce  1      OPC=1343  
  nop                      #  59    0xab3cf  1      OPC=1343  
  nop                      #  60    0xab3d0  1      OPC=1343  
  nop                      #  61    0xab3d1  1      OPC=1343  
  nop                      #  62    0xab3d2  1      OPC=1343  
  nop                      #  63    0xab3d3  1      OPC=1343  
  nop                      #  64    0xab3d4  1      OPC=1343  
  nop                      #  65    0xab3d5  1      OPC=1343  
  nop                      #  66    0xab3d6  1      OPC=1343  
  nop                      #  67    0xab3d7  1      OPC=1343  
  nop                      #  68    0xab3d8  1      OPC=1343  
  nop                      #  69    0xab3d9  1      OPC=1343  
  nop                      #  70    0xab3da  1      OPC=1343  
  nop                      #  71    0xab3db  1      OPC=1343  
  nop                      #  72    0xab3dc  1      OPC=1343  
  nop                      #  73    0xab3dd  1      OPC=1343  
  nop                      #  74    0xab3de  1      OPC=1343  
  nop                      #  75    0xab3df  1      OPC=1343  
                                                              
.size _ZNKSs4findEPKcj, .-_ZNKSs4findEPKcj

