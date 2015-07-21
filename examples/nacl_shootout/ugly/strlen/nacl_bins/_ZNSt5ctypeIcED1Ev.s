  .text
  .globl _ZNSt5ctypeIcED1Ev
  .type _ZNSt5ctypeIcED1Ev, @function

#! file-offset 0x125280
#! rip-offset  0xe5280
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode    
._ZNSt5ctypeIcED1Ev:                                  #        0xe5280  0      OPC=0     
  pushq %rbx                                          #  1     0xe5280  1      OPC=1861  
  movl %edi, %ebx                                     #  2     0xe5281  2      OPC=1157  
  leal 0x8(%rbx), %edi                                #  3     0xe5283  3      OPC=1066  
  subl $0x10, %esp                                    #  4     0xe5286  3      OPC=2384  
  addq %r15, %rsp                                     #  5     0xe5289  3      OPC=72    
  movl %ebx, %ebx                                     #  6     0xe528c  2      OPC=1157  
  movl $0x1003d608, (%r15,%rbx,1)                     #  7     0xe528e  8      OPC=1135  
  nop                                                 #  8     0xe5296  1      OPC=1343  
  nop                                                 #  9     0xe5297  1      OPC=1343  
  nop                                                 #  10    0xe5298  1      OPC=1343  
  nop                                                 #  11    0xe5299  1      OPC=1343  
  nop                                                 #  12    0xe529a  1      OPC=1343  
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe529b  5      OPC=260   
  movl %ebx, %ebx                                     #  14    0xe52a0  2      OPC=1157  
  cmpb $0x0, 0xc(%r15,%rbx,1)                         #  15    0xe52a2  6      OPC=461   
  je .L_e52c0                                         #  16    0xe52a8  6      OPC=893   
  nop                                                 #  17    0xe52ae  1      OPC=1343  
  nop                                                 #  18    0xe52af  1      OPC=1343  
  movl %ebx, %ebx                                     #  19    0xe52b0  2      OPC=1157  
  movl 0x18(%r15,%rbx,1), %edi                        #  20    0xe52b2  5      OPC=1156  
  testq %rdi, %rdi                                    #  21    0xe52b7  3      OPC=2438  
  je .L_e52c0                                         #  22    0xe52ba  6      OPC=893   
  nop                                                 #  23    0xe52c0  1      OPC=1343  
  nop                                                 #  24    0xe52c1  1      OPC=1343  
  nop                                                 #  25    0xe52c2  1      OPC=1343  
  nop                                                 #  26    0xe52c3  1      OPC=1343  
  nop                                                 #  27    0xe52c4  1      OPC=1343  
  nop                                                 #  28    0xe52c5  1      OPC=1343  
  nop                                                 #  29    0xe52c6  1      OPC=1343  
  callq ._ZdaPv                                       #  30    0xe52c7  5      OPC=260   
