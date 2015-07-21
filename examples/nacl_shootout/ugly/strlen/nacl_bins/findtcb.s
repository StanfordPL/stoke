  .text
  .globl findtcb
  .type findtcb, @function

#! file-offset 0x65180
#! rip-offset  0x25180
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
.findtcb:                             #        0x25180  0      OPC=0     
  subl $0x8, %esp                     #  1     0x25180  3      OPC=2384  
  addq %r15, %rsp                     #  2     0x25183  3      OPC=72    
  testl %edi, %edi                    #  3     0x25186  2      OPC=2436  
  jg .L_251e0                         #  4     0x25188  6      OPC=901   
  nop                                 #  5     0x2518e  1      OPC=1343  
  nop                                 #  6     0x2518f  1      OPC=1343  
  nop                                 #  7     0x25190  1      OPC=1343  
  nop                                 #  8     0x25191  1      OPC=1343  
  nop                                 #  9     0x25192  1      OPC=1343  
  nop                                 #  10    0x25193  1      OPC=1343  
  nop                                 #  11    0x25194  1      OPC=1343  
  nop                                 #  12    0x25195  1      OPC=1343  
  nop                                 #  13    0x25196  1      OPC=1343  
  nop                                 #  14    0x25197  1      OPC=1343  
  nop                                 #  15    0x25198  1      OPC=1343  
  nop                                 #  16    0x25199  1      OPC=1343  
  nop                                 #  17    0x2519a  1      OPC=1343  
  nop                                 #  18    0x2519b  1      OPC=1343  
  nop                                 #  19    0x2519c  1      OPC=1343  
  nop                                 #  20    0x2519d  1      OPC=1343  
  nop                                 #  21    0x2519e  1      OPC=1343  
  nop                                 #  22    0x2519f  1      OPC=1343  
  nop                                 #  23    0x251a0  1      OPC=1343  
  nop                                 #  24    0x251a1  1      OPC=1343  
  nop                                 #  25    0x251a2  1      OPC=1343  
  nop                                 #  26    0x251a3  1      OPC=1343  
  nop                                 #  27    0x251a4  1      OPC=1343  
  nop                                 #  28    0x251a5  1      OPC=1343  
.L_251a0:                             #        0x251a6  0      OPC=0     
  movl %edi, %esi                     #  29    0x251a6  2      OPC=1157  
  movl $0x100209e1, %edi              #  30    0x251a8  5      OPC=1154  
  xorl %eax, %eax                     #  31    0x251ad  2      OPC=3758  
  nop                                 #  32    0x251af  1      OPC=1343  
  nop                                 #  33    0x251b0  1      OPC=1343  
  nop                                 #  34    0x251b1  1      OPC=1343  
  nop                                 #  35    0x251b2  1      OPC=1343  
  nop                                 #  36    0x251b3  1      OPC=1343  
  nop                                 #  37    0x251b4  1      OPC=1343  
  nop                                 #  38    0x251b5  1      OPC=1343  
  nop                                 #  39    0x251b6  1      OPC=1343  
  nop                                 #  40    0x251b7  1      OPC=1343  
  nop                                 #  41    0x251b8  1      OPC=1343  
  nop                                 #  42    0x251b9  1      OPC=1343  
  nop                                 #  43    0x251ba  1      OPC=1343  
  nop                                 #  44    0x251bb  1      OPC=1343  
  nop                                 #  45    0x251bc  1      OPC=1343  
  nop                                 #  46    0x251bd  1      OPC=1343  
  nop                                 #  47    0x251be  1      OPC=1343  
  nop                                 #  48    0x251bf  1      OPC=1343  
  nop                                 #  49    0x251c0  1      OPC=1343  
  callq .printf                       #  50    0x251c1  5      OPC=260   
  xorl %eax, %eax                     #  51    0x251c6  2      OPC=3758  
  addl $0x8, %esp                     #  52    0x251c8  3      OPC=65    
  addq %r15, %rsp                     #  53    0x251cb  3      OPC=72    
  popq %r11                           #  54    0x251ce  2      OPC=1694  
  andl $0xffffffe0, %r11d             #  55    0x251d0  7      OPC=131   
  nop                                 #  56    0x251d7  1      OPC=1343  
  nop                                 #  57    0x251d8  1      OPC=1343  
  nop                                 #  58    0x251d9  1      OPC=1343  
  nop                                 #  59    0x251da  1      OPC=1343  
  addq %r15, %r11                     #  60    0x251db  3      OPC=72    
  jmpq %r11                           #  61    0x251de  3      OPC=928   
  nop                                 #  62    0x251e1  1      OPC=1343  
  nop                                 #  63    0x251e2  1      OPC=1343  
  nop                                 #  64    0x251e3  1      OPC=1343  
  nop                                 #  65    0x251e4  1      OPC=1343  
  nop                                 #  66    0x251e5  1      OPC=1343  
  nop                                 #  67    0x251e6  1      OPC=1343  
  nop                                 #  68    0x251e7  1      OPC=1343  
  nop                                 #  69    0x251e8  1      OPC=1343  
  nop                                 #  70    0x251e9  1      OPC=1343  
  nop                                 #  71    0x251ea  1      OPC=1343  
  nop                                 #  72    0x251eb  1      OPC=1343  
  nop                                 #  73    0x251ec  1      OPC=1343  
