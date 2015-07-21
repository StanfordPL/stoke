  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12db20
#! rip-offset  0xedb20
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:        #        0xedb20  0      OPC=0     
  movl %esi, %esi                                                             #  1     0xedb20  2      OPC=1157  
  pushq %rbx                                                                  #  2     0xedb22  1      OPC=1861  
  movl %edi, %ebx                                                             #  3     0xedb23  2      OPC=1157  
  movl %esi, %esi                                                             #  4     0xedb25  2      OPC=1157  
  movl (%r15,%rsi,1), %esi                                                    #  5     0xedb27  4      OPC=1156  
  leal 0xc(%rbx), %edi                                                        #  6     0xedb2b  3      OPC=1066  
  nop                                                                         #  7     0xedb2e  1      OPC=1343  
  nop                                                                         #  8     0xedb2f  1      OPC=1343  
  nop                                                                         #  9     0xedb30  1      OPC=1343  
  nop                                                                         #  10    0xedb31  1      OPC=1343  
  nop                                                                         #  11    0xedb32  1      OPC=1343  
  nop                                                                         #  12    0xedb33  1      OPC=1343  
  nop                                                                         #  13    0xedb34  1      OPC=1343  
  nop                                                                         #  14    0xedb35  1      OPC=1343  
  nop                                                                         #  15    0xedb36  1      OPC=1343  
  nop                                                                         #  16    0xedb37  1      OPC=1343  
  nop                                                                         #  17    0xedb38  1      OPC=1343  
  nop                                                                         #  18    0xedb39  1      OPC=1343  
  nop                                                                         #  19    0xedb3a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  20    0xedb3b  5      OPC=260   
  testl %eax, %eax                                                            #  21    0xedb40  2      OPC=2436  
  je .L_edb60                                                                 #  22    0xedb42  6      OPC=893   
  nop                                                                         #  23    0xedb48  1      OPC=1343  
  nop                                                                         #  24    0xedb49  1      OPC=1343  
  movl %ebx, %ebx                                                             #  25    0xedb4a  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  26    0xedb4c  4      OPC=1156  
  xorl %esi, %esi                                                             #  27    0xedb50  2      OPC=3758  
  subl $0xc, %eax                                                             #  28    0xedb52  3      OPC=2384  
  movl %eax, %eax                                                             #  29    0xedb55  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  30    0xedb57  4      OPC=1156  
  addl %ebx, %edi                                                             #  31    0xedb5b  2      OPC=67    
  popq %rbx                                                                   #  32    0xedb5d  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  33    0xedb5e  5      OPC=930   
  nop                                                                         #  34    0xedb63  1      OPC=1343  
  nop                                                                         #  35    0xedb64  1      OPC=1343  
  nop                                                                         #  36    0xedb65  1      OPC=1343  
.L_edb60:                                                                     #        0xedb66  0      OPC=0     
  movl %ebx, %ebx                                                             #  37    0xedb66  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  38    0xedb68  4      OPC=1156  
  subl $0xc, %eax                                                             #  39    0xedb6c  3      OPC=2384  
  movl %eax, %eax                                                             #  40    0xedb6f  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  41    0xedb71  4      OPC=1156  
  addl %ebx, %edi                                                             #  42    0xedb75  2      OPC=67    
  movl %edi, %edi                                                             #  43    0xedb77  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xedb79  5      OPC=1156  
  popq %rbx                                                                   #  45    0xedb7e  1      OPC=1694  
  orl $0x4, %esi                                                              #  46    0xedb7f  3      OPC=1378  
  nop                                                                         #  47    0xedb82  1      OPC=1343  
  nop                                                                         #  48    0xedb83  1      OPC=1343  
  nop                                                                         #  49    0xedb84  1      OPC=1343  
  nop                                                                         #  50    0xedb85  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  51    0xedb86  5      OPC=930   
  nop                                                                         #  52    0xedb8b  1      OPC=1343  
  nop                                                                         #  53    0xedb8c  1      OPC=1343  
  nop                                                                         #  54    0xedb8d  1      OPC=1343  
  nop                                                                         #  55    0xedb8e  1      OPC=1343  
  nop                                                                         #  56    0xedb8f  1      OPC=1343  
  nop                                                                         #  57    0xedb90  1      OPC=1343  
  nop                                                                         #  58    0xedb91  1      OPC=1343  
  nop                                                                         #  59    0xedb92  1      OPC=1343  
  nop                                                                         #  60    0xedb93  1      OPC=1343  
  nop                                                                         #  61    0xedb94  1      OPC=1343  
  nop                                                                         #  62    0xedb95  1      OPC=1343  
  nop                                                                         #  63    0xedb96  1      OPC=1343  
  nop                                                                         #  64    0xedb97  1      OPC=1343  
  nop                                                                         #  65    0xedb98  1      OPC=1343  
  nop                                                                         #  66    0xedb99  1      OPC=1343  
  nop                                                                         #  67    0xedb9a  1      OPC=1343  
  nop                                                                         #  68    0xedb9b  1      OPC=1343  
  nop                                                                         #  69    0xedb9c  1      OPC=1343  
  nop                                                                         #  70    0xedb9d  1      OPC=1343  
  nop                                                                         #  71    0xedb9e  1      OPC=1343  
  nop                                                                         #  72    0xedb9f  1      OPC=1343  
  nop                                                                         #  73    0xedba0  1      OPC=1343  
  nop                                                                         #  74    0xedba1  1      OPC=1343  
  nop                                                                         #  75    0xedba2  1      OPC=1343  
  nop                                                                         #  76    0xedba3  1      OPC=1343  
  nop                                                                         #  77    0xedba4  1      OPC=1343  
  nop                                                                         #  78    0xedba5  1      OPC=1343  
                                                                                                                 
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

