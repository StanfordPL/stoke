  .text
  .globl _ZNSo8_M_writeEPKci
  .type _ZNSo8_M_writeEPKci, @function

#! file-offset 0xdd0c0
#! rip-offset  0x9d0c0
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZNSo8_M_writeEPKci:                                                #        0x9d0c0  0      OPC=0     
  pushq %r12                                                         #  1     0x9d0c0  2      OPC=1861  
  movl %edx, %r12d                                                   #  2     0x9d0c2  3      OPC=1157  
  movl %esi, %esi                                                    #  3     0x9d0c5  2      OPC=1157  
  pushq %rbx                                                         #  4     0x9d0c7  1      OPC=1861  
  movl %edi, %ebx                                                    #  5     0x9d0c8  2      OPC=1157  
  subl $0x8, %esp                                                    #  6     0x9d0ca  3      OPC=2384  
  addq %r15, %rsp                                                    #  7     0x9d0cd  3      OPC=72    
  movl %ebx, %ebx                                                    #  8     0x9d0d0  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  9     0x9d0d2  4      OPC=1156  
  subl $0xc, %eax                                                    #  10    0x9d0d6  3      OPC=2384  
  movl %eax, %eax                                                    #  11    0x9d0d9  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                           #  12    0x9d0db  4      OPC=1156  
  nop                                                                #  13    0x9d0df  1      OPC=1343  
  addl %ebx, %eax                                                    #  14    0x9d0e0  2      OPC=67    
  movl %eax, %eax                                                    #  15    0x9d0e2  2      OPC=1157  
  movl 0x78(%r15,%rax,1), %edi                                       #  16    0x9d0e4  5      OPC=1156  
  movl %edi, %edi                                                    #  17    0x9d0e9  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                           #  18    0x9d0eb  4      OPC=1156  
  movl %eax, %eax                                                    #  19    0x9d0ef  2      OPC=1157  
  movl 0x30(%r15,%rax,1), %eax                                       #  20    0x9d0f1  5      OPC=1156  
  xchgw %ax, %ax                                                     #  21    0x9d0f6  2      OPC=3700  
  andl $0xffffffe0, %eax                                             #  22    0x9d0f8  6      OPC=131   
  nop                                                                #  23    0x9d0fe  1      OPC=1343  
  nop                                                                #  24    0x9d0ff  1      OPC=1343  
  nop                                                                #  25    0x9d100  1      OPC=1343  
  addq %r15, %rax                                                    #  26    0x9d101  3      OPC=72    
  callq %rax                                                         #  27    0x9d104  2      OPC=258   
  cmpl %eax, %r12d                                                   #  28    0x9d106  3      OPC=472   
  je .L_9d140                                                        #  29    0x9d109  6      OPC=893   
  nop                                                                #  30    0x9d10f  1      OPC=1343  
  nop                                                                #  31    0x9d110  1      OPC=1343  
  movl %ebx, %ebx                                                    #  32    0x9d111  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  33    0x9d113  4      OPC=1156  
  subl $0xc, %eax                                                    #  34    0x9d117  3      OPC=2384  
  movl %eax, %eax                                                    #  35    0x9d11a  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                           #  36    0x9d11c  4      OPC=1156  
  addl %ebx, %edi                                                    #  37    0x9d120  2      OPC=67    
  movl %edi, %edi                                                    #  38    0x9d122  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                       #  39    0x9d124  5      OPC=1156  
  nop                                                                #  40    0x9d129  1      OPC=1343  
  nop                                                                #  41    0x9d12a  1      OPC=1343  
  nop                                                                #  42    0x9d12b  1      OPC=1343  
  addl $0x8, %esp                                                    #  43    0x9d12c  3      OPC=65    
  addq %r15, %rsp                                                    #  44    0x9d12f  3      OPC=72    
  popq %rbx                                                          #  45    0x9d132  1      OPC=1694  
  popq %r12                                                          #  46    0x9d133  2      OPC=1694  
  orl $0x1, %esi                                                     #  47    0x9d135  3      OPC=1378  
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  48    0x9d138  5      OPC=930   
  nop                                                                #  49    0x9d13d  1      OPC=1343  
  nop                                                                #  50    0x9d13e  1      OPC=1343  
  nop                                                                #  51    0x9d13f  1      OPC=1343  
  nop                                                                #  52    0x9d140  1      OPC=1343  
  nop                                                                #  53    0x9d141  1      OPC=1343  
  nop                                                                #  54    0x9d142  1      OPC=1343  
  nop                                                                #  55    0x9d143  1      OPC=1343  
  nop                                                                #  56    0x9d144  1      OPC=1343  
  nop                                                                #  57    0x9d145  1      OPC=1343  
  nop                                                                #  58    0x9d146  1      OPC=1343  
  nop                                                                #  59    0x9d147  1      OPC=1343  
  nop                                                                #  60    0x9d148  1      OPC=1343  
  nop                                                                #  61    0x9d149  1      OPC=1343  
  nop                                                                #  62    0x9d14a  1      OPC=1343  
  nop                                                                #  63    0x9d14b  1      OPC=1343  
.L_9d140:                                                            #        0x9d14c  0      OPC=0     
  addl $0x8, %esp                                                    #  64    0x9d14c  3      OPC=65    
  addq %r15, %rsp                                                    #  65    0x9d14f  3      OPC=72    
  popq %rbx                                                          #  66    0x9d152  1      OPC=1694  
  popq %r12                                                          #  67    0x9d153  2      OPC=1694  
  popq %r11                                                          #  68    0x9d155  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  69    0x9d157  7      OPC=131   
  nop                                                                #  70    0x9d15e  1      OPC=1343  
  nop                                                                #  71    0x9d15f  1      OPC=1343  
  nop                                                                #  72    0x9d160  1      OPC=1343  
  nop                                                                #  73    0x9d161  1      OPC=1343  
  addq %r15, %r11                                                    #  74    0x9d162  3      OPC=72    
  jmpq %r11                                                          #  75    0x9d165  3      OPC=928   
  nop                                                                #  76    0x9d168  1      OPC=1343  
  nop                                                                #  77    0x9d169  1      OPC=1343  
  nop                                                                #  78    0x9d16a  1      OPC=1343  
  nop                                                                #  79    0x9d16b  1      OPC=1343  
  nop                                                                #  80    0x9d16c  1      OPC=1343  
  nop                                                                #  81    0x9d16d  1      OPC=1343  
  nop                                                                #  82    0x9d16e  1      OPC=1343  
  nop                                                                #  83    0x9d16f  1      OPC=1343  
  nop                                                                #  84    0x9d170  1      OPC=1343  
  nop                                                                #  85    0x9d171  1      OPC=1343  
  nop                                                                #  86    0x9d172  1      OPC=1343  
                                                                                                        
.size _ZNSo8_M_writeEPKci, .-_ZNSo8_M_writeEPKci