.L_251e0:                             #        0x251ed  0      OPC=0     
  cmpl %edi, 0x1004b43a(%rip)         #  74    0x251ed  6      OPC=457   
  jl .L_251a0                         #  75    0x251f3  6      OPC=913   
  nop                                 #  76    0x251f9  1      OPC=1343  
  nop                                 #  77    0x251fa  1      OPC=1343  
  leal (,%rdi,4), %eax                #  78    0x251fb  7      OPC=1066  
  cltq                                #  79    0x25202  2      OPC=263   
  movl %eax, %eax                     #  80    0x25204  2      OPC=1157  
  movl 0x10070620(%r15,%rax,1), %eax  #  81    0x25206  8      OPC=1156  
  testq %rax, %rax                    #  82    0x2520e  3      OPC=2438  
  xchgw %ax, %ax                      #  83    0x25211  2      OPC=3700  
  je .L_251a0                         #  84    0x25213  6      OPC=893   
  nop                                 #  85    0x25219  1      OPC=1343  
  nop                                 #  86    0x2521a  1      OPC=1343  
  addl $0x8, %esp                     #  87    0x2521b  3      OPC=65    
  addq %r15, %rsp                     #  88    0x2521e  3      OPC=72    
  popq %r11                           #  89    0x25221  2      OPC=1694  
  andl $0xffffffe0, %r11d             #  90    0x25223  7      OPC=131   
  nop                                 #  91    0x2522a  1      OPC=1343  
  nop                                 #  92    0x2522b  1      OPC=1343  
  nop                                 #  93    0x2522c  1      OPC=1343  
  nop                                 #  94    0x2522d  1      OPC=1343  
  addq %r15, %r11                     #  95    0x2522e  3      OPC=72    
  jmpq %r11                           #  96    0x25231  3      OPC=928   
  nop                                 #  97    0x25234  1      OPC=1343  
  nop                                 #  98    0x25235  1      OPC=1343  
  nop                                 #  99    0x25236  1      OPC=1343  
  nop                                 #  100   0x25237  1      OPC=1343  
  nop                                 #  101   0x25238  1      OPC=1343  
  nop                                 #  102   0x25239  1      OPC=1343  
  nop                                 #  103   0x2523a  1      OPC=1343  
  nop                                 #  104   0x2523b  1      OPC=1343  
  nop                                 #  105   0x2523c  1      OPC=1343  
  nop                                 #  106   0x2523d  1      OPC=1343  
  nop                                 #  107   0x2523e  1      OPC=1343  
  nop                                 #  108   0x2523f  1      OPC=1343  
                                                                         
.size findtcb, .-findtcb

