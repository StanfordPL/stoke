  .text
  .globl _ZNSt8numpunctIwEC2EPij
  .type _ZNSt8numpunctIwEC2EPij, @function

#! file-offset 0xf60a0
#! rip-offset  0xb60a0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIwEC2EPij:                              #        0xb60a0  0      OPC=0     
  pushq %rbx                                           #  1     0xb60a0  1      OPC=1861  
  xorl %eax, %eax                                      #  2     0xb60a1  2      OPC=3758  
  movl %edi, %ebx                                      #  3     0xb60a3  2      OPC=1157  
  movl %esi, %esi                                      #  4     0xb60a5  2      OPC=1157  
  movl %ebx, %edi                                      #  5     0xb60a7  2      OPC=1157  
  subl $0x10, %esp                                     #  6     0xb60a9  3      OPC=2384  
  addq %r15, %rsp                                      #  7     0xb60ac  3      OPC=72    
  testl %edx, %edx                                     #  8     0xb60af  2      OPC=2436  
  movl %ebx, %ebx                                      #  9     0xb60b1  2      OPC=1157  
  movl $0x1003c228, (%r15,%rbx,1)                      #  10    0xb60b3  8      OPC=1135  
  setne %al                                            #  11    0xb60bb  3      OPC=2208  
  xchgw %ax, %ax                                       #  12    0xb60be  2      OPC=3700  
  movl %ebx, %ebx                                      #  13    0xb60c0  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0xb60c2  9      OPC=1135  
  movl %ebx, %ebx                                      #  15    0xb60cb  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0xb60cd  5      OPC=1136  
  nop                                                  #  17    0xb60d2  1      OPC=1343  
  nop                                                  #  18    0xb60d3  1      OPC=1343  
  nop                                                  #  19    0xb60d4  1      OPC=1343  
  nop                                                  #  20    0xb60d5  1      OPC=1343  
  nop                                                  #  21    0xb60d6  1      OPC=1343  
  nop                                                  #  22    0xb60d7  1      OPC=1343  
  nop                                                  #  23    0xb60d8  1      OPC=1343  
  nop                                                  #  24    0xb60d9  1      OPC=1343  
  nop                                                  #  25    0xb60da  1      OPC=1343  
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  26    0xb60db  5      OPC=260   
  addl $0x10, %esp                                     #  27    0xb60e0  3      OPC=65    
  addq %r15, %rsp                                      #  28    0xb60e3  3      OPC=72    
  popq %rbx                                            #  29    0xb60e6  1      OPC=1694  
  popq %r11                                            #  30    0xb60e7  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  31    0xb60e9  7      OPC=131   
  nop                                                  #  32    0xb60f0  1      OPC=1343  
  nop                                                  #  33    0xb60f1  1      OPC=1343  
  nop                                                  #  34    0xb60f2  1      OPC=1343  
  nop                                                  #  35    0xb60f3  1      OPC=1343  
  addq %r15, %r11                                      #  36    0xb60f4  3      OPC=72    
  jmpq %r11                                            #  37    0xb60f7  3      OPC=928   
  nop                                                  #  38    0xb60fa  1      OPC=1343  
  nop                                                  #  39    0xb60fb  1      OPC=1343  
  nop                                                  #  40    0xb60fc  1      OPC=1343  
  nop                                                  #  41    0xb60fd  1      OPC=1343  
  nop                                                  #  42    0xb60fe  1      OPC=1343  
  nop                                                  #  43    0xb60ff  1      OPC=1343  
  nop                                                  #  44    0xb6100  1      OPC=1343  
  nop                                                  #  45    0xb6101  1      OPC=1343  
  nop                                                  #  46    0xb6102  1      OPC=1343  
  nop                                                  #  47    0xb6103  1      OPC=1343  
  nop                                                  #  48    0xb6104  1      OPC=1343  
  nop                                                  #  49    0xb6105  1      OPC=1343  
  nop                                                  #  50    0xb6106  1      OPC=1343  
  movl %ebx, %edi                                      #  51    0xb6107  2      OPC=1157  
  movl %eax, 0x8(%rsp)                                 #  52    0xb6109  4      OPC=1136  
  nop                                                  #  53    0xb610d  1      OPC=1343  
  nop                                                  #  54    0xb610e  1      OPC=1343  
  nop                                                  #  55    0xb610f  1      OPC=1343  
  nop                                                  #  56    0xb6110  1      OPC=1343  
  nop                                                  #  57    0xb6111  1      OPC=1343  
  nop                                                  #  58    0xb6112  1      OPC=1343  
  nop                                                  #  59    0xb6113  1      OPC=1343  
  nop                                                  #  60    0xb6114  1      OPC=1343  
  nop                                                  #  61    0xb6115  1      OPC=1343  
  nop                                                  #  62    0xb6116  1      OPC=1343  
  nop                                                  #  63    0xb6117  1      OPC=1343  
  nop                                                  #  64    0xb6118  1      OPC=1343  
  nop                                                  #  65    0xb6119  1      OPC=1343  
  nop                                                  #  66    0xb611a  1      OPC=1343  
  nop                                                  #  67    0xb611b  1      OPC=1343  
  nop                                                  #  68    0xb611c  1      OPC=1343  
  nop                                                  #  69    0xb611d  1      OPC=1343  
  nop                                                  #  70    0xb611e  1      OPC=1343  
  nop                                                  #  71    0xb611f  1      OPC=1343  
  nop                                                  #  72    0xb6120  1      OPC=1343  
  nop                                                  #  73    0xb6121  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                        #  74    0xb6122  5      OPC=260   
  movl 0x8(%rsp), %eax                                 #  75    0xb6127  4      OPC=1156  
  movl %eax, %edi                                      #  76    0xb612b  2      OPC=1157  
  nop                                                  #  77    0xb612d  1      OPC=1343  
  nop                                                  #  78    0xb612e  1      OPC=1343  
  nop                                                  #  79    0xb612f  1      OPC=1343  
  nop                                                  #  80    0xb6130  1      OPC=1343  
  nop                                                  #  81    0xb6131  1      OPC=1343  
  nop                                                  #  82    0xb6132  1      OPC=1343  
  nop                                                  #  83    0xb6133  1      OPC=1343  
  nop                                                  #  84    0xb6134  1      OPC=1343  
  nop                                                  #  85    0xb6135  1      OPC=1343  
  nop                                                  #  86    0xb6136  1      OPC=1343  
  nop                                                  #  87    0xb6137  1      OPC=1343  
  nop                                                  #  88    0xb6138  1      OPC=1343  
  nop                                                  #  89    0xb6139  1      OPC=1343  
  nop                                                  #  90    0xb613a  1      OPC=1343  
  nop                                                  #  91    0xb613b  1      OPC=1343  
  nop                                                  #  92    0xb613c  1      OPC=1343  
  nop                                                  #  93    0xb613d  1      OPC=1343  
  nop                                                  #  94    0xb613e  1      OPC=1343  
  nop                                                  #  95    0xb613f  1      OPC=1343  
  nop                                                  #  96    0xb6140  1      OPC=1343  
  nop                                                  #  97    0xb6141  1      OPC=1343  
  callq ._Unwind_Resume                                #  98    0xb6142  5      OPC=260   
                                                                                          
.size _ZNSt8numpunctIwEC2EPij, .-_ZNSt8numpunctIwEC2EPij