.L_e52c0:                                             #        0xe52cc  0      OPC=0     
  movl %ebx, %edi                                     #  31    0xe52cc  2      OPC=1157  
  addl $0x10, %esp                                    #  32    0xe52ce  3      OPC=65    
  addq %r15, %rsp                                     #  33    0xe52d1  3      OPC=72    
  popq %rbx                                           #  34    0xe52d4  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev                        #  35    0xe52d5  5      OPC=930   
  nop                                                 #  36    0xe52da  1      OPC=1343  
  nop                                                 #  37    0xe52db  1      OPC=1343  
  nop                                                 #  38    0xe52dc  1      OPC=1343  
  nop                                                 #  39    0xe52dd  1      OPC=1343  
  nop                                                 #  40    0xe52de  1      OPC=1343  
  nop                                                 #  41    0xe52df  1      OPC=1343  
  nop                                                 #  42    0xe52e0  1      OPC=1343  
  nop                                                 #  43    0xe52e1  1      OPC=1343  
  nop                                                 #  44    0xe52e2  1      OPC=1343  
  nop                                                 #  45    0xe52e3  1      OPC=1343  
  nop                                                 #  46    0xe52e4  1      OPC=1343  
  nop                                                 #  47    0xe52e5  1      OPC=1343  
  nop                                                 #  48    0xe52e6  1      OPC=1343  
  nop                                                 #  49    0xe52e7  1      OPC=1343  
  nop                                                 #  50    0xe52e8  1      OPC=1343  
  nop                                                 #  51    0xe52e9  1      OPC=1343  
  nop                                                 #  52    0xe52ea  1      OPC=1343  
  nop                                                 #  53    0xe52eb  1      OPC=1343  
  movl %ebx, %edi                                     #  54    0xe52ec  2      OPC=1157  
  movl %eax, 0x8(%rsp)                                #  55    0xe52ee  4      OPC=1136  
  nop                                                 #  56    0xe52f2  1      OPC=1343  
  nop                                                 #  57    0xe52f3  1      OPC=1343  
  nop                                                 #  58    0xe52f4  1      OPC=1343  
  nop                                                 #  59    0xe52f5  1      OPC=1343  
  nop                                                 #  60    0xe52f6  1      OPC=1343  
  nop                                                 #  61    0xe52f7  1      OPC=1343  
  nop                                                 #  62    0xe52f8  1      OPC=1343  
  nop                                                 #  63    0xe52f9  1      OPC=1343  
  nop                                                 #  64    0xe52fa  1      OPC=1343  
  nop                                                 #  65    0xe52fb  1      OPC=1343  
  nop                                                 #  66    0xe52fc  1      OPC=1343  
  nop                                                 #  67    0xe52fd  1      OPC=1343  
  nop                                                 #  68    0xe52fe  1      OPC=1343  
  nop                                                 #  69    0xe52ff  1      OPC=1343  
  nop                                                 #  70    0xe5300  1      OPC=1343  
  nop                                                 #  71    0xe5301  1      OPC=1343  
  nop                                                 #  72    0xe5302  1      OPC=1343  
  nop                                                 #  73    0xe5303  1      OPC=1343  
  nop                                                 #  74    0xe5304  1      OPC=1343  
  nop                                                 #  75    0xe5305  1      OPC=1343  
  nop                                                 #  76    0xe5306  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                       #  77    0xe5307  5      OPC=260   
  movl 0x8(%rsp), %eax                                #  78    0xe530c  4      OPC=1156  
  movl %eax, %edi                                     #  79    0xe5310  2      OPC=1157  
  nop                                                 #  80    0xe5312  1      OPC=1343  
  nop                                                 #  81    0xe5313  1      OPC=1343  
  nop                                                 #  82    0xe5314  1      OPC=1343  
  nop                                                 #  83    0xe5315  1      OPC=1343  
  nop                                                 #  84    0xe5316  1      OPC=1343  
  nop                                                 #  85    0xe5317  1      OPC=1343  
  nop                                                 #  86    0xe5318  1      OPC=1343  
  nop                                                 #  87    0xe5319  1      OPC=1343  
  nop                                                 #  88    0xe531a  1      OPC=1343  
  nop                                                 #  89    0xe531b  1      OPC=1343  
  nop                                                 #  90    0xe531c  1      OPC=1343  
  nop                                                 #  91    0xe531d  1      OPC=1343  
  nop                                                 #  92    0xe531e  1      OPC=1343  
  nop                                                 #  93    0xe531f  1      OPC=1343  
  nop                                                 #  94    0xe5320  1      OPC=1343  
  nop                                                 #  95    0xe5321  1      OPC=1343  
  nop                                                 #  96    0xe5322  1      OPC=1343  
  nop                                                 #  97    0xe5323  1      OPC=1343  
  nop                                                 #  98    0xe5324  1      OPC=1343  
  nop                                                 #  99    0xe5325  1      OPC=1343  
  nop                                                 #  100   0xe5326  1      OPC=1343  
  callq ._Unwind_Resume                               #  101   0xe5327  5      OPC=260   
                                                                                         
.size _ZNSt5ctypeIcED1Ev, .-_ZNSt5ctypeIcED1Ev

