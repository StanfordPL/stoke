  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12dc20
#! rip-offset  0xedc20
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:       #        0xedc20  0      OPC=0     
  movl %esi, %esi                                                             #  1     0xedc20  2      OPC=1157  
  pushq %rbx                                                                  #  2     0xedc22  1      OPC=1861  
  movl %edi, %ebx                                                             #  3     0xedc23  2      OPC=1157  
  movl %esi, %esi                                                             #  4     0xedc25  2      OPC=1157  
  movl (%r15,%rsi,1), %esi                                                    #  5     0xedc27  4      OPC=1156  
  leal 0x4(%rbx), %edi                                                        #  6     0xedc2b  3      OPC=1066  
  orl $0x10, %edx                                                             #  7     0xedc2e  3      OPC=1378  
  nop                                                                         #  8     0xedc31  1      OPC=1343  
  nop                                                                         #  9     0xedc32  1      OPC=1343  
  nop                                                                         #  10    0xedc33  1      OPC=1343  
  nop                                                                         #  11    0xedc34  1      OPC=1343  
  nop                                                                         #  12    0xedc35  1      OPC=1343  
  nop                                                                         #  13    0xedc36  1      OPC=1343  
  nop                                                                         #  14    0xedc37  1      OPC=1343  
  nop                                                                         #  15    0xedc38  1      OPC=1343  
  nop                                                                         #  16    0xedc39  1      OPC=1343  
  nop                                                                         #  17    0xedc3a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  18    0xedc3b  5      OPC=260   
  testl %eax, %eax                                                            #  19    0xedc40  2      OPC=2436  
  je .L_edc60                                                                 #  20    0xedc42  6      OPC=893   
  nop                                                                         #  21    0xedc48  1      OPC=1343  
  nop                                                                         #  22    0xedc49  1      OPC=1343  
  movl %ebx, %ebx                                                             #  23    0xedc4a  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  24    0xedc4c  4      OPC=1156  
  xorl %esi, %esi                                                             #  25    0xedc50  2      OPC=3758  
  subl $0xc, %eax                                                             #  26    0xedc52  3      OPC=2384  
  movl %eax, %eax                                                             #  27    0xedc55  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  28    0xedc57  4      OPC=1156  
  addl %ebx, %edi                                                             #  29    0xedc5b  2      OPC=67    
  popq %rbx                                                                   #  30    0xedc5d  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  31    0xedc5e  5      OPC=930   
  nop                                                                         #  32    0xedc63  1      OPC=1343  
  nop                                                                         #  33    0xedc64  1      OPC=1343  
  nop                                                                         #  34    0xedc65  1      OPC=1343  
.L_edc60:                                                                     #        0xedc66  0      OPC=0     
  movl %ebx, %ebx                                                             #  35    0xedc66  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  36    0xedc68  4      OPC=1156  
  subl $0xc, %eax                                                             #  37    0xedc6c  3      OPC=2384  
  movl %eax, %eax                                                             #  38    0xedc6f  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  39    0xedc71  4      OPC=1156  
  addl %ebx, %edi                                                             #  40    0xedc75  2      OPC=67    
  movl %edi, %edi                                                             #  41    0xedc77  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xedc79  5      OPC=1156  
  popq %rbx                                                                   #  43    0xedc7e  1      OPC=1694  
  orl $0x4, %esi                                                              #  44    0xedc7f  3      OPC=1378  
  nop                                                                         #  45    0xedc82  1      OPC=1343  
  nop                                                                         #  46    0xedc83  1      OPC=1343  
  nop                                                                         #  47    0xedc84  1      OPC=1343  
  nop                                                                         #  48    0xedc85  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  49    0xedc86  5      OPC=930   
  nop                                                                         #  50    0xedc8b  1      OPC=1343  
  nop                                                                         #  51    0xedc8c  1      OPC=1343  
  nop                                                                         #  52    0xedc8d  1      OPC=1343  
  nop                                                                         #  53    0xedc8e  1      OPC=1343  
  nop                                                                         #  54    0xedc8f  1      OPC=1343  
  nop                                                                         #  55    0xedc90  1      OPC=1343  
  nop                                                                         #  56    0xedc91  1      OPC=1343  
  nop                                                                         #  57    0xedc92  1      OPC=1343  
  nop                                                                         #  58    0xedc93  1      OPC=1343  
  nop                                                                         #  59    0xedc94  1      OPC=1343  
  nop                                                                         #  60    0xedc95  1      OPC=1343  
  nop                                                                         #  61    0xedc96  1      OPC=1343  
  nop                                                                         #  62    0xedc97  1      OPC=1343  
  nop                                                                         #  63    0xedc98  1      OPC=1343  
  nop                                                                         #  64    0xedc99  1      OPC=1343  
  nop                                                                         #  65    0xedc9a  1      OPC=1343  
  nop                                                                         #  66    0xedc9b  1      OPC=1343  
  nop                                                                         #  67    0xedc9c  1      OPC=1343  
  nop                                                                         #  68    0xedc9d  1      OPC=1343  
  nop                                                                         #  69    0xedc9e  1      OPC=1343  
  nop                                                                         #  70    0xedc9f  1      OPC=1343  
  nop                                                                         #  71    0xedca0  1      OPC=1343  
  nop                                                                         #  72    0xedca1  1      OPC=1343  
  nop                                                                         #  73    0xedca2  1      OPC=1343  
  nop                                                                         #  74    0xedca3  1      OPC=1343  
  nop                                                                         #  75    0xedca4  1      OPC=1343  
  nop                                                                         #  76    0xedca5  1      OPC=1343  
                                                                                                                 
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

