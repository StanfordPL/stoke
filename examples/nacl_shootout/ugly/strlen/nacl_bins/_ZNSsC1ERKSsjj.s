  .text
  .globl _ZNSsC1ERKSsjj
  .type _ZNSsC1ERKSsjj, @function

#! file-offset 0xed420
#! rip-offset  0xad420
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC1ERKSsjj:                                                          #        0xad420  0      OPC=0     
  pushq %rbx                                                              #  1     0xad420  1      OPC=1861  
  movl %esi, %esi                                                         #  2     0xad421  2      OPC=1157  
  movl %edi, %ebx                                                         #  3     0xad423  2      OPC=1157  
  subl $0x20, %esp                                                        #  4     0xad425  3      OPC=2384  
  addq %r15, %rsp                                                         #  5     0xad428  3      OPC=72    
  movl %esi, %esi                                                         #  6     0xad42b  2      OPC=1157  
  movl (%r15,%rsi,1), %edi                                                #  7     0xad42d  4      OPC=1156  
  leal -0xc(%rdi), %eax                                                   #  8     0xad431  3      OPC=1066  
  movl %eax, %eax                                                         #  9     0xad434  2      OPC=1157  
  movl (%r15,%rax,1), %esi                                                #  10    0xad436  4      OPC=1156  
  cmpl %esi, %edx                                                         #  11    0xad43a  2      OPC=472   
  nop                                                                     #  12    0xad43c  1      OPC=1343  
  nop                                                                     #  13    0xad43d  1      OPC=1343  
  nop                                                                     #  14    0xad43e  1      OPC=1343  
  nop                                                                     #  15    0xad43f  1      OPC=1343  
  ja .L_ad480                                                             #  16    0xad440  6      OPC=863   
  nop                                                                     #  17    0xad446  1      OPC=1343  
  nop                                                                     #  18    0xad447  1      OPC=1343  
  subl %edx, %esi                                                         #  19    0xad448  2      OPC=2386  
  leal 0x1f(%rsp), %eax                                                   #  20    0xad44a  4      OPC=1066  
  movb $0x0, (%rsp)                                                       #  21    0xad44e  4      OPC=1140  
  cmpl %ecx, %esi                                                         #  22    0xad452  2      OPC=472   
  cmoval %ecx, %esi                                                       #  23    0xad454  3      OPC=272   
  addl %edx, %esi                                                         #  24    0xad457  2      OPC=67    
  addl %edi, %esi                                                         #  25    0xad459  2      OPC=67    
  leal (%rdx,%rdi,1), %edi                                                #  26    0xad45b  3      OPC=1066  
  movl %eax, %edx                                                         #  27    0xad45e  2      OPC=1157  
  nop                                                                     #  28    0xad460  1      OPC=1343  
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  29    0xad461  5      OPC=260   
  movl %ebx, %ebx                                                         #  30    0xad466  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  31    0xad468  4      OPC=1136  
  addl $0x20, %esp                                                        #  32    0xad46c  3      OPC=65    
  addq %r15, %rsp                                                         #  33    0xad46f  3      OPC=72    
  popq %rbx                                                               #  34    0xad472  1      OPC=1694  
  popq %r11                                                               #  35    0xad473  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  36    0xad475  7      OPC=131   
  nop                                                                     #  37    0xad47c  1      OPC=1343  
  nop                                                                     #  38    0xad47d  1      OPC=1343  
  nop                                                                     #  39    0xad47e  1      OPC=1343  
  nop                                                                     #  40    0xad47f  1      OPC=1343  
  addq %r15, %r11                                                         #  41    0xad480  3      OPC=72    
  jmpq %r11                                                               #  42    0xad483  3      OPC=928   
  nop                                                                     #  43    0xad486  1      OPC=1343  
  nop                                                                     #  44    0xad487  1      OPC=1343  
  nop                                                                     #  45    0xad488  1      OPC=1343  
  nop                                                                     #  46    0xad489  1      OPC=1343  
  nop                                                                     #  47    0xad48a  1      OPC=1343  
  nop                                                                     #  48    0xad48b  1      OPC=1343  
  nop                                                                     #  49    0xad48c  1      OPC=1343  
.L_ad480:                                                                 #        0xad48d  0      OPC=0     
  movl $0x1003bafb, %edi                                                  #  50    0xad48d  5      OPC=1154  
  nop                                                                     #  51    0xad492  1      OPC=1343  
  nop                                                                     #  52    0xad493  1      OPC=1343  
  nop                                                                     #  53    0xad494  1      OPC=1343  
  nop                                                                     #  54    0xad495  1      OPC=1343  
  nop                                                                     #  55    0xad496  1      OPC=1343  
  nop                                                                     #  56    0xad497  1      OPC=1343  
  nop                                                                     #  57    0xad498  1      OPC=1343  
  nop                                                                     #  58    0xad499  1      OPC=1343  
  nop                                                                     #  59    0xad49a  1      OPC=1343  
  nop                                                                     #  60    0xad49b  1      OPC=1343  
  nop                                                                     #  61    0xad49c  1      OPC=1343  
  nop                                                                     #  62    0xad49d  1      OPC=1343  
  nop                                                                     #  63    0xad49e  1      OPC=1343  
  nop                                                                     #  64    0xad49f  1      OPC=1343  
  nop                                                                     #  65    0xad4a0  1      OPC=1343  
  nop                                                                     #  66    0xad4a1  1      OPC=1343  
  nop                                                                     #  67    0xad4a2  1      OPC=1343  
  nop                                                                     #  68    0xad4a3  1      OPC=1343  
  nop                                                                     #  69    0xad4a4  1      OPC=1343  
  nop                                                                     #  70    0xad4a5  1      OPC=1343  
  nop                                                                     #  71    0xad4a6  1      OPC=1343  
  nop                                                                     #  72    0xad4a7  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                                    #  73    0xad4a8  5      OPC=260   
  movl %eax, %edi                                                         #  74    0xad4ad  2      OPC=1157  
  nop                                                                     #  75    0xad4af  1      OPC=1343  
  nop                                                                     #  76    0xad4b0  1      OPC=1343  
  nop                                                                     #  77    0xad4b1  1      OPC=1343  
  nop                                                                     #  78    0xad4b2  1      OPC=1343  
  nop                                                                     #  79    0xad4b3  1      OPC=1343  
  nop                                                                     #  80    0xad4b4  1      OPC=1343  
  nop                                                                     #  81    0xad4b5  1      OPC=1343  
  nop                                                                     #  82    0xad4b6  1      OPC=1343  
  nop                                                                     #  83    0xad4b7  1      OPC=1343  
  nop                                                                     #  84    0xad4b8  1      OPC=1343  
  nop                                                                     #  85    0xad4b9  1      OPC=1343  
  nop                                                                     #  86    0xad4ba  1      OPC=1343  
  nop                                                                     #  87    0xad4bb  1      OPC=1343  
  nop                                                                     #  88    0xad4bc  1      OPC=1343  
  nop                                                                     #  89    0xad4bd  1      OPC=1343  
  nop                                                                     #  90    0xad4be  1      OPC=1343  
  nop                                                                     #  91    0xad4bf  1      OPC=1343  
  nop                                                                     #  92    0xad4c0  1      OPC=1343  
  nop                                                                     #  93    0xad4c1  1      OPC=1343  
  nop                                                                     #  94    0xad4c2  1      OPC=1343  
  nop                                                                     #  95    0xad4c3  1      OPC=1343  
  nop                                                                     #  96    0xad4c4  1      OPC=1343  
  nop                                                                     #  97    0xad4c5  1      OPC=1343  
  nop                                                                     #  98    0xad4c6  1      OPC=1343  
  nop                                                                     #  99    0xad4c7  1      OPC=1343  
  callq ._Unwind_Resume                                                   #  100   0xad4c8  5      OPC=260   
                                                                                                             
.size _ZNSsC1ERKSsjj, .-_ZNSsC1ERKSsjj

