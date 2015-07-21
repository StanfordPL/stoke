  .text
  .globl iswgraph
  .type iswgraph, @function

#! file-offset 0x15e2a0
#! rip-offset  0x11e2a0
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.iswgraph:                 #        0x11e2a0  0      OPC=0     
  pushq %rbx               #  1     0x11e2a0  1      OPC=1861  
  movl %edi, %ebx          #  2     0x11e2a1  2      OPC=1157  
  nop                      #  3     0x11e2a3  1      OPC=1343  
  nop                      #  4     0x11e2a4  1      OPC=1343  
  nop                      #  5     0x11e2a5  1      OPC=1343  
  nop                      #  6     0x11e2a6  1      OPC=1343  
  nop                      #  7     0x11e2a7  1      OPC=1343  
  nop                      #  8     0x11e2a8  1      OPC=1343  
  nop                      #  9     0x11e2a9  1      OPC=1343  
  nop                      #  10    0x11e2aa  1      OPC=1343  
  nop                      #  11    0x11e2ab  1      OPC=1343  
  nop                      #  12    0x11e2ac  1      OPC=1343  
  nop                      #  13    0x11e2ad  1      OPC=1343  
  nop                      #  14    0x11e2ae  1      OPC=1343  
  nop                      #  15    0x11e2af  1      OPC=1343  
  nop                      #  16    0x11e2b0  1      OPC=1343  
  nop                      #  17    0x11e2b1  1      OPC=1343  
  nop                      #  18    0x11e2b2  1      OPC=1343  
  nop                      #  19    0x11e2b3  1      OPC=1343  
  nop                      #  20    0x11e2b4  1      OPC=1343  
  nop                      #  21    0x11e2b5  1      OPC=1343  
  nop                      #  22    0x11e2b6  1      OPC=1343  
  nop                      #  23    0x11e2b7  1      OPC=1343  
  nop                      #  24    0x11e2b8  1      OPC=1343  
  nop                      #  25    0x11e2b9  1      OPC=1343  
  nop                      #  26    0x11e2ba  1      OPC=1343  
  callq .iswprint          #  27    0x11e2bb  5      OPC=260   
  movl %eax, %edx          #  28    0x11e2c0  2      OPC=1157  
  xorl %eax, %eax          #  29    0x11e2c2  2      OPC=3758  
  testl %edx, %edx         #  30    0x11e2c4  2      OPC=2436  
  jne .L_11e2e0            #  31    0x11e2c6  6      OPC=963   
  nop                      #  32    0x11e2cc  1      OPC=1343  
  nop                      #  33    0x11e2cd  1      OPC=1343  
  popq %rbx                #  34    0x11e2ce  1      OPC=1694  
  popq %r11                #  35    0x11e2cf  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  36    0x11e2d1  7      OPC=131   
  nop                      #  37    0x11e2d8  1      OPC=1343  
  nop                      #  38    0x11e2d9  1      OPC=1343  
  nop                      #  39    0x11e2da  1      OPC=1343  
  nop                      #  40    0x11e2db  1      OPC=1343  
  addq %r15, %r11          #  41    0x11e2dc  3      OPC=72    
  jmpq %r11                #  42    0x11e2df  3      OPC=928   
  nop                      #  43    0x11e2e2  1      OPC=1343  
  nop                      #  44    0x11e2e3  1      OPC=1343  
  nop                      #  45    0x11e2e4  1      OPC=1343  
  nop                      #  46    0x11e2e5  1      OPC=1343  
  nop                      #  47    0x11e2e6  1      OPC=1343  
  nop                      #  48    0x11e2e7  1      OPC=1343  
  nop                      #  49    0x11e2e8  1      OPC=1343  
  nop                      #  50    0x11e2e9  1      OPC=1343  
  nop                      #  51    0x11e2ea  1      OPC=1343  
  nop                      #  52    0x11e2eb  1      OPC=1343  
  nop                      #  53    0x11e2ec  1      OPC=1343  
.L_11e2e0:                 #        0x11e2ed  0      OPC=0     
  movl %ebx, %edi          #  54    0x11e2ed  2      OPC=1157  
  nop                      #  55    0x11e2ef  1      OPC=1343  
  nop                      #  56    0x11e2f0  1      OPC=1343  
  nop                      #  57    0x11e2f1  1      OPC=1343  
  nop                      #  58    0x11e2f2  1      OPC=1343  
  nop                      #  59    0x11e2f3  1      OPC=1343  
  nop                      #  60    0x11e2f4  1      OPC=1343  
  nop                      #  61    0x11e2f5  1      OPC=1343  
  nop                      #  62    0x11e2f6  1      OPC=1343  
  nop                      #  63    0x11e2f7  1      OPC=1343  
  nop                      #  64    0x11e2f8  1      OPC=1343  
  nop                      #  65    0x11e2f9  1      OPC=1343  
  nop                      #  66    0x11e2fa  1      OPC=1343  
  nop                      #  67    0x11e2fb  1      OPC=1343  
  nop                      #  68    0x11e2fc  1      OPC=1343  
  nop                      #  69    0x11e2fd  1      OPC=1343  
  nop                      #  70    0x11e2fe  1      OPC=1343  
  nop                      #  71    0x11e2ff  1      OPC=1343  
  nop                      #  72    0x11e300  1      OPC=1343  
  nop                      #  73    0x11e301  1      OPC=1343  
  nop                      #  74    0x11e302  1      OPC=1343  
  nop                      #  75    0x11e303  1      OPC=1343  
  nop                      #  76    0x11e304  1      OPC=1343  
  nop                      #  77    0x11e305  1      OPC=1343  
  nop                      #  78    0x11e306  1      OPC=1343  
  nop                      #  79    0x11e307  1      OPC=1343  
  callq .iswspace          #  80    0x11e308  5      OPC=260   
  popq %rbx                #  81    0x11e30d  1      OPC=1694  
  popq %r11                #  82    0x11e30e  2      OPC=1694  
  testl %eax, %eax         #  83    0x11e310  2      OPC=2436  
  sete %al                 #  84    0x11e312  3      OPC=2178  
  movzbl %al, %eax         #  85    0x11e315  3      OPC=1304  
  andl $0xffffffe0, %r11d  #  86    0x11e318  7      OPC=131   
  nop                      #  87    0x11e31f  1      OPC=1343  
  nop                      #  88    0x11e320  1      OPC=1343  
  nop                      #  89    0x11e321  1      OPC=1343  
  nop                      #  90    0x11e322  1      OPC=1343  
  addq %r15, %r11          #  91    0x11e323  3      OPC=72    
  jmpq %r11                #  92    0x11e326  3      OPC=928   
  nop                      #  93    0x11e329  1      OPC=1343  
  nop                      #  94    0x11e32a  1      OPC=1343  
  nop                      #  95    0x11e32b  1      OPC=1343  
  nop                      #  96    0x11e32c  1      OPC=1343  
  nop                      #  97    0x11e32d  1      OPC=1343  
  nop                      #  98    0x11e32e  1      OPC=1343  
  nop                      #  99    0x11e32f  1      OPC=1343  
  nop                      #  100   0x11e330  1      OPC=1343  
  nop                      #  101   0x11e331  1      OPC=1343  
  nop                      #  102   0x11e332  1      OPC=1343  
  nop                      #  103   0x11e333  1      OPC=1343  
                                                               
.size iswgraph, .-iswgraph

