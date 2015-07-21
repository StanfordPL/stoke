  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12dd20
#! rip-offset  0xedd20
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:       #        0xedd20  0      OPC=0     
  movl %esi, %esi                                                             #  1     0xedd20  2      OPC=1157  
  pushq %rbx                                                                  #  2     0xedd22  1      OPC=1861  
  movl %edi, %ebx                                                             #  3     0xedd23  2      OPC=1157  
  movl %esi, %esi                                                             #  4     0xedd25  2      OPC=1157  
  movl (%r15,%rsi,1), %esi                                                    #  5     0xedd27  4      OPC=1156  
  leal 0x8(%rbx), %edi                                                        #  6     0xedd2b  3      OPC=1066  
  orl $0x8, %edx                                                              #  7     0xedd2e  3      OPC=1378  
  nop                                                                         #  8     0xedd31  1      OPC=1343  
  nop                                                                         #  9     0xedd32  1      OPC=1343  
  nop                                                                         #  10    0xedd33  1      OPC=1343  
  nop                                                                         #  11    0xedd34  1      OPC=1343  
  nop                                                                         #  12    0xedd35  1      OPC=1343  
  nop                                                                         #  13    0xedd36  1      OPC=1343  
  nop                                                                         #  14    0xedd37  1      OPC=1343  
  nop                                                                         #  15    0xedd38  1      OPC=1343  
  nop                                                                         #  16    0xedd39  1      OPC=1343  
  nop                                                                         #  17    0xedd3a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  18    0xedd3b  5      OPC=260   
  testl %eax, %eax                                                            #  19    0xedd40  2      OPC=2436  
  je .L_edd60                                                                 #  20    0xedd42  6      OPC=893   
  nop                                                                         #  21    0xedd48  1      OPC=1343  
  nop                                                                         #  22    0xedd49  1      OPC=1343  
  movl %ebx, %ebx                                                             #  23    0xedd4a  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  24    0xedd4c  4      OPC=1156  
  xorl %esi, %esi                                                             #  25    0xedd50  2      OPC=3758  
  subl $0xc, %eax                                                             #  26    0xedd52  3      OPC=2384  
  movl %eax, %eax                                                             #  27    0xedd55  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  28    0xedd57  4      OPC=1156  
  addl %ebx, %edi                                                             #  29    0xedd5b  2      OPC=67    
  popq %rbx                                                                   #  30    0xedd5d  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  31    0xedd5e  5      OPC=930   
  nop                                                                         #  32    0xedd63  1      OPC=1343  
  nop                                                                         #  33    0xedd64  1      OPC=1343  
  nop                                                                         #  34    0xedd65  1      OPC=1343  
.L_edd60:                                                                     #        0xedd66  0      OPC=0     
  movl %ebx, %ebx                                                             #  35    0xedd66  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  36    0xedd68  4      OPC=1156  
  subl $0xc, %eax                                                             #  37    0xedd6c  3      OPC=2384  
  movl %eax, %eax                                                             #  38    0xedd6f  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  39    0xedd71  4      OPC=1156  
  addl %ebx, %edi                                                             #  40    0xedd75  2      OPC=67    
  movl %edi, %edi                                                             #  41    0xedd77  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xedd79  5      OPC=1156  
  popq %rbx                                                                   #  43    0xedd7e  1      OPC=1694  
  orl $0x4, %esi                                                              #  44    0xedd7f  3      OPC=1378  
  nop                                                                         #  45    0xedd82  1      OPC=1343  
  nop                                                                         #  46    0xedd83  1      OPC=1343  
  nop                                                                         #  47    0xedd84  1      OPC=1343  
  nop                                                                         #  48    0xedd85  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  49    0xedd86  5      OPC=930   
  nop                                                                         #  50    0xedd8b  1      OPC=1343  
  nop                                                                         #  51    0xedd8c  1      OPC=1343  
  nop                                                                         #  52    0xedd8d  1      OPC=1343  
  nop                                                                         #  53    0xedd8e  1      OPC=1343  
  nop                                                                         #  54    0xedd8f  1      OPC=1343  
  nop                                                                         #  55    0xedd90  1      OPC=1343  
  nop                                                                         #  56    0xedd91  1      OPC=1343  
  nop                                                                         #  57    0xedd92  1      OPC=1343  
  nop                                                                         #  58    0xedd93  1      OPC=1343  
  nop                                                                         #  59    0xedd94  1      OPC=1343  
  nop                                                                         #  60    0xedd95  1      OPC=1343  
  nop                                                                         #  61    0xedd96  1      OPC=1343  
  nop                                                                         #  62    0xedd97  1      OPC=1343  
  nop                                                                         #  63    0xedd98  1      OPC=1343  
  nop                                                                         #  64    0xedd99  1      OPC=1343  
  nop                                                                         #  65    0xedd9a  1      OPC=1343  
  nop                                                                         #  66    0xedd9b  1      OPC=1343  
  nop                                                                         #  67    0xedd9c  1      OPC=1343  
  nop                                                                         #  68    0xedd9d  1      OPC=1343  
  nop                                                                         #  69    0xedd9e  1      OPC=1343  
  nop                                                                         #  70    0xedd9f  1      OPC=1343  
  nop                                                                         #  71    0xedda0  1      OPC=1343  
  nop                                                                         #  72    0xedda1  1      OPC=1343  
  nop                                                                         #  73    0xedda2  1      OPC=1343  
  nop                                                                         #  74    0xedda3  1      OPC=1343  
  nop                                                                         #  75    0xedda4  1      OPC=1343  
  nop                                                                         #  76    0xedda5  1      OPC=1343  
                                                                                                                 
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

