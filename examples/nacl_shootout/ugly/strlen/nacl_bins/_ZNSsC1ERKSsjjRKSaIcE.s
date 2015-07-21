  .text
  .globl _ZNSsC1ERKSsjjRKSaIcE
  .type _ZNSsC1ERKSsjjRKSaIcE, @function

#! file-offset 0xed320
#! rip-offset  0xad320
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC1ERKSsjjRKSaIcE:                                                   #        0xad320  0      OPC=0     
  pushq %rbx                                                              #  1     0xad320  1      OPC=1861  
  movl %esi, %esi                                                         #  2     0xad321  2      OPC=1157  
  movl %edi, %ebx                                                         #  3     0xad323  2      OPC=1157  
  movl %r8d, %r8d                                                         #  4     0xad325  3      OPC=1157  
  subl $0x10, %esp                                                        #  5     0xad328  3      OPC=2384  
  addq %r15, %rsp                                                         #  6     0xad32b  3      OPC=72    
  movl %esi, %esi                                                         #  7     0xad32e  2      OPC=1157  
  movl (%r15,%rsi,1), %edi                                                #  8     0xad330  4      OPC=1156  
  leal -0xc(%rdi), %eax                                                   #  9     0xad334  3      OPC=1066  
  movl %eax, %eax                                                         #  10    0xad337  2      OPC=1157  
  movl (%r15,%rax,1), %esi                                                #  11    0xad339  4      OPC=1156  
  cmpl %esi, %edx                                                         #  12    0xad33d  2      OPC=472   
  nop                                                                     #  13    0xad33f  1      OPC=1343  
  ja .L_ad380                                                             #  14    0xad340  6      OPC=863   
  nop                                                                     #  15    0xad346  1      OPC=1343  
  nop                                                                     #  16    0xad347  1      OPC=1343  
  subl %edx, %esi                                                         #  17    0xad348  2      OPC=2386  
  movb $0x0, (%rsp)                                                       #  18    0xad34a  4      OPC=1140  
  cmpl %ecx, %esi                                                         #  19    0xad34e  2      OPC=472   
  cmoval %ecx, %esi                                                       #  20    0xad350  3      OPC=272   
  addl %edx, %esi                                                         #  21    0xad353  2      OPC=67    
  addl %edi, %esi                                                         #  22    0xad355  2      OPC=67    
  leal (%rdx,%rdi,1), %edi                                                #  23    0xad357  3      OPC=1066  
  movl %r8d, %edx                                                         #  24    0xad35a  3      OPC=1157  
  nop                                                                     #  25    0xad35d  1      OPC=1343  
  nop                                                                     #  26    0xad35e  1      OPC=1343  
  nop                                                                     #  27    0xad35f  1      OPC=1343  
  nop                                                                     #  28    0xad360  1      OPC=1343  
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  29    0xad361  5      OPC=260   
  movl %ebx, %ebx                                                         #  30    0xad366  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  31    0xad368  4      OPC=1136  
  addl $0x10, %esp                                                        #  32    0xad36c  3      OPC=65    
  addq %r15, %rsp                                                         #  33    0xad36f  3      OPC=72    
  popq %rbx                                                               #  34    0xad372  1      OPC=1694  
  popq %r11                                                               #  35    0xad373  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  36    0xad375  7      OPC=131   
  nop                                                                     #  37    0xad37c  1      OPC=1343  
  nop                                                                     #  38    0xad37d  1      OPC=1343  
  nop                                                                     #  39    0xad37e  1      OPC=1343  
  nop                                                                     #  40    0xad37f  1      OPC=1343  
  addq %r15, %r11                                                         #  41    0xad380  3      OPC=72    
  jmpq %r11                                                               #  42    0xad383  3      OPC=928   
  nop                                                                     #  43    0xad386  1      OPC=1343  
  nop                                                                     #  44    0xad387  1      OPC=1343  
  nop                                                                     #  45    0xad388  1      OPC=1343  
  nop                                                                     #  46    0xad389  1      OPC=1343  
  nop                                                                     #  47    0xad38a  1      OPC=1343  
  nop                                                                     #  48    0xad38b  1      OPC=1343  
  nop                                                                     #  49    0xad38c  1      OPC=1343  
.L_ad380:                                                                 #        0xad38d  0      OPC=0     
  movl $0x1003bafb, %edi                                                  #  50    0xad38d  5      OPC=1154  
  nop                                                                     #  51    0xad392  1      OPC=1343  
  nop                                                                     #  52    0xad393  1      OPC=1343  
  nop                                                                     #  53    0xad394  1      OPC=1343  
  nop                                                                     #  54    0xad395  1      OPC=1343  
  nop                                                                     #  55    0xad396  1      OPC=1343  
  nop                                                                     #  56    0xad397  1      OPC=1343  
  nop                                                                     #  57    0xad398  1      OPC=1343  
  nop                                                                     #  58    0xad399  1      OPC=1343  
  nop                                                                     #  59    0xad39a  1      OPC=1343  
  nop                                                                     #  60    0xad39b  1      OPC=1343  
  nop                                                                     #  61    0xad39c  1      OPC=1343  
  nop                                                                     #  62    0xad39d  1      OPC=1343  
  nop                                                                     #  63    0xad39e  1      OPC=1343  
  nop                                                                     #  64    0xad39f  1      OPC=1343  
  nop                                                                     #  65    0xad3a0  1      OPC=1343  
  nop                                                                     #  66    0xad3a1  1      OPC=1343  
  nop                                                                     #  67    0xad3a2  1      OPC=1343  
  nop                                                                     #  68    0xad3a3  1      OPC=1343  
  nop                                                                     #  69    0xad3a4  1      OPC=1343  
  nop                                                                     #  70    0xad3a5  1      OPC=1343  
  nop                                                                     #  71    0xad3a6  1      OPC=1343  
  nop                                                                     #  72    0xad3a7  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc                                    #  73    0xad3a8  5      OPC=260   
                                                                                                             
.size _ZNSsC1ERKSsjjRKSaIcE, .-_ZNSsC1ERKSsjjRKSaIcE

