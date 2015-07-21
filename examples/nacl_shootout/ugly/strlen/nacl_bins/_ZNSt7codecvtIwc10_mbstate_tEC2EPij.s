  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC2EPij
  .type _ZNSt7codecvtIwc10_mbstate_tEC2EPij, @function

#! file-offset 0x1235a0
#! rip-offset  0xe35a0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNSt7codecvtIwc10_mbstate_tEC2EPij:               #        0xe35a0  0      OPC=0     
  pushq %rbx                                        #  1     0xe35a0  1      OPC=1861  
  xorl %eax, %eax                                   #  2     0xe35a1  2      OPC=3758  
  movl %edi, %ebx                                   #  3     0xe35a3  2      OPC=1157  
  subl $0x10, %esp                                  #  4     0xe35a5  3      OPC=2384  
  addq %r15, %rsp                                   #  5     0xe35a8  3      OPC=72    
  testl %edx, %edx                                  #  6     0xe35ab  2      OPC=2436  
  movl %ebx, %ebx                                   #  7     0xe35ad  2      OPC=1157  
  movl $0x1003d4a8, (%r15,%rbx,1)                   #  8     0xe35af  8      OPC=1135  
  setne %al                                         #  9     0xe35b7  3      OPC=2208  
  leal 0xc(%rsp), %edi                              #  10    0xe35ba  4      OPC=1066  
  xchgw %ax, %ax                                    #  11    0xe35be  2      OPC=3700  
  movl %esi, 0xc(%rsp)                              #  12    0xe35c0  4      OPC=1136  
  movl %ebx, %ebx                                   #  13    0xe35c4  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe35c6  5      OPC=1136  
  nop                                               #  15    0xe35cb  1      OPC=1343  
  nop                                               #  16    0xe35cc  1      OPC=1343  
  nop                                               #  17    0xe35cd  1      OPC=1343  
  nop                                               #  18    0xe35ce  1      OPC=1343  
  nop                                               #  19    0xe35cf  1      OPC=1343  
  nop                                               #  20    0xe35d0  1      OPC=1343  
  nop                                               #  21    0xe35d1  1      OPC=1343  
  nop                                               #  22    0xe35d2  1      OPC=1343  
  nop                                               #  23    0xe35d3  1      OPC=1343  
  nop                                               #  24    0xe35d4  1      OPC=1343  
  nop                                               #  25    0xe35d5  1      OPC=1343  
  nop                                               #  26    0xe35d6  1      OPC=1343  
  nop                                               #  27    0xe35d7  1      OPC=1343  
  nop                                               #  28    0xe35d8  1      OPC=1343  
  nop                                               #  29    0xe35d9  1      OPC=1343  
  nop                                               #  30    0xe35da  1      OPC=1343  
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe35db  5      OPC=260   
  movl %ebx, %ebx                                   #  32    0xe35e0  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe35e2  5      OPC=1136  
  addl $0x10, %esp                                  #  34    0xe35e7  3      OPC=65    
  addq %r15, %rsp                                   #  35    0xe35ea  3      OPC=72    
  popq %rbx                                         #  36    0xe35ed  1      OPC=1694  
  popq %r11                                         #  37    0xe35ee  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  38    0xe35f0  7      OPC=131   
  nop                                               #  39    0xe35f7  1      OPC=1343  
  nop                                               #  40    0xe35f8  1      OPC=1343  
  nop                                               #  41    0xe35f9  1      OPC=1343  
  nop                                               #  42    0xe35fa  1      OPC=1343  
  addq %r15, %r11                                   #  43    0xe35fb  3      OPC=72    
  jmpq %r11                                         #  44    0xe35fe  3      OPC=928   
  nop                                               #  45    0xe3601  1      OPC=1343  
  nop                                               #  46    0xe3602  1      OPC=1343  
  nop                                               #  47    0xe3603  1      OPC=1343  
  nop                                               #  48    0xe3604  1      OPC=1343  
  nop                                               #  49    0xe3605  1      OPC=1343  
  nop                                               #  50    0xe3606  1      OPC=1343  
  movl %ebx, %edi                                   #  51    0xe3607  2      OPC=1157  
  movl %ebx, %ebx                                   #  52    0xe3609  2      OPC=1157  
  movl $0x1003c068, (%r15,%rbx,1)                   #  53    0xe360b  8      OPC=1135  
  movl %eax, (%rsp)                                 #  54    0xe3613  3      OPC=1136  
  nop                                               #  55    0xe3616  1      OPC=1343  
  nop                                               #  56    0xe3617  1      OPC=1343  
  nop                                               #  57    0xe3618  1      OPC=1343  
  nop                                               #  58    0xe3619  1      OPC=1343  
  nop                                               #  59    0xe361a  1      OPC=1343  
  nop                                               #  60    0xe361b  1      OPC=1343  
  nop                                               #  61    0xe361c  1      OPC=1343  
  nop                                               #  62    0xe361d  1      OPC=1343  
  nop                                               #  63    0xe361e  1      OPC=1343  
  nop                                               #  64    0xe361f  1      OPC=1343  
  nop                                               #  65    0xe3620  1      OPC=1343  
  nop                                               #  66    0xe3621  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3622  5      OPC=260   
  movl (%rsp), %eax                                 #  68    0xe3627  3      OPC=1156  
  movl %eax, %edi                                   #  69    0xe362a  2      OPC=1157  
  nop                                               #  70    0xe362c  1      OPC=1343  
  nop                                               #  71    0xe362d  1      OPC=1343  
  nop                                               #  72    0xe362e  1      OPC=1343  
  nop                                               #  73    0xe362f  1      OPC=1343  
  nop                                               #  74    0xe3630  1      OPC=1343  
  nop                                               #  75    0xe3631  1      OPC=1343  
  nop                                               #  76    0xe3632  1      OPC=1343  
  nop                                               #  77    0xe3633  1      OPC=1343  
  nop                                               #  78    0xe3634  1      OPC=1343  
  nop                                               #  79    0xe3635  1      OPC=1343  
  nop                                               #  80    0xe3636  1      OPC=1343  
  nop                                               #  81    0xe3637  1      OPC=1343  
  nop                                               #  82    0xe3638  1      OPC=1343  
  nop                                               #  83    0xe3639  1      OPC=1343  
  nop                                               #  84    0xe363a  1      OPC=1343  
  nop                                               #  85    0xe363b  1      OPC=1343  
  nop                                               #  86    0xe363c  1      OPC=1343  
  nop                                               #  87    0xe363d  1      OPC=1343  
  nop                                               #  88    0xe363e  1      OPC=1343  
  nop                                               #  89    0xe363f  1      OPC=1343  
  nop                                               #  90    0xe3640  1      OPC=1343  
  nop                                               #  91    0xe3641  1      OPC=1343  
  callq ._Unwind_Resume                             #  92    0xe3642  5      OPC=260   
                                                                                       
.size _ZNSt7codecvtIwc10_mbstate_tEC2EPij, .-_ZNSt7codecvtIwc10_mbstate_tEC2EPij

