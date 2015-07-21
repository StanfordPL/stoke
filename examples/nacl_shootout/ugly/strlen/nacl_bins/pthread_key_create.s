  .text
  .globl pthread_key_create
  .type pthread_key_create, @function

#! file-offset 0x6dac0
#! rip-offset  0x2dac0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
.pthread_key_create:                  #        0x2dac0  0      OPC=0     
  movl %edi, %r10d                    #  1     0x2dac0  3      OPC=1157  
  movl %esi, %r9d                     #  2     0x2dac3  3      OPC=1157  
  xorl %edx, %edx                     #  3     0x2dac6  2      OPC=3758  
  nop                                 #  4     0x2dac8  1      OPC=1343  
  nop                                 #  5     0x2dac9  1      OPC=1343  
  nop                                 #  6     0x2daca  1      OPC=1343  
  nop                                 #  7     0x2dacb  1      OPC=1343  
  nop                                 #  8     0x2dacc  1      OPC=1343  
  nop                                 #  9     0x2dacd  1      OPC=1343  
  nop                                 #  10    0x2dace  1      OPC=1343  
  nop                                 #  11    0x2dacf  1      OPC=1343  
  nop                                 #  12    0x2dad0  1      OPC=1343  
  nop                                 #  13    0x2dad1  1      OPC=1343  
  nop                                 #  14    0x2dad2  1      OPC=1343  
  nop                                 #  15    0x2dad3  1      OPC=1343  
  nop                                 #  16    0x2dad4  1      OPC=1343  
  nop                                 #  17    0x2dad5  1      OPC=1343  
  nop                                 #  18    0x2dad6  1      OPC=1343  
  nop                                 #  19    0x2dad7  1      OPC=1343  
  nop                                 #  20    0x2dad8  1      OPC=1343  
  nop                                 #  21    0x2dad9  1      OPC=1343  
  nop                                 #  22    0x2dada  1      OPC=1343  
  nop                                 #  23    0x2dadb  1      OPC=1343  
  nop                                 #  24    0x2dadc  1      OPC=1343  
  nop                                 #  25    0x2dadd  1      OPC=1343  
  nop                                 #  26    0x2dade  1      OPC=1343  
  nop                                 #  27    0x2dadf  1      OPC=1343  
.L_2dae0:                             #        0x2dae0  0      OPC=0     
  leal (,%rdx,8), %edi                #  28    0x2dae0  7      OPC=1066  
  movslq %edi, %rsi                   #  29    0x2dae7  3      OPC=1289  
  leaq 0x10071624(%rsi), %rax         #  30    0x2daea  7      OPC=1069  
  movl %eax, %eax                     #  31    0x2daf1  2      OPC=1157  
  movl (%r15,%rax,1), %ecx            #  32    0x2daf3  4      OPC=1156  
  testb $0x1, %cl                     #  33    0x2daf7  3      OPC=2439  
  jne .L_2db20                        #  34    0x2dafa  6      OPC=963   
  nop                                 #  35    0x2db00  1      OPC=1343  
  nop                                 #  36    0x2db01  1      OPC=1343  
  cmpl $0xfffffffe, %ecx              #  37    0x2db02  6      OPC=469   
  nop                                 #  38    0x2db08  1      OPC=1343  
  nop                                 #  39    0x2db09  1      OPC=1343  
  nop                                 #  40    0x2db0a  1      OPC=1343  
  nop                                 #  41    0x2db0b  1      OPC=1343  
  je .L_2db20                         #  42    0x2db0c  6      OPC=893   
  nop                                 #  43    0x2db12  1      OPC=1343  
  nop                                 #  44    0x2db13  1      OPC=1343  
  leal 0x1(%rcx), %r8d                #  45    0x2db14  4      OPC=1066  
  addl $0x10071624, %edi              #  46    0x2db18  6      OPC=64    
  movl %ecx, %eax                     #  47    0x2db1e  2      OPC=1157  
  movl %edi, %edi                     #  48    0x2db20  2      OPC=1157  
  lock                                #  49    0x2db22  1      OPC=1081  
  cmpxchgl %r8d, (%r15,%rdi,1)        #  50    0x2db23  5      OPC=509   
  nop                                 #  51    0x2db28  1      OPC=1343  
  cmpl %ecx, %eax                     #  52    0x2db29  2      OPC=472   
  je .L_2db40                         #  53    0x2db2b  6      OPC=893   
  nop                                 #  54    0x2db31  1      OPC=1343  
  nop                                 #  55    0x2db32  1      OPC=1343  
  nop                                 #  56    0x2db33  1      OPC=1343  
  nop                                 #  57    0x2db34  1      OPC=1343  
  nop                                 #  58    0x2db35  1      OPC=1343  
  nop                                 #  59    0x2db36  1      OPC=1343  
  nop                                 #  60    0x2db37  1      OPC=1343  
  nop                                 #  61    0x2db38  1      OPC=1343  
.L_2db20:                             #        0x2db39  0      OPC=0     
  addl $0x1, %edx                     #  62    0x2db39  3      OPC=65    
  cmpl $0x200, %edx                   #  63    0x2db3c  6      OPC=469   
  jne .L_2dae0                        #  64    0x2db42  6      OPC=963   
  nop                                 #  65    0x2db48  1      OPC=1343  
  nop                                 #  66    0x2db49  1      OPC=1343  
  movl $0xb, %eax                     #  67    0x2db4a  5      OPC=1154  
  popq %r11                           #  68    0x2db4f  2      OPC=1694  
  andl $0xffffffe0, %r11d             #  69    0x2db51  7      OPC=131   
  nop                                 #  70    0x2db58  1      OPC=1343  
  nop                                 #  71    0x2db59  1      OPC=1343  
  nop                                 #  72    0x2db5a  1      OPC=1343  
  nop                                 #  73    0x2db5b  1      OPC=1343  
  addq %r15, %r11                     #  74    0x2db5c  3      OPC=72    
  jmpq %r11                           #  75    0x2db5f  3      OPC=928   
  nop                                 #  76    0x2db62  1      OPC=1343  
  nop                                 #  77    0x2db63  1      OPC=1343  
  nop                                 #  78    0x2db64  1      OPC=1343  
  nop                                 #  79    0x2db65  1      OPC=1343  
.L_2db40:                             #        0x2db66  0      OPC=0     
  movl %r10d, %r10d                   #  80    0x2db66  3      OPC=1157  
  movl %edx, (%r15,%r10,1)            #  81    0x2db69  4      OPC=1136  
  movl %esi, %esi                     #  82    0x2db6d  2      OPC=1157  
  movl %r9d, 0x10071620(%r15,%rsi,1)  #  83    0x2db6f  8      OPC=1136  
  xorl %eax, %eax                     #  84    0x2db77  2      OPC=3758  
  popq %r11                           #  85    0x2db79  2      OPC=1694  
  andl $0xffffffe0, %r11d             #  86    0x2db7b  7      OPC=131   
  nop                                 #  87    0x2db82  1      OPC=1343  
  nop                                 #  88    0x2db83  1      OPC=1343  
  nop                                 #  89    0x2db84  1      OPC=1343  
  nop                                 #  90    0x2db85  1      OPC=1343  
  addq %r15, %r11                     #  91    0x2db86  3      OPC=72    
  jmpq %r11                           #  92    0x2db89  3      OPC=928   
  nop                                 #  93    0x2db8c  1      OPC=1343  
                                                                         
.size pthread_key_create, .-pthread_key_create

