  .text
  .globl _ZNSt13runtime_errorC2ERKSs
  .type _ZNSt13runtime_errorC2ERKSs, @function

#! file-offset 0x128a40
#! rip-offset  0xe8a40
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt13runtime_errorC2ERKSs:      #        0xe8a40  0      OPC=0     
  pushq %rbx                       #  1     0xe8a40  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xe8a41  2      OPC=1157  
  movl %esi, %esi                  #  3     0xe8a43  2      OPC=1157  
  leal 0x4(%rbx), %edi             #  4     0xe8a45  3      OPC=1066  
  subl $0x10, %esp                 #  5     0xe8a48  3      OPC=2384  
  addq %r15, %rsp                  #  6     0xe8a4b  3      OPC=72    
  movl %ebx, %ebx                  #  7     0xe8a4e  2      OPC=1157  
  movl $0x1003db08, (%r15,%rbx,1)  #  8     0xe8a50  8      OPC=1135  
  nop                              #  9     0xe8a58  1      OPC=1343  
  nop                              #  10    0xe8a59  1      OPC=1343  
  nop                              #  11    0xe8a5a  1      OPC=1343  
  callq ._ZNSsC1ERKSs              #  12    0xe8a5b  5      OPC=260   
  addl $0x10, %esp                 #  13    0xe8a60  3      OPC=65    
  addq %r15, %rsp                  #  14    0xe8a63  3      OPC=72    
  popq %rbx                        #  15    0xe8a66  1      OPC=1694  
  popq %r11                        #  16    0xe8a67  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  17    0xe8a69  7      OPC=131   
  nop                              #  18    0xe8a70  1      OPC=1343  
  nop                              #  19    0xe8a71  1      OPC=1343  
  nop                              #  20    0xe8a72  1      OPC=1343  
  nop                              #  21    0xe8a73  1      OPC=1343  
  addq %r15, %r11                  #  22    0xe8a74  3      OPC=72    
  jmpq %r11                        #  23    0xe8a77  3      OPC=928   
  nop                              #  24    0xe8a7a  1      OPC=1343  
  nop                              #  25    0xe8a7b  1      OPC=1343  
  nop                              #  26    0xe8a7c  1      OPC=1343  
  nop                              #  27    0xe8a7d  1      OPC=1343  
  nop                              #  28    0xe8a7e  1      OPC=1343  
  nop                              #  29    0xe8a7f  1      OPC=1343  
  nop                              #  30    0xe8a80  1      OPC=1343  
  nop                              #  31    0xe8a81  1      OPC=1343  
  nop                              #  32    0xe8a82  1      OPC=1343  
  nop                              #  33    0xe8a83  1      OPC=1343  
  nop                              #  34    0xe8a84  1      OPC=1343  
  nop                              #  35    0xe8a85  1      OPC=1343  
  nop                              #  36    0xe8a86  1      OPC=1343  
  movl %ebx, %edi                  #  37    0xe8a87  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  38    0xe8a89  4      OPC=1136  
  nop                              #  39    0xe8a8d  1      OPC=1343  
  nop                              #  40    0xe8a8e  1      OPC=1343  
  nop                              #  41    0xe8a8f  1      OPC=1343  
  nop                              #  42    0xe8a90  1      OPC=1343  
  nop                              #  43    0xe8a91  1      OPC=1343  
  nop                              #  44    0xe8a92  1      OPC=1343  
  nop                              #  45    0xe8a93  1      OPC=1343  
  nop                              #  46    0xe8a94  1      OPC=1343  
  nop                              #  47    0xe8a95  1      OPC=1343  
  nop                              #  48    0xe8a96  1      OPC=1343  
  nop                              #  49    0xe8a97  1      OPC=1343  
  nop                              #  50    0xe8a98  1      OPC=1343  
  nop                              #  51    0xe8a99  1      OPC=1343  
  nop                              #  52    0xe8a9a  1      OPC=1343  
  nop                              #  53    0xe8a9b  1      OPC=1343  
  nop                              #  54    0xe8a9c  1      OPC=1343  
  nop                              #  55    0xe8a9d  1      OPC=1343  
  nop                              #  56    0xe8a9e  1      OPC=1343  
  nop                              #  57    0xe8a9f  1      OPC=1343  
  nop                              #  58    0xe8aa0  1      OPC=1343  
  nop                              #  59    0xe8aa1  1      OPC=1343  
  callq ._ZNSt9exceptionD2Ev       #  60    0xe8aa2  5      OPC=260   
  movl 0x8(%rsp), %eax             #  61    0xe8aa7  4      OPC=1156  
  movl %eax, %edi                  #  62    0xe8aab  2      OPC=1157  
  nop                              #  63    0xe8aad  1      OPC=1343  
  nop                              #  64    0xe8aae  1      OPC=1343  
  nop                              #  65    0xe8aaf  1      OPC=1343  
  nop                              #  66    0xe8ab0  1      OPC=1343  
  nop                              #  67    0xe8ab1  1      OPC=1343  
  nop                              #  68    0xe8ab2  1      OPC=1343  
  nop                              #  69    0xe8ab3  1      OPC=1343  
  nop                              #  70    0xe8ab4  1      OPC=1343  
  nop                              #  71    0xe8ab5  1      OPC=1343  
  nop                              #  72    0xe8ab6  1      OPC=1343  
  nop                              #  73    0xe8ab7  1      OPC=1343  
  nop                              #  74    0xe8ab8  1      OPC=1343  
  nop                              #  75    0xe8ab9  1      OPC=1343  
  nop                              #  76    0xe8aba  1      OPC=1343  
  nop                              #  77    0xe8abb  1      OPC=1343  
  nop                              #  78    0xe8abc  1      OPC=1343  
  nop                              #  79    0xe8abd  1      OPC=1343  
  nop                              #  80    0xe8abe  1      OPC=1343  
  nop                              #  81    0xe8abf  1      OPC=1343  
  nop                              #  82    0xe8ac0  1      OPC=1343  
  nop                              #  83    0xe8ac1  1      OPC=1343  
  callq ._Unwind_Resume            #  84    0xe8ac2  5      OPC=260   
                                                                      
.size _ZNSt13runtime_errorC2ERKSs, .-_ZNSt13runtime_errorC2ERKSs

