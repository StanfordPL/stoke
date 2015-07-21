  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x132be0
#! rip-offset  0xf2be0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:        #        0xf2be0  0      OPC=0     
  pushq %rbx                                                                  #  1     0xf2be0  1      OPC=1861  
  movl %edi, %ebx                                                             #  2     0xf2be1  2      OPC=1157  
  orl $0x8, %edx                                                              #  3     0xf2be3  3      OPC=1378  
  leal 0x8(%rbx), %edi                                                        #  4     0xf2be6  3      OPC=1066  
  movl %esi, %esi                                                             #  5     0xf2be9  2      OPC=1157  
  nop                                                                         #  6     0xf2beb  1      OPC=1343  
  nop                                                                         #  7     0xf2bec  1      OPC=1343  
  nop                                                                         #  8     0xf2bed  1      OPC=1343  
  nop                                                                         #  9     0xf2bee  1      OPC=1343  
  nop                                                                         #  10    0xf2bef  1      OPC=1343  
  nop                                                                         #  11    0xf2bf0  1      OPC=1343  
  nop                                                                         #  12    0xf2bf1  1      OPC=1343  
  nop                                                                         #  13    0xf2bf2  1      OPC=1343  
  nop                                                                         #  14    0xf2bf3  1      OPC=1343  
  nop                                                                         #  15    0xf2bf4  1      OPC=1343  
  nop                                                                         #  16    0xf2bf5  1      OPC=1343  
  nop                                                                         #  17    0xf2bf6  1      OPC=1343  
  nop                                                                         #  18    0xf2bf7  1      OPC=1343  
  nop                                                                         #  19    0xf2bf8  1      OPC=1343  
  nop                                                                         #  20    0xf2bf9  1      OPC=1343  
  nop                                                                         #  21    0xf2bfa  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  22    0xf2bfb  5      OPC=260   
  testl %eax, %eax                                                            #  23    0xf2c00  2      OPC=2436  
  je .L_f2c20                                                                 #  24    0xf2c02  6      OPC=893   
  nop                                                                         #  25    0xf2c08  1      OPC=1343  
  nop                                                                         #  26    0xf2c09  1      OPC=1343  
  movl %ebx, %ebx                                                             #  27    0xf2c0a  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  28    0xf2c0c  4      OPC=1156  
  xorl %esi, %esi                                                             #  29    0xf2c10  2      OPC=3758  
  subl $0xc, %eax                                                             #  30    0xf2c12  3      OPC=2384  
  movl %eax, %eax                                                             #  31    0xf2c15  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  32    0xf2c17  4      OPC=1156  
  addl %ebx, %edi                                                             #  33    0xf2c1b  2      OPC=67    
  popq %rbx                                                                   #  34    0xf2c1d  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  35    0xf2c1e  5      OPC=930   
  nop                                                                         #  36    0xf2c23  1      OPC=1343  
  nop                                                                         #  37    0xf2c24  1      OPC=1343  
  nop                                                                         #  38    0xf2c25  1      OPC=1343  
.L_f2c20:                                                                     #        0xf2c26  0      OPC=0     
  movl %ebx, %ebx                                                             #  39    0xf2c26  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  40    0xf2c28  4      OPC=1156  
  subl $0xc, %eax                                                             #  41    0xf2c2c  3      OPC=2384  
  movl %eax, %eax                                                             #  42    0xf2c2f  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  43    0xf2c31  4      OPC=1156  
  addl %ebx, %edi                                                             #  44    0xf2c35  2      OPC=67    
  movl %edi, %edi                                                             #  45    0xf2c37  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xf2c39  5      OPC=1156  
  popq %rbx                                                                   #  47    0xf2c3e  1      OPC=1694  
  orl $0x4, %esi                                                              #  48    0xf2c3f  3      OPC=1378  
  nop                                                                         #  49    0xf2c42  1      OPC=1343  
  nop                                                                         #  50    0xf2c43  1      OPC=1343  
  nop                                                                         #  51    0xf2c44  1      OPC=1343  
  nop                                                                         #  52    0xf2c45  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  53    0xf2c46  5      OPC=930   
  nop                                                                         #  54    0xf2c4b  1      OPC=1343  
  nop                                                                         #  55    0xf2c4c  1      OPC=1343  
  nop                                                                         #  56    0xf2c4d  1      OPC=1343  
  nop                                                                         #  57    0xf2c4e  1      OPC=1343  
  nop                                                                         #  58    0xf2c4f  1      OPC=1343  
  nop                                                                         #  59    0xf2c50  1      OPC=1343  
  nop                                                                         #  60    0xf2c51  1      OPC=1343  
  nop                                                                         #  61    0xf2c52  1      OPC=1343  
  nop                                                                         #  62    0xf2c53  1      OPC=1343  
  nop                                                                         #  63    0xf2c54  1      OPC=1343  
  nop                                                                         #  64    0xf2c55  1      OPC=1343  
  nop                                                                         #  65    0xf2c56  1      OPC=1343  
  nop                                                                         #  66    0xf2c57  1      OPC=1343  
  nop                                                                         #  67    0xf2c58  1      OPC=1343  
  nop                                                                         #  68    0xf2c59  1      OPC=1343  
  nop                                                                         #  69    0xf2c5a  1      OPC=1343  
  nop                                                                         #  70    0xf2c5b  1      OPC=1343  
  nop                                                                         #  71    0xf2c5c  1      OPC=1343  
  nop                                                                         #  72    0xf2c5d  1      OPC=1343  
  nop                                                                         #  73    0xf2c5e  1      OPC=1343  
  nop                                                                         #  74    0xf2c5f  1      OPC=1343  
  nop                                                                         #  75    0xf2c60  1      OPC=1343  
  nop                                                                         #  76    0xf2c61  1      OPC=1343  
  nop                                                                         #  77    0xf2c62  1      OPC=1343  
  nop                                                                         #  78    0xf2c63  1      OPC=1343  
  nop                                                                         #  79    0xf2c64  1      OPC=1343  
  nop                                                                         #  80    0xf2c65  1      OPC=1343  
                                                                                                                 
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

