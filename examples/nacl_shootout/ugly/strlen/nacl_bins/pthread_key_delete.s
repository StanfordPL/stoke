  .text
  .globl pthread_key_delete
  .type pthread_key_delete, @function

#! file-offset 0x6da20
#! rip-offset  0x2da20
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
.pthread_key_delete:                  #        0x2da20  0      OPC=0     
  cmpl $0x1ff, %edi                   #  1     0x2da20  6      OPC=469   
  ja .L_2da60                         #  2     0x2da26  6      OPC=863   
  nop                                 #  3     0x2da2c  1      OPC=1343  
  nop                                 #  4     0x2da2d  1      OPC=1343  
  shll $0x3, %edi                     #  5     0x2da2e  3      OPC=2269  
  movslq %edi, %rcx                   #  6     0x2da31  3      OPC=1289  
  leaq 0x10071624(%rcx), %rax         #  7     0x2da34  7      OPC=1069  
  movl %eax, %eax                     #  8     0x2da3b  2      OPC=1157  
  movl (%r15,%rax,1), %edx            #  9     0x2da3d  4      OPC=1156  
  testb $0x1, %dl                     #  10    0x2da41  3      OPC=2439  
  xchgw %ax, %ax                      #  11    0x2da44  2      OPC=3700  
  jne .L_2da80                        #  12    0x2da46  6      OPC=963   
  nop                                 #  13    0x2da4c  1      OPC=1343  
  nop                                 #  14    0x2da4d  1      OPC=1343  
  nop                                 #  15    0x2da4e  1      OPC=1343  
  nop                                 #  16    0x2da4f  1      OPC=1343  
  nop                                 #  17    0x2da50  1      OPC=1343  
  nop                                 #  18    0x2da51  1      OPC=1343  
  nop                                 #  19    0x2da52  1      OPC=1343  
  nop                                 #  20    0x2da53  1      OPC=1343  
  nop                                 #  21    0x2da54  1      OPC=1343  
  nop                                 #  22    0x2da55  1      OPC=1343  
  nop                                 #  23    0x2da56  1      OPC=1343  
  nop                                 #  24    0x2da57  1      OPC=1343  
  nop                                 #  25    0x2da58  1      OPC=1343  
  nop                                 #  26    0x2da59  1      OPC=1343  
  nop                                 #  27    0x2da5a  1      OPC=1343  
  nop                                 #  28    0x2da5b  1      OPC=1343  
  nop                                 #  29    0x2da5c  1      OPC=1343  
  nop                                 #  30    0x2da5d  1      OPC=1343  
  nop                                 #  31    0x2da5e  1      OPC=1343  
  nop                                 #  32    0x2da5f  1      OPC=1343  
  nop                                 #  33    0x2da60  1      OPC=1343  
  nop                                 #  34    0x2da61  1      OPC=1343  
  nop                                 #  35    0x2da62  1      OPC=1343  
  nop                                 #  36    0x2da63  1      OPC=1343  
  nop                                 #  37    0x2da64  1      OPC=1343  
  nop                                 #  38    0x2da65  1      OPC=1343  
  nop                                 #  39    0x2da66  1      OPC=1343  
  nop                                 #  40    0x2da67  1      OPC=1343  
  nop                                 #  41    0x2da68  1      OPC=1343  
  nop                                 #  42    0x2da69  1      OPC=1343  
  nop                                 #  43    0x2da6a  1      OPC=1343  
  nop                                 #  44    0x2da6b  1      OPC=1343  
