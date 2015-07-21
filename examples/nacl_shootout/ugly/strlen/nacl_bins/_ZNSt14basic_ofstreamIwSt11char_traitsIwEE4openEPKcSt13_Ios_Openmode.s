  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x132b60
#! rip-offset  0xf2b60
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:        #        0xf2b60  0      OPC=0     
  pushq %rbx                                                                  #  1     0xf2b60  1      OPC=1861  
  movl %edi, %ebx                                                             #  2     0xf2b61  2      OPC=1157  
  orl $0x10, %edx                                                             #  3     0xf2b63  3      OPC=1378  
  leal 0x4(%rbx), %edi                                                        #  4     0xf2b66  3      OPC=1066  
  movl %esi, %esi                                                             #  5     0xf2b69  2      OPC=1157  
  nop                                                                         #  6     0xf2b6b  1      OPC=1343  
  nop                                                                         #  7     0xf2b6c  1      OPC=1343  
  nop                                                                         #  8     0xf2b6d  1      OPC=1343  
  nop                                                                         #  9     0xf2b6e  1      OPC=1343  
  nop                                                                         #  10    0xf2b6f  1      OPC=1343  
  nop                                                                         #  11    0xf2b70  1      OPC=1343  
  nop                                                                         #  12    0xf2b71  1      OPC=1343  
  nop                                                                         #  13    0xf2b72  1      OPC=1343  
  nop                                                                         #  14    0xf2b73  1      OPC=1343  
  nop                                                                         #  15    0xf2b74  1      OPC=1343  
  nop                                                                         #  16    0xf2b75  1      OPC=1343  
  nop                                                                         #  17    0xf2b76  1      OPC=1343  
  nop                                                                         #  18    0xf2b77  1      OPC=1343  
  nop                                                                         #  19    0xf2b78  1      OPC=1343  
  nop                                                                         #  20    0xf2b79  1      OPC=1343  
  nop                                                                         #  21    0xf2b7a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  22    0xf2b7b  5      OPC=260   
  testl %eax, %eax                                                            #  23    0xf2b80  2      OPC=2436  
  je .L_f2ba0                                                                 #  24    0xf2b82  6      OPC=893   
  nop                                                                         #  25    0xf2b88  1      OPC=1343  
  nop                                                                         #  26    0xf2b89  1      OPC=1343  
  movl %ebx, %ebx                                                             #  27    0xf2b8a  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  28    0xf2b8c  4      OPC=1156  
  xorl %esi, %esi                                                             #  29    0xf2b90  2      OPC=3758  
  subl $0xc, %eax                                                             #  30    0xf2b92  3      OPC=2384  
  movl %eax, %eax                                                             #  31    0xf2b95  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  32    0xf2b97  4      OPC=1156  
  addl %ebx, %edi                                                             #  33    0xf2b9b  2      OPC=67    
  popq %rbx                                                                   #  34    0xf2b9d  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  35    0xf2b9e  5      OPC=930   
  nop                                                                         #  36    0xf2ba3  1      OPC=1343  
  nop                                                                         #  37    0xf2ba4  1      OPC=1343  
  nop                                                                         #  38    0xf2ba5  1      OPC=1343  
.L_f2ba0:                                                                     #        0xf2ba6  0      OPC=0     
  movl %ebx, %ebx                                                             #  39    0xf2ba6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  40    0xf2ba8  4      OPC=1156  
  subl $0xc, %eax                                                             #  41    0xf2bac  3      OPC=2384  
  movl %eax, %eax                                                             #  42    0xf2baf  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  43    0xf2bb1  4      OPC=1156  
  addl %ebx, %edi                                                             #  44    0xf2bb5  2      OPC=67    
  movl %edi, %edi                                                             #  45    0xf2bb7  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xf2bb9  5      OPC=1156  
  popq %rbx                                                                   #  47    0xf2bbe  1      OPC=1694  
  orl $0x4, %esi                                                              #  48    0xf2bbf  3      OPC=1378  
  nop                                                                         #  49    0xf2bc2  1      OPC=1343  
  nop                                                                         #  50    0xf2bc3  1      OPC=1343  
  nop                                                                         #  51    0xf2bc4  1      OPC=1343  
  nop                                                                         #  52    0xf2bc5  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  53    0xf2bc6  5      OPC=930   
  nop                                                                         #  54    0xf2bcb  1      OPC=1343  
  nop                                                                         #  55    0xf2bcc  1      OPC=1343  
  nop                                                                         #  56    0xf2bcd  1      OPC=1343  
  nop                                                                         #  57    0xf2bce  1      OPC=1343  
  nop                                                                         #  58    0xf2bcf  1      OPC=1343  
  nop                                                                         #  59    0xf2bd0  1      OPC=1343  
  nop                                                                         #  60    0xf2bd1  1      OPC=1343  
  nop                                                                         #  61    0xf2bd2  1      OPC=1343  
  nop                                                                         #  62    0xf2bd3  1      OPC=1343  
  nop                                                                         #  63    0xf2bd4  1      OPC=1343  
  nop                                                                         #  64    0xf2bd5  1      OPC=1343  
  nop                                                                         #  65    0xf2bd6  1      OPC=1343  
  nop                                                                         #  66    0xf2bd7  1      OPC=1343  
  nop                                                                         #  67    0xf2bd8  1      OPC=1343  
  nop                                                                         #  68    0xf2bd9  1      OPC=1343  
  nop                                                                         #  69    0xf2bda  1      OPC=1343  
  nop                                                                         #  70    0xf2bdb  1      OPC=1343  
  nop                                                                         #  71    0xf2bdc  1      OPC=1343  
  nop                                                                         #  72    0xf2bdd  1      OPC=1343  
  nop                                                                         #  73    0xf2bde  1      OPC=1343  
  nop                                                                         #  74    0xf2bdf  1      OPC=1343  
  nop                                                                         #  75    0xf2be0  1      OPC=1343  
  nop                                                                         #  76    0xf2be1  1      OPC=1343  
  nop                                                                         #  77    0xf2be2  1      OPC=1343  
  nop                                                                         #  78    0xf2be3  1      OPC=1343  
  nop                                                                         #  79    0xf2be4  1      OPC=1343  
  nop                                                                         #  80    0xf2be5  1      OPC=1343  
                                                                                                                 
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

