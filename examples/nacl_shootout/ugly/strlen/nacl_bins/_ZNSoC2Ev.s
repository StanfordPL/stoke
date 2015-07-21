  .text
  .globl _ZNSoC2Ev
  .type _ZNSoC2Ev, @function

#! file-offset 0xdcd20
#! rip-offset  0x9cd20
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode    
._ZNSoC2Ev:                                                                    #        0x9cd20  0      OPC=0     
  movl %esi, %esi                                                              #  1     0x9cd20  2      OPC=1157  
  subl $0x8, %esp                                                              #  2     0x9cd22  3      OPC=2384  
  addq %r15, %rsp                                                              #  3     0x9cd25  3      OPC=72    
  movl %edi, %edi                                                              #  4     0x9cd28  2      OPC=1157  
  movl %esi, %esi                                                              #  5     0x9cd2a  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                                                     #  6     0x9cd2c  4      OPC=1156  
  movl %esi, %esi                                                              #  7     0x9cd30  2      OPC=1157  
  movl 0x4(%r15,%rsi,1), %edx                                                  #  8     0x9cd32  5      OPC=1156  
  xorl %esi, %esi                                                              #  9     0x9cd37  2      OPC=3758  
  movl %edi, %edi                                                              #  10    0x9cd39  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                                                     #  11    0x9cd3b  4      OPC=1136  
  nop                                                                          #  12    0x9cd3f  1      OPC=1343  
  subl $0xc, %eax                                                              #  13    0x9cd40  3      OPC=2384  
  movl %eax, %eax                                                              #  14    0x9cd43  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                                     #  15    0x9cd45  4      OPC=1156  
  addl %edi, %eax                                                              #  16    0x9cd49  2      OPC=67    
  movl %eax, %eax                                                              #  17    0x9cd4b  2      OPC=1157  
  movl %edx, (%r15,%rax,1)                                                     #  18    0x9cd4d  4      OPC=1136  
  movl %edi, %edi                                                              #  19    0x9cd51  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9cd53  4      OPC=1156  
  subl $0xc, %eax                                                              #  21    0x9cd57  3      OPC=2384  
  movl %eax, %eax                                                              #  22    0x9cd5a  2      OPC=1157  
  addl (%r15,%rax,1), %edi                                                     #  23    0x9cd5c  4      OPC=66    
  nop                                                                          #  24    0x9cd60  1      OPC=1343  
  nop                                                                          #  25    0x9cd61  1      OPC=1343  
  nop                                                                          #  26    0x9cd62  1      OPC=1343  
  nop                                                                          #  27    0x9cd63  1      OPC=1343  
  nop                                                                          #  28    0x9cd64  1      OPC=1343  
  nop                                                                          #  29    0x9cd65  1      OPC=1343  
  nop                                                                          #  30    0x9cd66  1      OPC=1343  
  nop                                                                          #  31    0x9cd67  1      OPC=1343  
  nop                                                                          #  32    0x9cd68  1      OPC=1343  
  nop                                                                          #  33    0x9cd69  1      OPC=1343  
  nop                                                                          #  34    0x9cd6a  1      OPC=1343  
  nop                                                                          #  35    0x9cd6b  1      OPC=1343  
  nop                                                                          #  36    0x9cd6c  1      OPC=1343  
  nop                                                                          #  37    0x9cd6d  1      OPC=1343  
  nop                                                                          #  38    0x9cd6e  1      OPC=1343  
  nop                                                                          #  39    0x9cd6f  1      OPC=1343  
  nop                                                                          #  40    0x9cd70  1      OPC=1343  
  nop                                                                          #  41    0x9cd71  1      OPC=1343  
  nop                                                                          #  42    0x9cd72  1      OPC=1343  
  nop                                                                          #  43    0x9cd73  1      OPC=1343  
  nop                                                                          #  44    0x9cd74  1      OPC=1343  
  nop                                                                          #  45    0x9cd75  1      OPC=1343  
  nop                                                                          #  46    0x9cd76  1      OPC=1343  
  nop                                                                          #  47    0x9cd77  1      OPC=1343  
  nop                                                                          #  48    0x9cd78  1      OPC=1343  
  nop                                                                          #  49    0x9cd79  1      OPC=1343  
  nop                                                                          #  50    0x9cd7a  1      OPC=1343  
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  51    0x9cd7b  5      OPC=260   
  addl $0x8, %esp                                                              #  52    0x9cd80  3      OPC=65    
  addq %r15, %rsp                                                              #  53    0x9cd83  3      OPC=72    
  popq %r11                                                                    #  54    0x9cd86  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                      #  55    0x9cd88  7      OPC=131   
  nop                                                                          #  56    0x9cd8f  1      OPC=1343  
  nop                                                                          #  57    0x9cd90  1      OPC=1343  
  nop                                                                          #  58    0x9cd91  1      OPC=1343  
  nop                                                                          #  59    0x9cd92  1      OPC=1343  
  addq %r15, %r11                                                              #  60    0x9cd93  3      OPC=72    
  jmpq %r11                                                                    #  61    0x9cd96  3      OPC=928   
  nop                                                                          #  62    0x9cd99  1      OPC=1343  
  nop                                                                          #  63    0x9cd9a  1      OPC=1343  
  nop                                                                          #  64    0x9cd9b  1      OPC=1343  
  nop                                                                          #  65    0x9cd9c  1      OPC=1343  
  nop                                                                          #  66    0x9cd9d  1      OPC=1343  
  nop                                                                          #  67    0x9cd9e  1      OPC=1343  
  nop                                                                          #  68    0x9cd9f  1      OPC=1343  
  nop                                                                          #  69    0x9cda0  1      OPC=1343  
  nop                                                                          #  70    0x9cda1  1      OPC=1343  
  nop                                                                          #  71    0x9cda2  1      OPC=1343  
  nop                                                                          #  72    0x9cda3  1      OPC=1343  
  nop                                                                          #  73    0x9cda4  1      OPC=1343  
  nop                                                                          #  74    0x9cda5  1      OPC=1343  
  nop                                                                          #  75    0x9cda6  1      OPC=1343  
  movl %eax, %edi                                                              #  76    0x9cda7  2      OPC=1157  
  nop                                                                          #  77    0x9cda9  1      OPC=1343  
  nop                                                                          #  78    0x9cdaa  1      OPC=1343  
  nop                                                                          #  79    0x9cdab  1      OPC=1343  
  nop                                                                          #  80    0x9cdac  1      OPC=1343  
  nop                                                                          #  81    0x9cdad  1      OPC=1343  
  nop                                                                          #  82    0x9cdae  1      OPC=1343  
  nop                                                                          #  83    0x9cdaf  1      OPC=1343  
  nop                                                                          #  84    0x9cdb0  1      OPC=1343  
  nop                                                                          #  85    0x9cdb1  1      OPC=1343  
  nop                                                                          #  86    0x9cdb2  1      OPC=1343  
  nop                                                                          #  87    0x9cdb3  1      OPC=1343  
  nop                                                                          #  88    0x9cdb4  1      OPC=1343  
  nop                                                                          #  89    0x9cdb5  1      OPC=1343  
  nop                                                                          #  90    0x9cdb6  1      OPC=1343  
  nop                                                                          #  91    0x9cdb7  1      OPC=1343  
  nop                                                                          #  92    0x9cdb8  1      OPC=1343  
  nop                                                                          #  93    0x9cdb9  1      OPC=1343  
  nop                                                                          #  94    0x9cdba  1      OPC=1343  
  nop                                                                          #  95    0x9cdbb  1      OPC=1343  
  nop                                                                          #  96    0x9cdbc  1      OPC=1343  
  nop                                                                          #  97    0x9cdbd  1      OPC=1343  
  nop                                                                          #  98    0x9cdbe  1      OPC=1343  
  nop                                                                          #  99    0x9cdbf  1      OPC=1343  
  nop                                                                          #  100   0x9cdc0  1      OPC=1343  
  nop                                                                          #  101   0x9cdc1  1      OPC=1343  
  callq ._Unwind_Resume                                                        #  102   0x9cdc2  5      OPC=260   
                                                                                                                  
.size _ZNSoC2Ev, .-_ZNSoC2Ev

