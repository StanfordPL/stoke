  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x132d00
#! rip-offset  0xf2d00
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:       #        0xf2d00  0      OPC=0     
  movl %esi, %esi                                                             #  1     0xf2d00  2      OPC=1157  
  pushq %rbx                                                                  #  2     0xf2d02  1      OPC=1861  
  movl %edi, %ebx                                                             #  3     0xf2d03  2      OPC=1157  
  movl %esi, %esi                                                             #  4     0xf2d05  2      OPC=1157  
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf2d07  4      OPC=1156  
  leal 0x4(%rbx), %edi                                                        #  6     0xf2d0b  3      OPC=1066  
  orl $0x10, %edx                                                             #  7     0xf2d0e  3      OPC=1378  
  nop                                                                         #  8     0xf2d11  1      OPC=1343  
  nop                                                                         #  9     0xf2d12  1      OPC=1343  
  nop                                                                         #  10    0xf2d13  1      OPC=1343  
  nop                                                                         #  11    0xf2d14  1      OPC=1343  
  nop                                                                         #  12    0xf2d15  1      OPC=1343  
  nop                                                                         #  13    0xf2d16  1      OPC=1343  
  nop                                                                         #  14    0xf2d17  1      OPC=1343  
  nop                                                                         #  15    0xf2d18  1      OPC=1343  
  nop                                                                         #  16    0xf2d19  1      OPC=1343  
  nop                                                                         #  17    0xf2d1a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  18    0xf2d1b  5      OPC=260   
  testl %eax, %eax                                                            #  19    0xf2d20  2      OPC=2436  
  je .L_f2d40                                                                 #  20    0xf2d22  6      OPC=893   
  nop                                                                         #  21    0xf2d28  1      OPC=1343  
  nop                                                                         #  22    0xf2d29  1      OPC=1343  
  movl %ebx, %ebx                                                             #  23    0xf2d2a  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  24    0xf2d2c  4      OPC=1156  
  xorl %esi, %esi                                                             #  25    0xf2d30  2      OPC=3758  
  subl $0xc, %eax                                                             #  26    0xf2d32  3      OPC=2384  
  movl %eax, %eax                                                             #  27    0xf2d35  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  28    0xf2d37  4      OPC=1156  
  addl %ebx, %edi                                                             #  29    0xf2d3b  2      OPC=67    
  popq %rbx                                                                   #  30    0xf2d3d  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  31    0xf2d3e  5      OPC=930   
  nop                                                                         #  32    0xf2d43  1      OPC=1343  
  nop                                                                         #  33    0xf2d44  1      OPC=1343  
  nop                                                                         #  34    0xf2d45  1      OPC=1343  
.L_f2d40:                                                                     #        0xf2d46  0      OPC=0     
  movl %ebx, %ebx                                                             #  35    0xf2d46  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  36    0xf2d48  4      OPC=1156  
  subl $0xc, %eax                                                             #  37    0xf2d4c  3      OPC=2384  
  movl %eax, %eax                                                             #  38    0xf2d4f  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  39    0xf2d51  4      OPC=1156  
  addl %ebx, %edi                                                             #  40    0xf2d55  2      OPC=67    
  movl %edi, %edi                                                             #  41    0xf2d57  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xf2d59  5      OPC=1156  
  popq %rbx                                                                   #  43    0xf2d5e  1      OPC=1694  
  orl $0x4, %esi                                                              #  44    0xf2d5f  3      OPC=1378  
  nop                                                                         #  45    0xf2d62  1      OPC=1343  
  nop                                                                         #  46    0xf2d63  1      OPC=1343  
  nop                                                                         #  47    0xf2d64  1      OPC=1343  
  nop                                                                         #  48    0xf2d65  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  49    0xf2d66  5      OPC=930   
  nop                                                                         #  50    0xf2d6b  1      OPC=1343  
  nop                                                                         #  51    0xf2d6c  1      OPC=1343  
  nop                                                                         #  52    0xf2d6d  1      OPC=1343  
  nop                                                                         #  53    0xf2d6e  1      OPC=1343  
  nop                                                                         #  54    0xf2d6f  1      OPC=1343  
  nop                                                                         #  55    0xf2d70  1      OPC=1343  
  nop                                                                         #  56    0xf2d71  1      OPC=1343  
  nop                                                                         #  57    0xf2d72  1      OPC=1343  
  nop                                                                         #  58    0xf2d73  1      OPC=1343  
  nop                                                                         #  59    0xf2d74  1      OPC=1343  
  nop                                                                         #  60    0xf2d75  1      OPC=1343  
  nop                                                                         #  61    0xf2d76  1      OPC=1343  
  nop                                                                         #  62    0xf2d77  1      OPC=1343  
  nop                                                                         #  63    0xf2d78  1      OPC=1343  
  nop                                                                         #  64    0xf2d79  1      OPC=1343  
  nop                                                                         #  65    0xf2d7a  1      OPC=1343  
  nop                                                                         #  66    0xf2d7b  1      OPC=1343  
  nop                                                                         #  67    0xf2d7c  1      OPC=1343  
  nop                                                                         #  68    0xf2d7d  1      OPC=1343  
  nop                                                                         #  69    0xf2d7e  1      OPC=1343  
  nop                                                                         #  70    0xf2d7f  1      OPC=1343  
  nop                                                                         #  71    0xf2d80  1      OPC=1343  
  nop                                                                         #  72    0xf2d81  1      OPC=1343  
  nop                                                                         #  73    0xf2d82  1      OPC=1343  
  nop                                                                         #  74    0xf2d83  1      OPC=1343  
  nop                                                                         #  75    0xf2d84  1      OPC=1343  
  nop                                                                         #  76    0xf2d85  1      OPC=1343  
                                                                                                                 
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

