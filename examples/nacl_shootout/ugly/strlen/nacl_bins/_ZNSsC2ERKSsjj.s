  .text
  .globl _ZNSsC2ERKSsjj
  .type _ZNSsC2ERKSsjj, @function

#! file-offset 0xed520
#! rip-offset  0xad520
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC2ERKSsjj:                                                          #        0xad520  0      OPC=0     
  pushq %rbx                                                              #  1     0xad520  1      OPC=1861  
  movl %esi, %esi                                                         #  2     0xad521  2      OPC=1157  
  movl %edi, %ebx                                                         #  3     0xad523  2      OPC=1157  
  subl $0x20, %esp                                                        #  4     0xad525  3      OPC=2384  
  addq %r15, %rsp                                                         #  5     0xad528  3      OPC=72    
  movl %esi, %esi                                                         #  6     0xad52b  2      OPC=1157  
  movl (%r15,%rsi,1), %edi                                                #  7     0xad52d  4      OPC=1156  
  leal -0xc(%rdi), %eax                                                   #  8     0xad531  3      OPC=1066  
  movl %eax, %eax                                                         #  9     0xad534  2      OPC=1157  
  movl (%r15,%rax,1), %esi                                                #  10    0xad536  4      OPC=1156  
  cmpl %esi, %edx                                                         #  11    0xad53a  2      OPC=472   
  nop                                                                     #  12    0xad53c  1      OPC=1343  
  nop                                                                     #  13    0xad53d  1      OPC=1343  
  nop                                                                     #  14    0xad53e  1      OPC=1343  
  nop                                                                     #  15    0xad53f  1      OPC=1343  
  ja .L_ad580                                                             #  16    0xad540  6      OPC=863   
  nop                                                                     #  17    0xad546  1      OPC=1343  
  nop                                                                     #  18    0xad547  1      OPC=1343  
  subl %edx, %esi                                                         #  19    0xad548  2      OPC=2386  
  leal 0x1f(%rsp), %eax                                                   #  20    0xad54a  4      OPC=1066  
  movb $0x0, (%rsp)                                                       #  21    0xad54e  4      OPC=1140  
  cmpl %ecx, %esi                                                         #  22    0xad552  2      OPC=472   
  cmoval %ecx, %esi                                                       #  23    0xad554  3      OPC=272   
  addl %edx, %esi                                                         #  24    0xad557  2      OPC=67    
  addl %edi, %esi                                                         #  25    0xad559  2      OPC=67    
  leal (%rdx,%rdi,1), %edi                                                #  26    0xad55b  3      OPC=1066  
  movl %eax, %edx                                                         #  27    0xad55e  2      OPC=1157  
  nop                                                                     #  28    0xad560  1      OPC=1343  
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  29    0xad561  5      OPC=260   
  movl %ebx, %ebx                                                         #  30    0xad566  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  31    0xad568  4      OPC=1136  
  addl $0x20, %esp                                                        #  32    0xad56c  3      OPC=65    
  addq %r15, %rsp                                                         #  33    0xad56f  3      OPC=72    
  popq %rbx                                                               #  34    0xad572  1      OPC=1694  
  popq %r11                                                               #  35    0xad573  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  36    0xad575  7      OPC=131   
  nop                                                                     #  37    0xad57c  1      OPC=1343  
  nop                                                                     #  38    0xad57d  1      OPC=1343  
  nop                                                                     #  39    0xad57e  1      OPC=1343  
  nop                                                                     #  40    0xad57f  1      OPC=1343  
  addq %r15, %r11                                                         #  41    0xad580  3      OPC=72    
  jmpq %r11                                                               #  42    0xad583  3      OPC=928   
  nop                                                                     #  43    0xad586  1      OPC=1343  
  nop                                                                     #  44    0xad587  1      OPC=1343  
  nop                                                                     #  45    0xad588  1      OPC=1343  
  nop                                                                     #  46    0xad589  1      OPC=1343  
  nop                                                                     #  47    0xad58a  1      OPC=1343  
  nop                                                                     #  48    0xad58b  1      OPC=1343  
  nop                                                                     #  49    0xad58c  1      OPC=1343  
