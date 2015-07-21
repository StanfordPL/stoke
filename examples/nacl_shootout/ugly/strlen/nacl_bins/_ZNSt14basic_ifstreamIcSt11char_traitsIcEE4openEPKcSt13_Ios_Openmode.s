  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12dda0
#! rip-offset  0xedda0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:        #        0xedda0  0      OPC=0     
  pushq %rbx                                                                  #  1     0xedda0  1      OPC=1861  
  movl %edi, %ebx                                                             #  2     0xedda1  2      OPC=1157  
  orl $0x8, %edx                                                              #  3     0xedda3  3      OPC=1378  
  leal 0x8(%rbx), %edi                                                        #  4     0xedda6  3      OPC=1066  
  movl %esi, %esi                                                             #  5     0xedda9  2      OPC=1157  
  nop                                                                         #  6     0xeddab  1      OPC=1343  
  nop                                                                         #  7     0xeddac  1      OPC=1343  
  nop                                                                         #  8     0xeddad  1      OPC=1343  
  nop                                                                         #  9     0xeddae  1      OPC=1343  
  nop                                                                         #  10    0xeddaf  1      OPC=1343  
  nop                                                                         #  11    0xeddb0  1      OPC=1343  
  nop                                                                         #  12    0xeddb1  1      OPC=1343  
  nop                                                                         #  13    0xeddb2  1      OPC=1343  
  nop                                                                         #  14    0xeddb3  1      OPC=1343  
  nop                                                                         #  15    0xeddb4  1      OPC=1343  
  nop                                                                         #  16    0xeddb5  1      OPC=1343  
  nop                                                                         #  17    0xeddb6  1      OPC=1343  
  nop                                                                         #  18    0xeddb7  1      OPC=1343  
  nop                                                                         #  19    0xeddb8  1      OPC=1343  
  nop                                                                         #  20    0xeddb9  1      OPC=1343  
  nop                                                                         #  21    0xeddba  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  22    0xeddbb  5      OPC=260   
  testl %eax, %eax                                                            #  23    0xeddc0  2      OPC=2436  
  je .L_edde0                                                                 #  24    0xeddc2  6      OPC=893   
  nop                                                                         #  25    0xeddc8  1      OPC=1343  
  nop                                                                         #  26    0xeddc9  1      OPC=1343  
  movl %ebx, %ebx                                                             #  27    0xeddca  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  28    0xeddcc  4      OPC=1156  
  xorl %esi, %esi                                                             #  29    0xeddd0  2      OPC=3758  
  subl $0xc, %eax                                                             #  30    0xeddd2  3      OPC=2384  
  movl %eax, %eax                                                             #  31    0xeddd5  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  32    0xeddd7  4      OPC=1156  
  addl %ebx, %edi                                                             #  33    0xedddb  2      OPC=67    
  popq %rbx                                                                   #  34    0xedddd  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  35    0xeddde  5      OPC=930   
  nop                                                                         #  36    0xedde3  1      OPC=1343  
  nop                                                                         #  37    0xedde4  1      OPC=1343  
  nop                                                                         #  38    0xedde5  1      OPC=1343  
.L_edde0:                                                                     #        0xedde6  0      OPC=0     
  movl %ebx, %ebx                                                             #  39    0xedde6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  40    0xedde8  4      OPC=1156  
  subl $0xc, %eax                                                             #  41    0xeddec  3      OPC=2384  
  movl %eax, %eax                                                             #  42    0xeddef  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  43    0xeddf1  4      OPC=1156  
  addl %ebx, %edi                                                             #  44    0xeddf5  2      OPC=67    
  movl %edi, %edi                                                             #  45    0xeddf7  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xeddf9  5      OPC=1156  
  popq %rbx                                                                   #  47    0xeddfe  1      OPC=1694  
  orl $0x4, %esi                                                              #  48    0xeddff  3      OPC=1378  
  nop                                                                         #  49    0xede02  1      OPC=1343  
  nop                                                                         #  50    0xede03  1      OPC=1343  
  nop                                                                         #  51    0xede04  1      OPC=1343  
  nop                                                                         #  52    0xede05  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  53    0xede06  5      OPC=930   
  nop                                                                         #  54    0xede0b  1      OPC=1343  
  nop                                                                         #  55    0xede0c  1      OPC=1343  
  nop                                                                         #  56    0xede0d  1      OPC=1343  
  nop                                                                         #  57    0xede0e  1      OPC=1343  
  nop                                                                         #  58    0xede0f  1      OPC=1343  
  nop                                                                         #  59    0xede10  1      OPC=1343  
  nop                                                                         #  60    0xede11  1      OPC=1343  
  nop                                                                         #  61    0xede12  1      OPC=1343  
  nop                                                                         #  62    0xede13  1      OPC=1343  
  nop                                                                         #  63    0xede14  1      OPC=1343  
  nop                                                                         #  64    0xede15  1      OPC=1343  
  nop                                                                         #  65    0xede16  1      OPC=1343  
  nop                                                                         #  66    0xede17  1      OPC=1343  
  nop                                                                         #  67    0xede18  1      OPC=1343  
  nop                                                                         #  68    0xede19  1      OPC=1343  
  nop                                                                         #  69    0xede1a  1      OPC=1343  
  nop                                                                         #  70    0xede1b  1      OPC=1343  
  nop                                                                         #  71    0xede1c  1      OPC=1343  
  nop                                                                         #  72    0xede1d  1      OPC=1343  
  nop                                                                         #  73    0xede1e  1      OPC=1343  
  nop                                                                         #  74    0xede1f  1      OPC=1343  
  nop                                                                         #  75    0xede20  1      OPC=1343  
  nop                                                                         #  76    0xede21  1      OPC=1343  
  nop                                                                         #  77    0xede22  1      OPC=1343  
  nop                                                                         #  78    0xede23  1      OPC=1343  
  nop                                                                         #  79    0xede24  1      OPC=1343  
  nop                                                                         #  80    0xede25  1      OPC=1343  
                                                                                                                 
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

