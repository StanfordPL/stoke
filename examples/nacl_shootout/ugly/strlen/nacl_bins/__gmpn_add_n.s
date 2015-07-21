  .text
  .globl __gmpn_add_n
  .type __gmpn_add_n, @function

#! file-offset 0x720c0
#! rip-offset  0x320c0
#! capacity    128 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.__gmpn_add_n:               #        0x320c0  0      OPC=0     
  movl %edi, %edi            #  1     0x320c0  2      OPC=1157  
  movl %esi, %esi            #  2     0x320c2  2      OPC=1157  
  movl %edx, %edx            #  3     0x320c4  2      OPC=1157  
  xorl %eax, %eax            #  4     0x320c6  2      OPC=3758  
  nop                        #  5     0x320c8  1      OPC=1343  
  nop                        #  6     0x320c9  1      OPC=1343  
  nop                        #  7     0x320ca  1      OPC=1343  
  nop                        #  8     0x320cb  1      OPC=1343  
  nop                        #  9     0x320cc  1      OPC=1343  
  nop                        #  10    0x320cd  1      OPC=1343  
  nop                        #  11    0x320ce  1      OPC=1343  
  nop                        #  12    0x320cf  1      OPC=1343  
  nop                        #  13    0x320d0  1      OPC=1343  
  nop                        #  14    0x320d1  1      OPC=1343  
  nop                        #  15    0x320d2  1      OPC=1343  
  nop                        #  16    0x320d3  1      OPC=1343  
  nop                        #  17    0x320d4  1      OPC=1343  
  nop                        #  18    0x320d5  1      OPC=1343  
  nop                        #  19    0x320d6  1      OPC=1343  
  nop                        #  20    0x320d7  1      OPC=1343  
  nop                        #  21    0x320d8  1      OPC=1343  
  nop                        #  22    0x320d9  1      OPC=1343  
  nop                        #  23    0x320da  1      OPC=1343  
  nop                        #  24    0x320db  1      OPC=1343  
  nop                        #  25    0x320dc  1      OPC=1343  
  nop                        #  26    0x320dd  1      OPC=1343  
  nop                        #  27    0x320de  1      OPC=1343  
  nop                        #  28    0x320df  1      OPC=1343  
.L_320e0:                    #        0x320e0  0      OPC=0     
  movl %esi, %esi            #  29    0x320e0  2      OPC=1157  
  movl (%r15,%rsi,1), %r9d   #  30    0x320e2  4      OPC=1156  
  movl %edx, %edx            #  31    0x320e6  2      OPC=1157  
  movl (%r15,%rdx,1), %r8d   #  32    0x320e8  4      OPC=1156  
  movl %eax, %r10d           #  33    0x320ec  3      OPC=1157  
  addl $0x4, %esi            #  34    0x320ef  3      OPC=65    
  addl $0x4, %edx            #  35    0x320f2  3      OPC=65    
  addl %r9d, %r8d            #  36    0x320f5  3      OPC=67    
  addl %r8d, %r10d           #  37    0x320f8  3      OPC=67    
  setb %al                   #  38    0x320fb  3      OPC=2169  
  xchgw %ax, %ax             #  39    0x320fe  2      OPC=3700  
  cmpl %r9d, %r8d            #  40    0x32100  3      OPC=472   
  movl %edi, %edi            #  41    0x32103  2      OPC=1157  
  movl %r10d, (%r15,%rdi,1)  #  42    0x32105  4      OPC=1136  
  setb %r8b                  #  43    0x32109  4      OPC=2169  
  addl $0x4, %edi            #  44    0x3210d  3      OPC=65    
  orl %r8d, %eax             #  45    0x32110  3      OPC=1380  
  andl $0x1, %eax            #  46    0x32113  3      OPC=132   
  subl $0x1, %ecx            #  47    0x32116  3      OPC=2384  
  jne .L_320e0               #  48    0x32119  6      OPC=963   
  nop                        #  49    0x3211f  1      OPC=1343  
  nop                        #  50    0x32120  1      OPC=1343  
  popq %r11                  #  51    0x32121  2      OPC=1694  
  nop                        #  52    0x32123  1      OPC=1343  
  nop                        #  53    0x32124  1      OPC=1343  
  nop                        #  54    0x32125  1      OPC=1343  
  andl $0xffffffe0, %r11d    #  55    0x32126  7      OPC=131   
  nop                        #  56    0x3212d  1      OPC=1343  
  nop                        #  57    0x3212e  1      OPC=1343  
  nop                        #  58    0x3212f  1      OPC=1343  
  nop                        #  59    0x32130  1      OPC=1343  
  addq %r15, %r11            #  60    0x32131  3      OPC=72    
  jmpq %r11                  #  61    0x32134  3      OPC=928   
  nop                        #  62    0x32137  1      OPC=1343  
  nop                        #  63    0x32138  1      OPC=1343  
  nop                        #  64    0x32139  1      OPC=1343  
  nop                        #  65    0x3213a  1      OPC=1343  
  nop                        #  66    0x3213b  1      OPC=1343  
  nop                        #  67    0x3213c  1      OPC=1343  
  nop                        #  68    0x3213d  1      OPC=1343  
  nop                        #  69    0x3213e  1      OPC=1343  
  nop                        #  70    0x3213f  1      OPC=1343  
  nop                        #  71    0x32140  1      OPC=1343  
  nop                        #  72    0x32141  1      OPC=1343  
  nop                        #  73    0x32142  1      OPC=1343  
  nop                        #  74    0x32143  1      OPC=1343  
  nop                        #  75    0x32144  1      OPC=1343  
  nop                        #  76    0x32145  1      OPC=1343  
  nop                        #  77    0x32146  1      OPC=1343  
  nop                        #  78    0x32147  1      OPC=1343  
  nop                        #  79    0x32148  1      OPC=1343  
  nop                        #  80    0x32149  1      OPC=1343  
  nop                        #  81    0x3214a  1      OPC=1343  
  nop                        #  82    0x3214b  1      OPC=1343  
  nop                        #  83    0x3214c  1      OPC=1343  
                                                                
.size __gmpn_add_n, .-__gmpn_add_n

