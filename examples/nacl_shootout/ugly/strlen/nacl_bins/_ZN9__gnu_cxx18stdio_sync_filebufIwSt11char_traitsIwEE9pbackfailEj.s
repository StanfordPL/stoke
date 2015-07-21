  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj, @function

#! file-offset 0xdb780
#! rip-offset  0x9b780
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode    
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj:  #        0x9b780  0      OPC=0     
  cmpl $0xffffffff, %esi                                              #  1     0x9b780  6      OPC=469   
  nop                                                                 #  2     0x9b786  1      OPC=1343  
  nop                                                                 #  3     0x9b787  1      OPC=1343  
  nop                                                                 #  4     0x9b788  1      OPC=1343  
  pushq %rbx                                                          #  5     0x9b789  1      OPC=1861  
  movl %esi, %eax                                                     #  6     0x9b78a  2      OPC=1157  
  movl %edi, %ebx                                                     #  7     0x9b78c  2      OPC=1157  
  je .L_9b7c0                                                         #  8     0x9b78e  6      OPC=893   
  nop                                                                 #  9     0x9b794  1      OPC=1343  
  nop                                                                 #  10    0x9b795  1      OPC=1343  
  movl %ebx, %ebx                                                     #  11    0x9b796  2      OPC=1157  
  movl 0x20(%r15,%rbx,1), %esi                                        #  12    0x9b798  5      OPC=1156  
  movl %eax, %edi                                                     #  13    0x9b79d  2      OPC=1157  
  nop                                                                 #  14    0x9b79f  1      OPC=1343  
  nop                                                                 #  15    0x9b7a0  1      OPC=1343  
  nop                                                                 #  16    0x9b7a1  1      OPC=1343  
  nop                                                                 #  17    0x9b7a2  1      OPC=1343  
  nop                                                                 #  18    0x9b7a3  1      OPC=1343  
  nop                                                                 #  19    0x9b7a4  1      OPC=1343  
  nop                                                                 #  20    0x9b7a5  1      OPC=1343  
  nop                                                                 #  21    0x9b7a6  1      OPC=1343  
  callq .ungetwc                                                      #  22    0x9b7a7  5      OPC=260   
.L_9b7a0:                                                             #        0x9b7ac  0      OPC=0     
  movl %ebx, %ebx                                                     #  23    0x9b7ac  2      OPC=1157  
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  24    0x9b7ae  9      OPC=1135  
  popq %rbx                                                           #  25    0x9b7b7  1      OPC=1694  
  popq %r11                                                           #  26    0x9b7b8  2      OPC=1694  
  andl $0xffffffe0, %r11d                                             #  27    0x9b7ba  7      OPC=131   
  nop                                                                 #  28    0x9b7c1  1      OPC=1343  
  nop                                                                 #  29    0x9b7c2  1      OPC=1343  
  nop                                                                 #  30    0x9b7c3  1      OPC=1343  
  nop                                                                 #  31    0x9b7c4  1      OPC=1343  
  addq %r15, %r11                                                     #  32    0x9b7c5  3      OPC=72    
  jmpq %r11                                                           #  33    0x9b7c8  3      OPC=928   
  nop                                                                 #  34    0x9b7cb  1      OPC=1343  
  nop                                                                 #  35    0x9b7cc  1      OPC=1343  
  nop                                                                 #  36    0x9b7cd  1      OPC=1343  
  nop                                                                 #  37    0x9b7ce  1      OPC=1343  
  nop                                                                 #  38    0x9b7cf  1      OPC=1343  
  nop                                                                 #  39    0x9b7d0  1      OPC=1343  
  nop                                                                 #  40    0x9b7d1  1      OPC=1343  
  nop                                                                 #  41    0x9b7d2  1      OPC=1343  
.L_9b7c0:                                                             #        0x9b7d3  0      OPC=0     
  movl %ebx, %ebx                                                     #  42    0x9b7d3  2      OPC=1157  
  movl 0x24(%r15,%rbx,1), %edi                                        #  43    0x9b7d5  5      OPC=1156  
  cmpl $0xffffffff, %edi                                              #  44    0x9b7da  6      OPC=469   
  nop                                                                 #  45    0x9b7e0  1      OPC=1343  
  nop                                                                 #  46    0x9b7e1  1      OPC=1343  
  nop                                                                 #  47    0x9b7e2  1      OPC=1343  
  movl %edi, %eax                                                     #  48    0x9b7e3  2      OPC=1157  
  je .L_9b7a0                                                         #  49    0x9b7e5  6      OPC=893   
  nop                                                                 #  50    0x9b7eb  1      OPC=1343  
  nop                                                                 #  51    0x9b7ec  1      OPC=1343  
  movl %ebx, %ebx                                                     #  52    0x9b7ed  2      OPC=1157  
  movl 0x20(%r15,%rbx,1), %esi                                        #  53    0x9b7ef  5      OPC=1156  
  nop                                                                 #  54    0x9b7f4  1      OPC=1343  
  nop                                                                 #  55    0x9b7f5  1      OPC=1343  
  nop                                                                 #  56    0x9b7f6  1      OPC=1343  
  nop                                                                 #  57    0x9b7f7  1      OPC=1343  
  nop                                                                 #  58    0x9b7f8  1      OPC=1343  
  nop                                                                 #  59    0x9b7f9  1      OPC=1343  
  callq .ungetwc                                                      #  60    0x9b7fa  5      OPC=260   
  movl %ebx, %ebx                                                     #  61    0x9b7ff  2      OPC=1157  
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  62    0x9b801  9      OPC=1135  
  popq %rbx                                                           #  63    0x9b80a  1      OPC=1694  
  popq %r11                                                           #  64    0x9b80b  2      OPC=1694  
  andl $0xffffffe0, %r11d                                             #  65    0x9b80d  7      OPC=131   
  nop                                                                 #  66    0x9b814  1      OPC=1343  
  nop                                                                 #  67    0x9b815  1      OPC=1343  
  nop                                                                 #  68    0x9b816  1      OPC=1343  
  nop                                                                 #  69    0x9b817  1      OPC=1343  
  addq %r15, %r11                                                     #  70    0x9b818  3      OPC=72    
  jmpq %r11                                                           #  71    0x9b81b  3      OPC=928   
  nop                                                                 #  72    0x9b81e  1      OPC=1343  
  nop                                                                 #  73    0x9b81f  1      OPC=1343  
  nop                                                                 #  74    0x9b820  1      OPC=1343  
  nop                                                                 #  75    0x9b821  1      OPC=1343  
  nop                                                                 #  76    0x9b822  1      OPC=1343  
  nop                                                                 #  77    0x9b823  1      OPC=1343  
  nop                                                                 #  78    0x9b824  1      OPC=1343  
  nop                                                                 #  79    0x9b825  1      OPC=1343  
                                                                                                         
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj

