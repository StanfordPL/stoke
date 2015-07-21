  .text
  .globl _ZNSs5eraseEjj
  .type _ZNSs5eraseEjj, @function

#! file-offset 0xee400
#! rip-offset  0xae400
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs5eraseEjj:                        #        0xae400  0      OPC=0     
  pushq %rbx                            #  1     0xae400  1      OPC=1861  
  movl %edi, %ebx                       #  2     0xae401  2      OPC=1157  
  movl %edx, %ecx                       #  3     0xae403  2      OPC=1157  
  movl %ebx, %ebx                       #  4     0xae405  2      OPC=1157  
  movl (%r15,%rbx,1), %eax              #  5     0xae407  4      OPC=1156  
  subl $0xc, %eax                       #  6     0xae40b  3      OPC=2384  
  movl %eax, %eax                       #  7     0xae40e  2      OPC=1157  
  movl (%r15,%rax,1), %eax              #  8     0xae410  4      OPC=1156  
  cmpl %eax, %esi                       #  9     0xae414  2      OPC=472   
  ja .L_ae460                           #  10    0xae416  6      OPC=863   
  nop                                   #  11    0xae41c  1      OPC=1343  
  nop                                   #  12    0xae41d  1      OPC=1343  
  movl %eax, %edx                       #  13    0xae41e  2      OPC=1157  
  movl %ebx, %edi                       #  14    0xae420  2      OPC=1157  
  subl %esi, %edx                       #  15    0xae422  2      OPC=2386  
  cmpl %ecx, %edx                       #  16    0xae424  2      OPC=472   
  cmoval %ecx, %edx                     #  17    0xae426  3      OPC=272   
  xorl %ecx, %ecx                       #  18    0xae429  2      OPC=3758  
  nop                                   #  19    0xae42b  1      OPC=1343  
  nop                                   #  20    0xae42c  1      OPC=1343  
  nop                                   #  21    0xae42d  1      OPC=1343  
  nop                                   #  22    0xae42e  1      OPC=1343  
  nop                                   #  23    0xae42f  1      OPC=1343  
  nop                                   #  24    0xae430  1      OPC=1343  
  nop                                   #  25    0xae431  1      OPC=1343  
  nop                                   #  26    0xae432  1      OPC=1343  
  nop                                   #  27    0xae433  1      OPC=1343  
  nop                                   #  28    0xae434  1      OPC=1343  
  nop                                   #  29    0xae435  1      OPC=1343  
  nop                                   #  30    0xae436  1      OPC=1343  
  nop                                   #  31    0xae437  1      OPC=1343  
  nop                                   #  32    0xae438  1      OPC=1343  
  nop                                   #  33    0xae439  1      OPC=1343  
  nop                                   #  34    0xae43a  1      OPC=1343  
  nop                                   #  35    0xae43b  1      OPC=1343  
  nop                                   #  36    0xae43c  1      OPC=1343  
  nop                                   #  37    0xae43d  1      OPC=1343  
  nop                                   #  38    0xae43e  1      OPC=1343  
  nop                                   #  39    0xae43f  1      OPC=1343  
  nop                                   #  40    0xae440  1      OPC=1343  
  callq ._ZNSs9_M_mutateEjjj            #  41    0xae441  5      OPC=260   
  movl %ebx, %eax                       #  42    0xae446  2      OPC=1157  
  popq %rbx                             #  43    0xae448  1      OPC=1694  
  popq %r11                             #  44    0xae449  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  45    0xae44b  7      OPC=131   
  nop                                   #  46    0xae452  1      OPC=1343  
  nop                                   #  47    0xae453  1      OPC=1343  
  nop                                   #  48    0xae454  1      OPC=1343  
  nop                                   #  49    0xae455  1      OPC=1343  
  addq %r15, %r11                       #  50    0xae456  3      OPC=72    
  jmpq %r11                             #  51    0xae459  3      OPC=928   
  xchgw %ax, %ax                        #  52    0xae45c  2      OPC=3700  
  nop                                   #  53    0xae45e  1      OPC=1343  
  nop                                   #  54    0xae45f  1      OPC=1343  
  nop                                   #  55    0xae460  1      OPC=1343  
  nop                                   #  56    0xae461  1      OPC=1343  
  nop                                   #  57    0xae462  1      OPC=1343  
  nop                                   #  58    0xae463  1      OPC=1343  
  nop                                   #  59    0xae464  1      OPC=1343  
  nop                                   #  60    0xae465  1      OPC=1343  
  nop                                   #  61    0xae466  1      OPC=1343  
  nop                                   #  62    0xae467  1      OPC=1343  
  nop                                   #  63    0xae468  1      OPC=1343  
  nop                                   #  64    0xae469  1      OPC=1343  
  nop                                   #  65    0xae46a  1      OPC=1343  
  nop                                   #  66    0xae46b  1      OPC=1343  
  nop                                   #  67    0xae46c  1      OPC=1343  
.L_ae460:                               #        0xae46d  0      OPC=0     
  movl $0x1003a8e6, %edi                #  68    0xae46d  5      OPC=1154  
  nop                                   #  69    0xae472  1      OPC=1343  
  nop                                   #  70    0xae473  1      OPC=1343  
  nop                                   #  71    0xae474  1      OPC=1343  
  nop                                   #  72    0xae475  1      OPC=1343  
  nop                                   #  73    0xae476  1      OPC=1343  
  nop                                   #  74    0xae477  1      OPC=1343  
  nop                                   #  75    0xae478  1      OPC=1343  
  nop                                   #  76    0xae479  1      OPC=1343  
  nop                                   #  77    0xae47a  1      OPC=1343  
  nop                                   #  78    0xae47b  1      OPC=1343  
  nop                                   #  79    0xae47c  1      OPC=1343  
  nop                                   #  80    0xae47d  1      OPC=1343  
  nop                                   #  81    0xae47e  1      OPC=1343  
  nop                                   #  82    0xae47f  1      OPC=1343  
  nop                                   #  83    0xae480  1      OPC=1343  
  nop                                   #  84    0xae481  1      OPC=1343  
  nop                                   #  85    0xae482  1      OPC=1343  
  nop                                   #  86    0xae483  1      OPC=1343  
  nop                                   #  87    0xae484  1      OPC=1343  
  nop                                   #  88    0xae485  1      OPC=1343  
  nop                                   #  89    0xae486  1      OPC=1343  
  nop                                   #  90    0xae487  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  91    0xae488  5      OPC=260   
                                                                           
.size _ZNSs5eraseEjj, .-_ZNSs5eraseEjj

