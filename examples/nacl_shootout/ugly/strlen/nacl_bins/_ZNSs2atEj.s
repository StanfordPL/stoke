  .text
  .globl _ZNSs2atEj
  .type _ZNSs2atEj, @function

#! file-offset 0xee580
#! rip-offset  0xae580
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs2atEj:                            #        0xae580  0      OPC=0     
  movq %rbx, -0x10(%rsp)                #  1     0xae580  5      OPC=1138  
  movl %edi, %ebx                       #  2     0xae585  2      OPC=1157  
  movq %r12, -0x8(%rsp)                 #  3     0xae587  5      OPC=1138  
  subl $0x18, %esp                      #  4     0xae58c  3      OPC=2384  
  addq %r15, %rsp                       #  5     0xae58f  3      OPC=72    
  movl %ebx, %ebx                       #  6     0xae592  2      OPC=1157  
  movl (%r15,%rbx,1), %eax              #  7     0xae594  4      OPC=1156  
  movl %esi, %r12d                      #  8     0xae598  3      OPC=1157  
  leal -0xc(%rax), %edx                 #  9     0xae59b  3      OPC=1066  
  xchgw %ax, %ax                        #  10    0xae59e  2      OPC=3700  
  movl %edx, %edx                       #  11    0xae5a0  2      OPC=1157  
  cmpl (%r15,%rdx,1), %esi              #  12    0xae5a2  4      OPC=471   
  jae .L_ae600                          #  13    0xae5a6  6      OPC=869   
  nop                                   #  14    0xae5ac  1      OPC=1343  
  nop                                   #  15    0xae5ad  1      OPC=1343  
  movl %edx, %edx                       #  16    0xae5ae  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %r9d           #  17    0xae5b0  5      OPC=1156  
  testl %r9d, %r9d                      #  18    0xae5b5  3      OPC=2436  
  js .L_ae5e0                           #  19    0xae5b8  6      OPC=1043  
  nop                                   #  20    0xae5be  1      OPC=1343  
  nop                                   #  21    0xae5bf  1      OPC=1343  
  movl %ebx, %edi                       #  22    0xae5c0  2      OPC=1157  
  nop                                   #  23    0xae5c2  1      OPC=1343  
  nop                                   #  24    0xae5c3  1      OPC=1343  
  nop                                   #  25    0xae5c4  1      OPC=1343  
  nop                                   #  26    0xae5c5  1      OPC=1343  
  nop                                   #  27    0xae5c6  1      OPC=1343  
  callq ._ZNSs12_M_leak_hardEv          #  28    0xae5c7  5      OPC=260   
  movl %ebx, %ebx                       #  29    0xae5cc  2      OPC=1157  
  movl (%r15,%rbx,1), %eax              #  30    0xae5ce  4      OPC=1156  
  nop                                   #  31    0xae5d2  1      OPC=1343  
  nop                                   #  32    0xae5d3  1      OPC=1343  
  nop                                   #  33    0xae5d4  1      OPC=1343  
  nop                                   #  34    0xae5d5  1      OPC=1343  
  nop                                   #  35    0xae5d6  1      OPC=1343  
  nop                                   #  36    0xae5d7  1      OPC=1343  
  nop                                   #  37    0xae5d8  1      OPC=1343  
  nop                                   #  38    0xae5d9  1      OPC=1343  
  nop                                   #  39    0xae5da  1      OPC=1343  
  nop                                   #  40    0xae5db  1      OPC=1343  
  nop                                   #  41    0xae5dc  1      OPC=1343  
  nop                                   #  42    0xae5dd  1      OPC=1343  
  nop                                   #  43    0xae5de  1      OPC=1343  
  nop                                   #  44    0xae5df  1      OPC=1343  
  nop                                   #  45    0xae5e0  1      OPC=1343  
  nop                                   #  46    0xae5e1  1      OPC=1343  
  nop                                   #  47    0xae5e2  1      OPC=1343  
  nop                                   #  48    0xae5e3  1      OPC=1343  
  nop                                   #  49    0xae5e4  1      OPC=1343  
  nop                                   #  50    0xae5e5  1      OPC=1343  
  nop                                   #  51    0xae5e6  1      OPC=1343  
  nop                                   #  52    0xae5e7  1      OPC=1343  
  nop                                   #  53    0xae5e8  1      OPC=1343  
  nop                                   #  54    0xae5e9  1      OPC=1343  
  nop                                   #  55    0xae5ea  1      OPC=1343  
  nop                                   #  56    0xae5eb  1      OPC=1343  
.L_ae5e0:                               #        0xae5ec  0      OPC=0     
  leal (%r12,%rax,1), %eax              #  57    0xae5ec  4      OPC=1066  
  movq 0x8(%rsp), %rbx                  #  58    0xae5f0  5      OPC=1161  
  movq 0x10(%rsp), %r12                 #  59    0xae5f5  5      OPC=1161  
  addl $0x18, %esp                      #  60    0xae5fa  3      OPC=65    
  addq %r15, %rsp                       #  61    0xae5fd  3      OPC=72    
  popq %r11                             #  62    0xae600  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  63    0xae602  7      OPC=131   
  nop                                   #  64    0xae609  1      OPC=1343  
  nop                                   #  65    0xae60a  1      OPC=1343  
  nop                                   #  66    0xae60b  1      OPC=1343  
  nop                                   #  67    0xae60c  1      OPC=1343  
  addq %r15, %r11                       #  68    0xae60d  3      OPC=72    
  jmpq %r11                             #  69    0xae610  3      OPC=928   
.L_ae600:                               #        0xae613  0      OPC=0     
  movl $0x1003baac, %edi                #  70    0xae613  5      OPC=1154  
  nop                                   #  71    0xae618  1      OPC=1343  
  nop                                   #  72    0xae619  1      OPC=1343  
  nop                                   #  73    0xae61a  1      OPC=1343  
  nop                                   #  74    0xae61b  1      OPC=1343  
  nop                                   #  75    0xae61c  1      OPC=1343  
  nop                                   #  76    0xae61d  1      OPC=1343  
  nop                                   #  77    0xae61e  1      OPC=1343  
  nop                                   #  78    0xae61f  1      OPC=1343  
  nop                                   #  79    0xae620  1      OPC=1343  
  nop                                   #  80    0xae621  1      OPC=1343  
  nop                                   #  81    0xae622  1      OPC=1343  
  nop                                   #  82    0xae623  1      OPC=1343  
  nop                                   #  83    0xae624  1      OPC=1343  
  nop                                   #  84    0xae625  1      OPC=1343  
  nop                                   #  85    0xae626  1      OPC=1343  
  nop                                   #  86    0xae627  1      OPC=1343  
  nop                                   #  87    0xae628  1      OPC=1343  
  nop                                   #  88    0xae629  1      OPC=1343  
  nop                                   #  89    0xae62a  1      OPC=1343  
  nop                                   #  90    0xae62b  1      OPC=1343  
  nop                                   #  91    0xae62c  1      OPC=1343  
  nop                                   #  92    0xae62d  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  93    0xae62e  5      OPC=260   
                                                                           
.size _ZNSs2atEj, .-_ZNSs2atEj

