  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12dca0
#! rip-offset  0xedca0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:        #        0xedca0  0      OPC=0     
  pushq %rbx                                                                  #  1     0xedca0  1      OPC=1861  
  movl %edi, %ebx                                                             #  2     0xedca1  2      OPC=1157  
  orl $0x10, %edx                                                             #  3     0xedca3  3      OPC=1378  
  leal 0x4(%rbx), %edi                                                        #  4     0xedca6  3      OPC=1066  
  movl %esi, %esi                                                             #  5     0xedca9  2      OPC=1157  
  nop                                                                         #  6     0xedcab  1      OPC=1343  
  nop                                                                         #  7     0xedcac  1      OPC=1343  
  nop                                                                         #  8     0xedcad  1      OPC=1343  
  nop                                                                         #  9     0xedcae  1      OPC=1343  
  nop                                                                         #  10    0xedcaf  1      OPC=1343  
  nop                                                                         #  11    0xedcb0  1      OPC=1343  
  nop                                                                         #  12    0xedcb1  1      OPC=1343  
  nop                                                                         #  13    0xedcb2  1      OPC=1343  
  nop                                                                         #  14    0xedcb3  1      OPC=1343  
  nop                                                                         #  15    0xedcb4  1      OPC=1343  
  nop                                                                         #  16    0xedcb5  1      OPC=1343  
  nop                                                                         #  17    0xedcb6  1      OPC=1343  
  nop                                                                         #  18    0xedcb7  1      OPC=1343  
  nop                                                                         #  19    0xedcb8  1      OPC=1343  
  nop                                                                         #  20    0xedcb9  1      OPC=1343  
  nop                                                                         #  21    0xedcba  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  22    0xedcbb  5      OPC=260   
  testl %eax, %eax                                                            #  23    0xedcc0  2      OPC=2436  
  je .L_edce0                                                                 #  24    0xedcc2  6      OPC=893   
  nop                                                                         #  25    0xedcc8  1      OPC=1343  
  nop                                                                         #  26    0xedcc9  1      OPC=1343  
  movl %ebx, %ebx                                                             #  27    0xedcca  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  28    0xedccc  4      OPC=1156  
  xorl %esi, %esi                                                             #  29    0xedcd0  2      OPC=3758  
  subl $0xc, %eax                                                             #  30    0xedcd2  3      OPC=2384  
  movl %eax, %eax                                                             #  31    0xedcd5  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  32    0xedcd7  4      OPC=1156  
  addl %ebx, %edi                                                             #  33    0xedcdb  2      OPC=67    
  popq %rbx                                                                   #  34    0xedcdd  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  35    0xedcde  5      OPC=930   
  nop                                                                         #  36    0xedce3  1      OPC=1343  
  nop                                                                         #  37    0xedce4  1      OPC=1343  
  nop                                                                         #  38    0xedce5  1      OPC=1343  
.L_edce0:                                                                     #        0xedce6  0      OPC=0     
  movl %ebx, %ebx                                                             #  39    0xedce6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  40    0xedce8  4      OPC=1156  
  subl $0xc, %eax                                                             #  41    0xedcec  3      OPC=2384  
  movl %eax, %eax                                                             #  42    0xedcef  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  43    0xedcf1  4      OPC=1156  
  addl %ebx, %edi                                                             #  44    0xedcf5  2      OPC=67    
  movl %edi, %edi                                                             #  45    0xedcf7  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xedcf9  5      OPC=1156  
  popq %rbx                                                                   #  47    0xedcfe  1      OPC=1694  
  orl $0x4, %esi                                                              #  48    0xedcff  3      OPC=1378  
  nop                                                                         #  49    0xedd02  1      OPC=1343  
  nop                                                                         #  50    0xedd03  1      OPC=1343  
  nop                                                                         #  51    0xedd04  1      OPC=1343  
  nop                                                                         #  52    0xedd05  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  53    0xedd06  5      OPC=930   
  nop                                                                         #  54    0xedd0b  1      OPC=1343  
  nop                                                                         #  55    0xedd0c  1      OPC=1343  
  nop                                                                         #  56    0xedd0d  1      OPC=1343  
  nop                                                                         #  57    0xedd0e  1      OPC=1343  
  nop                                                                         #  58    0xedd0f  1      OPC=1343  
  nop                                                                         #  59    0xedd10  1      OPC=1343  
  nop                                                                         #  60    0xedd11  1      OPC=1343  
  nop                                                                         #  61    0xedd12  1      OPC=1343  
  nop                                                                         #  62    0xedd13  1      OPC=1343  
  nop                                                                         #  63    0xedd14  1      OPC=1343  
  nop                                                                         #  64    0xedd15  1      OPC=1343  
  nop                                                                         #  65    0xedd16  1      OPC=1343  
  nop                                                                         #  66    0xedd17  1      OPC=1343  
  nop                                                                         #  67    0xedd18  1      OPC=1343  
  nop                                                                         #  68    0xedd19  1      OPC=1343  
  nop                                                                         #  69    0xedd1a  1      OPC=1343  
  nop                                                                         #  70    0xedd1b  1      OPC=1343  
  nop                                                                         #  71    0xedd1c  1      OPC=1343  
  nop                                                                         #  72    0xedd1d  1      OPC=1343  
  nop                                                                         #  73    0xedd1e  1      OPC=1343  
  nop                                                                         #  74    0xedd1f  1      OPC=1343  
  nop                                                                         #  75    0xedd20  1      OPC=1343  
  nop                                                                         #  76    0xedd21  1      OPC=1343  
  nop                                                                         #  77    0xedd22  1      OPC=1343  
  nop                                                                         #  78    0xedd23  1      OPC=1343  
  nop                                                                         #  79    0xedd24  1      OPC=1343  
  nop                                                                         #  80    0xedd25  1      OPC=1343  
                                                                                                                 
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

