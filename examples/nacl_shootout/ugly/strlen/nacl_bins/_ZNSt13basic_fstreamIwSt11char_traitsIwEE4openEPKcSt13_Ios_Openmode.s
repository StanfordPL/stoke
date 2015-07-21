  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x132ae0
#! rip-offset  0xf2ae0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:         #        0xf2ae0  0      OPC=0     
  pushq %rbx                                                                  #  1     0xf2ae0  1      OPC=1861  
  movl %edi, %ebx                                                             #  2     0xf2ae1  2      OPC=1157  
  movl %esi, %esi                                                             #  3     0xf2ae3  2      OPC=1157  
  leal 0xc(%rbx), %edi                                                        #  4     0xf2ae5  3      OPC=1066  
  nop                                                                         #  5     0xf2ae8  1      OPC=1343  
  nop                                                                         #  6     0xf2ae9  1      OPC=1343  
  nop                                                                         #  7     0xf2aea  1      OPC=1343  
  nop                                                                         #  8     0xf2aeb  1      OPC=1343  
  nop                                                                         #  9     0xf2aec  1      OPC=1343  
  nop                                                                         #  10    0xf2aed  1      OPC=1343  
  nop                                                                         #  11    0xf2aee  1      OPC=1343  
  nop                                                                         #  12    0xf2aef  1      OPC=1343  
  nop                                                                         #  13    0xf2af0  1      OPC=1343  
  nop                                                                         #  14    0xf2af1  1      OPC=1343  
  nop                                                                         #  15    0xf2af2  1      OPC=1343  
  nop                                                                         #  16    0xf2af3  1      OPC=1343  
  nop                                                                         #  17    0xf2af4  1      OPC=1343  
  nop                                                                         #  18    0xf2af5  1      OPC=1343  
  nop                                                                         #  19    0xf2af6  1      OPC=1343  
  nop                                                                         #  20    0xf2af7  1      OPC=1343  
  nop                                                                         #  21    0xf2af8  1      OPC=1343  
  nop                                                                         #  22    0xf2af9  1      OPC=1343  
  nop                                                                         #  23    0xf2afa  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  24    0xf2afb  5      OPC=260   
  testl %eax, %eax                                                            #  25    0xf2b00  2      OPC=2436  
  je .L_f2b20                                                                 #  26    0xf2b02  6      OPC=893   
  nop                                                                         #  27    0xf2b08  1      OPC=1343  
  nop                                                                         #  28    0xf2b09  1      OPC=1343  
  movl %ebx, %ebx                                                             #  29    0xf2b0a  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  30    0xf2b0c  4      OPC=1156  
  xorl %esi, %esi                                                             #  31    0xf2b10  2      OPC=3758  
  subl $0xc, %eax                                                             #  32    0xf2b12  3      OPC=2384  
  movl %eax, %eax                                                             #  33    0xf2b15  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  34    0xf2b17  4      OPC=1156  
  addl %ebx, %edi                                                             #  35    0xf2b1b  2      OPC=67    
  popq %rbx                                                                   #  36    0xf2b1d  1      OPC=1694  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  37    0xf2b1e  5      OPC=930   
  nop                                                                         #  38    0xf2b23  1      OPC=1343  
  nop                                                                         #  39    0xf2b24  1      OPC=1343  
  nop                                                                         #  40    0xf2b25  1      OPC=1343  
.L_f2b20:                                                                     #        0xf2b26  0      OPC=0     
  movl %ebx, %ebx                                                             #  41    0xf2b26  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                    #  42    0xf2b28  4      OPC=1156  
  subl $0xc, %eax                                                             #  43    0xf2b2c  3      OPC=2384  
  movl %eax, %eax                                                             #  44    0xf2b2f  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                                    #  45    0xf2b31  4      OPC=1156  
  addl %ebx, %edi                                                             #  46    0xf2b35  2      OPC=67    
  movl %edi, %edi                                                             #  47    0xf2b37  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                                #  48    0xf2b39  5      OPC=1156  
  popq %rbx                                                                   #  49    0xf2b3e  1      OPC=1694  
  orl $0x4, %esi                                                              #  50    0xf2b3f  3      OPC=1378  
  nop                                                                         #  51    0xf2b42  1      OPC=1343  
  nop                                                                         #  52    0xf2b43  1      OPC=1343  
  nop                                                                         #  53    0xf2b44  1      OPC=1343  
  nop                                                                         #  54    0xf2b45  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  55    0xf2b46  5      OPC=930   
  nop                                                                         #  56    0xf2b4b  1      OPC=1343  
  nop                                                                         #  57    0xf2b4c  1      OPC=1343  
  nop                                                                         #  58    0xf2b4d  1      OPC=1343  
  nop                                                                         #  59    0xf2b4e  1      OPC=1343  
  nop                                                                         #  60    0xf2b4f  1      OPC=1343  
  nop                                                                         #  61    0xf2b50  1      OPC=1343  
  nop                                                                         #  62    0xf2b51  1      OPC=1343  
  nop                                                                         #  63    0xf2b52  1      OPC=1343  
  nop                                                                         #  64    0xf2b53  1      OPC=1343  
  nop                                                                         #  65    0xf2b54  1      OPC=1343  
  nop                                                                         #  66    0xf2b55  1      OPC=1343  
  nop                                                                         #  67    0xf2b56  1      OPC=1343  
  nop                                                                         #  68    0xf2b57  1      OPC=1343  
  nop                                                                         #  69    0xf2b58  1      OPC=1343  
  nop                                                                         #  70    0xf2b59  1      OPC=1343  
  nop                                                                         #  71    0xf2b5a  1      OPC=1343  
  nop                                                                         #  72    0xf2b5b  1      OPC=1343  
  nop                                                                         #  73    0xf2b5c  1      OPC=1343  
  nop                                                                         #  74    0xf2b5d  1      OPC=1343  
  nop                                                                         #  75    0xf2b5e  1      OPC=1343  
  nop                                                                         #  76    0xf2b5f  1      OPC=1343  
  nop                                                                         #  77    0xf2b60  1      OPC=1343  
  nop                                                                         #  78    0xf2b61  1      OPC=1343  
  nop                                                                         #  79    0xf2b62  1      OPC=1343  
  nop                                                                         #  80    0xf2b63  1      OPC=1343  
  nop                                                                         #  81    0xf2b64  1      OPC=1343  
  nop                                                                         #  82    0xf2b65  1      OPC=1343  
                                                                                                                 
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