.L_2da60:                             #        0x2da6c  0      OPC=0     
  movl $0x16, %eax                    #  45    0x2da6c  5      OPC=1154  
  popq %r11                           #  46    0x2da71  2      OPC=1694  
  andl $0xffffffe0, %r11d             #  47    0x2da73  7      OPC=131   
  nop                                 #  48    0x2da7a  1      OPC=1343  
  nop                                 #  49    0x2da7b  1      OPC=1343  
  nop                                 #  50    0x2da7c  1      OPC=1343  
  nop                                 #  51    0x2da7d  1      OPC=1343  
  addq %r15, %r11                     #  52    0x2da7e  3      OPC=72    
  jmpq %r11                           #  53    0x2da81  3      OPC=928   
  nop                                 #  54    0x2da84  1      OPC=1343  
  nop                                 #  55    0x2da85  1      OPC=1343  
  nop                                 #  56    0x2da86  1      OPC=1343  
  nop                                 #  57    0x2da87  1      OPC=1343  
  nop                                 #  58    0x2da88  1      OPC=1343  
  nop                                 #  59    0x2da89  1      OPC=1343  
  nop                                 #  60    0x2da8a  1      OPC=1343  
  nop                                 #  61    0x2da8b  1      OPC=1343  
  nop                                 #  62    0x2da8c  1      OPC=1343  
  nop                                 #  63    0x2da8d  1      OPC=1343  
  nop                                 #  64    0x2da8e  1      OPC=1343  
  nop                                 #  65    0x2da8f  1      OPC=1343  
  nop                                 #  66    0x2da90  1      OPC=1343  
  nop                                 #  67    0x2da91  1      OPC=1343  
  nop                                 #  68    0x2da92  1      OPC=1343  
.L_2da80:                             #        0x2da93  0      OPC=0     
  leal 0x1(%rdx), %esi                #  69    0x2da93  3      OPC=1066  
  addl $0x10071624, %edi              #  70    0x2da96  6      OPC=64    
  movl %edx, %eax                     #  71    0x2da9c  2      OPC=1157  
  movl %edi, %edi                     #  72    0x2da9e  2      OPC=1157  
  lock                                #  73    0x2daa0  1      OPC=1081  
  cmpxchgl %esi, (%r15,%rdi,1)        #  74    0x2daa1  5      OPC=509   
  nop                                 #  75    0x2daa6  1      OPC=1343  
  cmpl %edx, %eax                     #  76    0x2daa7  2      OPC=472   
  jne .L_2da60                        #  77    0x2daa9  6      OPC=963   
  nop                                 #  78    0x2daaf  1      OPC=1343  
  nop                                 #  79    0x2dab0  1      OPC=1343  
  nop                                 #  80    0x2dab1  1      OPC=1343  
  nop                                 #  81    0x2dab2  1      OPC=1343  
  nop                                 #  82    0x2dab3  1      OPC=1343  
  nop                                 #  83    0x2dab4  1      OPC=1343  
  nop                                 #  84    0x2dab5  1      OPC=1343  
  nop                                 #  85    0x2dab6  1      OPC=1343  
  nop                                 #  86    0x2dab7  1      OPC=1343  
  nop                                 #  87    0x2dab8  1      OPC=1343  
  nop                                 #  88    0x2dab9  1      OPC=1343  
  movl %ecx, %ecx                     #  89    0x2daba  2      OPC=1157  
  movl $0x0, 0x10071620(%r15,%rcx,1)  #  90    0x2dabc  12     OPC=1135  
  xorl %eax, %eax                     #  91    0x2dac8  2      OPC=3758  
  popq %r11                           #  92    0x2daca  2      OPC=1694  
  andl $0xffffffe0, %r11d             #  93    0x2dacc  7      OPC=131   
  nop                                 #  94    0x2dad3  1      OPC=1343  
  nop                                 #  95    0x2dad4  1      OPC=1343  
  nop                                 #  96    0x2dad5  1      OPC=1343  
  nop                                 #  97    0x2dad6  1      OPC=1343  
  addq %r15, %r11                     #  98    0x2dad7  3      OPC=72    
  jmpq %r11                           #  99    0x2dada  3      OPC=928   
  nop                                 #  100   0x2dadd  1      OPC=1343  
  nop                                 #  101   0x2dade  1      OPC=1343  
  nop                                 #  102   0x2dadf  1      OPC=1343  
  nop                                 #  103   0x2dae0  1      OPC=1343  
                                                                         
.size pthread_key_delete, .-pthread_key_delete

