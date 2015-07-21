  .text
  .globl _ZNSs4rendEv
  .type _ZNSs4rendEv, @function

#! file-offset 0xee760
#! rip-offset  0xae760
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._ZNSs4rendEv:                  #        0xae760  0      OPC=0     
  movq %rbx, -0x10(%rsp)        #  1     0xae760  5      OPC=1138  
  movl %esi, %ebx               #  2     0xae765  2      OPC=1157  
  movq %r12, -0x8(%rsp)         #  3     0xae767  5      OPC=1138  
  subl $0x18, %esp              #  4     0xae76c  3      OPC=2384  
  addq %r15, %rsp               #  5     0xae76f  3      OPC=72    
  movl %ebx, %ebx               #  6     0xae772  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  7     0xae774  4      OPC=1156  
  movl %edi, %r12d              #  8     0xae778  3      OPC=1157  
  leal -0xc(%rax), %edx         #  9     0xae77b  3      OPC=1066  
  xchgw %ax, %ax                #  10    0xae77e  2      OPC=3700  
  movl %edx, %edx               #  11    0xae780  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %ecx   #  12    0xae782  5      OPC=1156  
  testl %ecx, %ecx              #  13    0xae787  2      OPC=2436  
  js .L_ae7c0                   #  14    0xae789  6      OPC=1043  
  nop                           #  15    0xae78f  1      OPC=1343  
  nop                           #  16    0xae790  1      OPC=1343  
  movl %ebx, %edi               #  17    0xae791  2      OPC=1157  
  nop                           #  18    0xae793  1      OPC=1343  
  nop                           #  19    0xae794  1      OPC=1343  
  nop                           #  20    0xae795  1      OPC=1343  
  nop                           #  21    0xae796  1      OPC=1343  
  nop                           #  22    0xae797  1      OPC=1343  
  nop                           #  23    0xae798  1      OPC=1343  
  nop                           #  24    0xae799  1      OPC=1343  
  nop                           #  25    0xae79a  1      OPC=1343  
  nop                           #  26    0xae79b  1      OPC=1343  
  nop                           #  27    0xae79c  1      OPC=1343  
  nop                           #  28    0xae79d  1      OPC=1343  
  nop                           #  29    0xae79e  1      OPC=1343  
  nop                           #  30    0xae79f  1      OPC=1343  
  nop                           #  31    0xae7a0  1      OPC=1343  
  callq ._ZNSs12_M_leak_hardEv  #  32    0xae7a1  5      OPC=260   
  movl %ebx, %ebx               #  33    0xae7a6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  34    0xae7a8  4      OPC=1156  
  nop                           #  35    0xae7ac  1      OPC=1343  
  nop                           #  36    0xae7ad  1      OPC=1343  
  nop                           #  37    0xae7ae  1      OPC=1343  
  nop                           #  38    0xae7af  1      OPC=1343  
  nop                           #  39    0xae7b0  1      OPC=1343  
  nop                           #  40    0xae7b1  1      OPC=1343  
  nop                           #  41    0xae7b2  1      OPC=1343  
  nop                           #  42    0xae7b3  1      OPC=1343  
  nop                           #  43    0xae7b4  1      OPC=1343  
  nop                           #  44    0xae7b5  1      OPC=1343  
  nop                           #  45    0xae7b6  1      OPC=1343  
  nop                           #  46    0xae7b7  1      OPC=1343  
  nop                           #  47    0xae7b8  1      OPC=1343  
  nop                           #  48    0xae7b9  1      OPC=1343  
  nop                           #  49    0xae7ba  1      OPC=1343  
  nop                           #  50    0xae7bb  1      OPC=1343  
  nop                           #  51    0xae7bc  1      OPC=1343  
  nop                           #  52    0xae7bd  1      OPC=1343  
  nop                           #  53    0xae7be  1      OPC=1343  
  nop                           #  54    0xae7bf  1      OPC=1343  
  nop                           #  55    0xae7c0  1      OPC=1343  
  nop                           #  56    0xae7c1  1      OPC=1343  
  nop                           #  57    0xae7c2  1      OPC=1343  
  nop                           #  58    0xae7c3  1      OPC=1343  
  nop                           #  59    0xae7c4  1      OPC=1343  
  nop                           #  60    0xae7c5  1      OPC=1343  
.L_ae7c0:                       #        0xae7c6  0      OPC=0     
  movl %r12d, %r12d             #  61    0xae7c6  3      OPC=1157  
  movl %eax, (%r15,%r12,1)      #  62    0xae7c9  4      OPC=1136  
  movq 0x8(%rsp), %rbx          #  63    0xae7cd  5      OPC=1161  
  movl %r12d, %eax              #  64    0xae7d2  3      OPC=1157  
  movq 0x10(%rsp), %r12         #  65    0xae7d5  5      OPC=1161  
  addl $0x18, %esp              #  66    0xae7da  3      OPC=65    
  addq %r15, %rsp               #  67    0xae7dd  3      OPC=72    
  popq %r11                     #  68    0xae7e0  2      OPC=1694  
  nop                           #  69    0xae7e2  1      OPC=1343  
  nop                           #  70    0xae7e3  1      OPC=1343  
  nop                           #  71    0xae7e4  1      OPC=1343  
  nop                           #  72    0xae7e5  1      OPC=1343  
  andl $0xffffffe0, %r11d       #  73    0xae7e6  7      OPC=131   
  nop                           #  74    0xae7ed  1      OPC=1343  
  nop                           #  75    0xae7ee  1      OPC=1343  
  nop                           #  76    0xae7ef  1      OPC=1343  
  nop                           #  77    0xae7f0  1      OPC=1343  
  addq %r15, %r11               #  78    0xae7f1  3      OPC=72    
  jmpq %r11                     #  79    0xae7f4  3      OPC=928   
  nop                           #  80    0xae7f7  1      OPC=1343  
  nop                           #  81    0xae7f8  1      OPC=1343  
  nop                           #  82    0xae7f9  1      OPC=1343  
  nop                           #  83    0xae7fa  1      OPC=1343  
  nop                           #  84    0xae7fb  1      OPC=1343  
  nop                           #  85    0xae7fc  1      OPC=1343  
  nop                           #  86    0xae7fd  1      OPC=1343  
  nop                           #  87    0xae7fe  1      OPC=1343  
  nop                           #  88    0xae7ff  1      OPC=1343  
  nop                           #  89    0xae800  1      OPC=1343  
  nop                           #  90    0xae801  1      OPC=1343  
  nop                           #  91    0xae802  1      OPC=1343  
  nop                           #  92    0xae803  1      OPC=1343  
  nop                           #  93    0xae804  1      OPC=1343  
  nop                           #  94    0xae805  1      OPC=1343  
  nop                           #  95    0xae806  1      OPC=1343  
  nop                           #  96    0xae807  1      OPC=1343  
  nop                           #  97    0xae808  1      OPC=1343  
  nop                           #  98    0xae809  1      OPC=1343  
  nop                           #  99    0xae80a  1      OPC=1343  
  nop                           #  100   0xae80b  1      OPC=1343  
  nop                           #  101   0xae80c  1      OPC=1343  
                                                                   
.size _ZNSs4rendEv, .-_ZNSs4rendEv

