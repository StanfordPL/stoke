  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12dba0
#! rip-offset  0xedba0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:         #        0xedba0  0      OPC=0     
  pushq %rbx                                                                  #  1     0xedba0  1      OPC=1861  
  movl %edi, %ebx                                                             #  2     0xedba1  2      OPC=1157  
  movl %esi, %esi                                                             #  3     0xedba3  2      OPC=1157  
  leal 0xc(%rbx), %edi                                                        #  4     0xedba5  3      OPC=1066  
  nop                                                                         #  5     0xedba8  1      OPC=1343  
  nop                                                                         #  6     0xedba9  1      OPC=1343  
  nop                                                                         #  7     0xedbaa  1      OPC=1343  
  nop                                                                         #  8     0xedbab  1      OPC=1343  
  nop                                                                         #  9     0xedbac  1      OPC=1343  
  nop                                                                         #  10    0xedbad  1      OPC=1343  
  nop                                                                         #  11    0xedbae  1      OPC=1343  
  nop                                                                         #  12    0xedbaf  1      OPC=1343  
  nop                                                                         #  13    0xedbb0  1      OPC=1343  
  nop                                                                         #  14    0xedbb1  1      OPC=1343  
  nop                                                                         #  15    0xedbb2  1      OPC=1343  
  nop                                                                         #  16    0xedbb3  1      OPC=1343  
  nop                                                                         #  17    0xedbb4  1      OPC=1343  
  nop                                                                         #  18    0xedbb5  1      OPC=1343  
  nop                                                                         #  19    0xedbb6  1      OPC=1343  
  nop                                                                         #  20    0xedbb7  1      OPC=1343  
  nop                                                                         #  21    0xedbb8  1      OPC=1343  
  nop                                                                         #  22    0xedbb9  1      OPC=1343  
  nop                                                                         #  23    0xedbba  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  24    0xedbbb  5      OPC=260   
  testl %eax, %eax                                                            #  25    0xedbc0  2      OPC=2436  
  je .L_edbe0                                                                 #  26    0xedbc2  6      OPC=893   
  nop                                                                         #  27    0xedbc8  1      OPC=1343  
  nop                                                                         #  28    0xedbc9  1      OPC=1343  
  movl %ebx, %ebx                                                             #  29    0xedbca  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  30    0xedbcc  4      OPC=1156  
  xorl %esi, %esi                                                             #  31    0xedbd0  2      OPC=3758  
  subl $0xc, %eax                                                             #  32    0xedbd2  3      OPC=2384  
  movl %eax, %eax                                                             #  33    0xedbd5  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  34    0xedbd7  4      OPC=1156  
  addl %ebx, %edi                                                             #  35    0xedbdb  2      OPC=67    
  popq %rbx                                                                   #  36    0xedbdd  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  37    0xedbde  5      OPC=930   
  nop                                                                         #  38    0xedbe3  1      OPC=1343  
  nop                                                                         #  39    0xedbe4  1      OPC=1343  
  nop                                                                         #  40    0xedbe5  1      OPC=1343  
.L_edbe0:                                                                     #        0xedbe6  0      OPC=0     
  movl %ebx, %ebx                                                             #  41    0xedbe6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  42    0xedbe8  4      OPC=1156  
  subl $0xc, %eax                                                             #  43    0xedbec  3      OPC=2384  
  movl %eax, %eax                                                             #  44    0xedbef  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  45    0xedbf1  4      OPC=1156  
  addl %ebx, %edi                                                             #  46    0xedbf5  2      OPC=67    
  movl %edi, %edi                                                             #  47    0xedbf7  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  48    0xedbf9  5      OPC=1156  
  popq %rbx                                                                   #  49    0xedbfe  1      OPC=1694  
  orl $0x4, %esi                                                              #  50    0xedbff  3      OPC=1378  
  nop                                                                         #  51    0xedc02  1      OPC=1343  
  nop                                                                         #  52    0xedc03  1      OPC=1343  
  nop                                                                         #  53    0xedc04  1      OPC=1343  
  nop                                                                         #  54    0xedc05  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  55    0xedc06  5      OPC=930   
  nop                                                                         #  56    0xedc0b  1      OPC=1343  
  nop                                                                         #  57    0xedc0c  1      OPC=1343  
  nop                                                                         #  58    0xedc0d  1      OPC=1343  
  nop                                                                         #  59    0xedc0e  1      OPC=1343  
  nop                                                                         #  60    0xedc0f  1      OPC=1343  
  nop                                                                         #  61    0xedc10  1      OPC=1343  
  nop                                                                         #  62    0xedc11  1      OPC=1343  
  nop                                                                         #  63    0xedc12  1      OPC=1343  
  nop                                                                         #  64    0xedc13  1      OPC=1343  
  nop                                                                         #  65    0xedc14  1      OPC=1343  
  nop                                                                         #  66    0xedc15  1      OPC=1343  
  nop                                                                         #  67    0xedc16  1      OPC=1343  
  nop                                                                         #  68    0xedc17  1      OPC=1343  
  nop                                                                         #  69    0xedc18  1      OPC=1343  
  nop                                                                         #  70    0xedc19  1      OPC=1343  
  nop                                                                         #  71    0xedc1a  1      OPC=1343  
  nop                                                                         #  72    0xedc1b  1      OPC=1343  
  nop                                                                         #  73    0xedc1c  1      OPC=1343  
  nop                                                                         #  74    0xedc1d  1      OPC=1343  
  nop                                                                         #  75    0xedc1e  1      OPC=1343  
  nop                                                                         #  76    0xedc1f  1      OPC=1343  
  nop                                                                         #  77    0xedc20  1      OPC=1343  
  nop                                                                         #  78    0xedc21  1      OPC=1343  
  nop                                                                         #  79    0xedc22  1      OPC=1343  
  nop                                                                         #  80    0xedc23  1      OPC=1343  
  nop                                                                         #  81    0xedc24  1      OPC=1343  
  nop                                                                         #  82    0xedc25  1      OPC=1343  
                                                                                                                 
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