.L_ad580:                                                                 #        0xad58d  0      OPC=0     
  movl $0x1003bafb, %edi                                                  #  50    0xad58d  5      OPC=1154  
  nop                                                                     #  51    0xad592  1      OPC=1343  
  nop                                                                     #  52    0xad593  1      OPC=1343  
  nop                                                                     #  53    0xad594  1      OPC=1343  
  nop                                                                     #  54    0xad595  1      OPC=1343  
  nop                                                                     #  55    0xad596  1      OPC=1343  
  nop                                                                     #  56    0xad597  1      OPC=1343  
  nop                                                                     #  57    0xad598  1      OPC=1343  
  nop                                                                     #  58    0xad599  1      OPC=1343  
  nop                                                                     #  59    0xad59a  1      OPC=1343  
  nop                                                                     #  60    0xad59b  1      OPC=1343  
  nop                                                                     #  61    0xad59c  1      OPC=1343  
  nop                                                                     #  62    0xad59d  1      OPC=1343  
  nop                                                                     #  63    0xad59e  1      OPC=1343  
  nop                                                                     #  64    0xad59f  1      OPC=1343  
  nop                                                                     #  65    0xad5a0  1      OPC=1343  
  nop                                                                     #  66    0xad5a1  1      OPC=1343  
  nop                                                                     #  67    0xad5a2  1      OPC=1343  
  nop                                                                     #  68    0xad5a3  1      OPC=1343  
  nop                                                                     #  69    0xad5a4  1      OPC=1343  
  nop                                                                     #  70    0xad5a5  1      OPC=1343  
  nop                                                                     #  71    0xad5a6  1      OPC=1343  
  nop                                                                     #  72    0xad5a7  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                                    #  73    0xad5a8  5      OPC=260   
  movl %eax, %edi                                                         #  74    0xad5ad  2      OPC=1157  
  nop                                                                     #  75    0xad5af  1      OPC=1343  
  nop                                                                     #  76    0xad5b0  1      OPC=1343  
  nop                                                                     #  77    0xad5b1  1      OPC=1343  
  nop                                                                     #  78    0xad5b2  1      OPC=1343  
  nop                                                                     #  79    0xad5b3  1      OPC=1343  
  nop                                                                     #  80    0xad5b4  1      OPC=1343  
  nop                                                                     #  81    0xad5b5  1      OPC=1343  
  nop                                                                     #  82    0xad5b6  1      OPC=1343  
  nop                                                                     #  83    0xad5b7  1      OPC=1343  
  nop                                                                     #  84    0xad5b8  1      OPC=1343  
  nop                                                                     #  85    0xad5b9  1      OPC=1343  
  nop                                                                     #  86    0xad5ba  1      OPC=1343  
  nop                                                                     #  87    0xad5bb  1      OPC=1343  
  nop                                                                     #  88    0xad5bc  1      OPC=1343  
  nop                                                                     #  89    0xad5bd  1      OPC=1343  
  nop                                                                     #  90    0xad5be  1      OPC=1343  
  nop                                                                     #  91    0xad5bf  1      OPC=1343  
  nop                                                                     #  92    0xad5c0  1      OPC=1343  
  nop                                                                     #  93    0xad5c1  1      OPC=1343  
  nop                                                                     #  94    0xad5c2  1      OPC=1343  
  nop                                                                     #  95    0xad5c3  1      OPC=1343  
  nop                                                                     #  96    0xad5c4  1      OPC=1343  
  nop                                                                     #  97    0xad5c5  1      OPC=1343  
  nop                                                                     #  98    0xad5c6  1      OPC=1343  
  nop                                                                     #  99    0xad5c7  1      OPC=1343  
  callq ._Unwind_Resume                                                   #  100   0xad5c8  5      OPC=260   
                                                                                                             
.size _ZNSsC2ERKSsjj, .-_ZNSsC2ERKSsjj

