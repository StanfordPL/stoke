  .text
  .globl _ZNSt7collateIwEC1Ej
  .type _ZNSt7collateIwEC1Ej, @function

#! file-offset 0xf49c0
#! rip-offset  0xb49c0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode    
._ZNSt7collateIwEC1Ej:                          #        0xb49c0  0      OPC=0     
  pushq %rbx                                    #  1     0xb49c0  1      OPC=1861  
  xorl %eax, %eax                               #  2     0xb49c1  2      OPC=3758  
  movl %edi, %ebx                               #  3     0xb49c3  2      OPC=1157  
  subl $0x10, %esp                              #  4     0xb49c5  3      OPC=2384  
  addq %r15, %rsp                               #  5     0xb49c8  3      OPC=72    
  testl %esi, %esi                              #  6     0xb49cb  2      OPC=2436  
  movl %ebx, %ebx                               #  7     0xb49cd  2      OPC=1157  
  movl $0x1003c2c8, (%r15,%rbx,1)               #  8     0xb49cf  8      OPC=1135  
  setne %al                                     #  9     0xb49d7  3      OPC=2208  
  nop                                           #  10    0xb49da  1      OPC=1343  
  nop                                           #  11    0xb49db  1      OPC=1343  
  nop                                           #  12    0xb49dc  1      OPC=1343  
  nop                                           #  13    0xb49dd  1      OPC=1343  
  nop                                           #  14    0xb49de  1      OPC=1343  
  nop                                           #  15    0xb49df  1      OPC=1343  
  movl %ebx, %ebx                               #  16    0xb49e0  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb49e2  5      OPC=1136  
  nop                                           #  18    0xb49e7  1      OPC=1343  
  nop                                           #  19    0xb49e8  1      OPC=1343  
  nop                                           #  20    0xb49e9  1      OPC=1343  
  nop                                           #  21    0xb49ea  1      OPC=1343  
  nop                                           #  22    0xb49eb  1      OPC=1343  
  nop                                           #  23    0xb49ec  1      OPC=1343  
  nop                                           #  24    0xb49ed  1      OPC=1343  
  nop                                           #  25    0xb49ee  1      OPC=1343  
  nop                                           #  26    0xb49ef  1      OPC=1343  
  nop                                           #  27    0xb49f0  1      OPC=1343  
  nop                                           #  28    0xb49f1  1      OPC=1343  
  nop                                           #  29    0xb49f2  1      OPC=1343  
  nop                                           #  30    0xb49f3  1      OPC=1343  
  nop                                           #  31    0xb49f4  1      OPC=1343  
  nop                                           #  32    0xb49f5  1      OPC=1343  
  nop                                           #  33    0xb49f6  1      OPC=1343  
  nop                                           #  34    0xb49f7  1      OPC=1343  
  nop                                           #  35    0xb49f8  1      OPC=1343  
  nop                                           #  36    0xb49f9  1      OPC=1343  
  nop                                           #  37    0xb49fa  1      OPC=1343  
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb49fb  5      OPC=260   
  movl %ebx, %ebx                               #  39    0xb4a00  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb4a02  5      OPC=1136  
  addl $0x10, %esp                              #  41    0xb4a07  3      OPC=65    
  addq %r15, %rsp                               #  42    0xb4a0a  3      OPC=72    
  popq %rbx                                     #  43    0xb4a0d  1      OPC=1694  
  popq %r11                                     #  44    0xb4a0e  2      OPC=1694  
  andl $0xffffffe0, %r11d                       #  45    0xb4a10  7      OPC=131   
  nop                                           #  46    0xb4a17  1      OPC=1343  
  nop                                           #  47    0xb4a18  1      OPC=1343  
  nop                                           #  48    0xb4a19  1      OPC=1343  
  nop                                           #  49    0xb4a1a  1      OPC=1343  
  addq %r15, %r11                               #  50    0xb4a1b  3      OPC=72    
  jmpq %r11                                     #  51    0xb4a1e  3      OPC=928   
  nop                                           #  52    0xb4a21  1      OPC=1343  
  nop                                           #  53    0xb4a22  1      OPC=1343  
  nop                                           #  54    0xb4a23  1      OPC=1343  
  nop                                           #  55    0xb4a24  1      OPC=1343  
  nop                                           #  56    0xb4a25  1      OPC=1343  
  nop                                           #  57    0xb4a26  1      OPC=1343  
  movl %ebx, %edi                               #  58    0xb4a27  2      OPC=1157  
  movl %eax, 0x8(%rsp)                          #  59    0xb4a29  4      OPC=1136  
  nop                                           #  60    0xb4a2d  1      OPC=1343  
  nop                                           #  61    0xb4a2e  1      OPC=1343  
  nop                                           #  62    0xb4a2f  1      OPC=1343  
  nop                                           #  63    0xb4a30  1      OPC=1343  
  nop                                           #  64    0xb4a31  1      OPC=1343  
  nop                                           #  65    0xb4a32  1      OPC=1343  
  nop                                           #  66    0xb4a33  1      OPC=1343  
  nop                                           #  67    0xb4a34  1      OPC=1343  
  nop                                           #  68    0xb4a35  1      OPC=1343  
  nop                                           #  69    0xb4a36  1      OPC=1343  
  nop                                           #  70    0xb4a37  1      OPC=1343  
  nop                                           #  71    0xb4a38  1      OPC=1343  
  nop                                           #  72    0xb4a39  1      OPC=1343  
  nop                                           #  73    0xb4a3a  1      OPC=1343  
  nop                                           #  74    0xb4a3b  1      OPC=1343  
  nop                                           #  75    0xb4a3c  1      OPC=1343  
  nop                                           #  76    0xb4a3d  1      OPC=1343  
  nop                                           #  77    0xb4a3e  1      OPC=1343  
  nop                                           #  78    0xb4a3f  1      OPC=1343  
  nop                                           #  79    0xb4a40  1      OPC=1343  
  nop                                           #  80    0xb4a41  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb4a42  5      OPC=260   
  movl 0x8(%rsp), %eax                          #  82    0xb4a47  4      OPC=1156  
  movl %eax, %edi                               #  83    0xb4a4b  2      OPC=1157  
  nop                                           #  84    0xb4a4d  1      OPC=1343  
  nop                                           #  85    0xb4a4e  1      OPC=1343  
  nop                                           #  86    0xb4a4f  1      OPC=1343  
  nop                                           #  87    0xb4a50  1      OPC=1343  
  nop                                           #  88    0xb4a51  1      OPC=1343  
  nop                                           #  89    0xb4a52  1      OPC=1343  
  nop                                           #  90    0xb4a53  1      OPC=1343  
  nop                                           #  91    0xb4a54  1      OPC=1343  
  nop                                           #  92    0xb4a55  1      OPC=1343  
  nop                                           #  93    0xb4a56  1      OPC=1343  
  nop                                           #  94    0xb4a57  1      OPC=1343  
  nop                                           #  95    0xb4a58  1      OPC=1343  
  nop                                           #  96    0xb4a59  1      OPC=1343  
  nop                                           #  97    0xb4a5a  1      OPC=1343  
  nop                                           #  98    0xb4a5b  1      OPC=1343  
  nop                                           #  99    0xb4a5c  1      OPC=1343  
  nop                                           #  100   0xb4a5d  1      OPC=1343  
  nop                                           #  101   0xb4a5e  1      OPC=1343  
  nop                                           #  102   0xb4a5f  1      OPC=1343  
  nop                                           #  103   0xb4a60  1      OPC=1343  
  nop                                           #  104   0xb4a61  1      OPC=1343  
  callq ._Unwind_Resume                         #  105   0xb4a62  5      OPC=260   
                                                                                   
.size _ZNSt7collateIwEC1Ej, .-_ZNSt7collateIwEC1Ej

