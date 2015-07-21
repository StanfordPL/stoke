  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi, @function

#! file-offset 0xdba40
#! rip-offset  0x9ba40
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode    
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi:  #        0x9ba40  0      OPC=0     
  cmpl $0xffffffff, %esi                                              #  1     0x9ba40  6      OPC=469   
  nop                                                                 #  2     0x9ba46  1      OPC=1343  
  nop                                                                 #  3     0x9ba47  1      OPC=1343  
  nop                                                                 #  4     0x9ba48  1      OPC=1343  
  pushq %rbx                                                          #  5     0x9ba49  1      OPC=1861  
  movl %esi, %eax                                                     #  6     0x9ba4a  2      OPC=1157  
  movl %edi, %ebx                                                     #  7     0x9ba4c  2      OPC=1157  
  je .L_9ba80                                                         #  8     0x9ba4e  6      OPC=893   
  nop                                                                 #  9     0x9ba54  1      OPC=1343  
  nop                                                                 #  10    0x9ba55  1      OPC=1343  
  movl %ebx, %ebx                                                     #  11    0x9ba56  2      OPC=1157  
  movl 0x20(%r15,%rbx,1), %esi                                        #  12    0x9ba58  5      OPC=1156  
  movl %eax, %edi                                                     #  13    0x9ba5d  2      OPC=1157  
  nop                                                                 #  14    0x9ba5f  1      OPC=1343  
  nop                                                                 #  15    0x9ba60  1      OPC=1343  
  nop                                                                 #  16    0x9ba61  1      OPC=1343  
  nop                                                                 #  17    0x9ba62  1      OPC=1343  
  nop                                                                 #  18    0x9ba63  1      OPC=1343  
  nop                                                                 #  19    0x9ba64  1      OPC=1343  
  nop                                                                 #  20    0x9ba65  1      OPC=1343  
  nop                                                                 #  21    0x9ba66  1      OPC=1343  
  callq .ungetc                                                       #  22    0x9ba67  5      OPC=260   
.L_9ba60:                                                             #        0x9ba6c  0      OPC=0     
  movl %ebx, %ebx                                                     #  23    0x9ba6c  2      OPC=1157  
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  24    0x9ba6e  9      OPC=1135  
  popq %rbx                                                           #  25    0x9ba77  1      OPC=1694  
  popq %r11                                                           #  26    0x9ba78  2      OPC=1694  
  andl $0xffffffe0, %r11d                                             #  27    0x9ba7a  7      OPC=131   
  nop                                                                 #  28    0x9ba81  1      OPC=1343  
  nop                                                                 #  29    0x9ba82  1      OPC=1343  
  nop                                                                 #  30    0x9ba83  1      OPC=1343  
  nop                                                                 #  31    0x9ba84  1      OPC=1343  
  addq %r15, %r11                                                     #  32    0x9ba85  3      OPC=72    
  jmpq %r11                                                           #  33    0x9ba88  3      OPC=928   
  nop                                                                 #  34    0x9ba8b  1      OPC=1343  
  nop                                                                 #  35    0x9ba8c  1      OPC=1343  
  nop                                                                 #  36    0x9ba8d  1      OPC=1343  
  nop                                                                 #  37    0x9ba8e  1      OPC=1343  
  nop                                                                 #  38    0x9ba8f  1      OPC=1343  
  nop                                                                 #  39    0x9ba90  1      OPC=1343  
  nop                                                                 #  40    0x9ba91  1      OPC=1343  
  nop                                                                 #  41    0x9ba92  1      OPC=1343  
.L_9ba80:                                                             #        0x9ba93  0      OPC=0     
  movl %ebx, %ebx                                                     #  42    0x9ba93  2      OPC=1157  
  movl 0x24(%r15,%rbx,1), %edi                                        #  43    0x9ba95  5      OPC=1156  
  cmpl $0xffffffff, %edi                                              #  44    0x9ba9a  6      OPC=469   
  nop                                                                 #  45    0x9baa0  1      OPC=1343  
  nop                                                                 #  46    0x9baa1  1      OPC=1343  
  nop                                                                 #  47    0x9baa2  1      OPC=1343  
  movl %edi, %eax                                                     #  48    0x9baa3  2      OPC=1157  
  je .L_9ba60                                                         #  49    0x9baa5  6      OPC=893   
  nop                                                                 #  50    0x9baab  1      OPC=1343  
  nop                                                                 #  51    0x9baac  1      OPC=1343  
  movl %ebx, %ebx                                                     #  52    0x9baad  2      OPC=1157  
  movl 0x20(%r15,%rbx,1), %esi                                        #  53    0x9baaf  5      OPC=1156  
  nop                                                                 #  54    0x9bab4  1      OPC=1343  
  nop                                                                 #  55    0x9bab5  1      OPC=1343  
  nop                                                                 #  56    0x9bab6  1      OPC=1343  
  nop                                                                 #  57    0x9bab7  1      OPC=1343  
  nop                                                                 #  58    0x9bab8  1      OPC=1343  
  nop                                                                 #  59    0x9bab9  1      OPC=1343  
  callq .ungetc                                                       #  60    0x9baba  5      OPC=260   
  movl %ebx, %ebx                                                     #  61    0x9babf  2      OPC=1157  
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  62    0x9bac1  9      OPC=1135  
  popq %rbx                                                           #  63    0x9baca  1      OPC=1694  
  popq %r11                                                           #  64    0x9bacb  2      OPC=1694  
  andl $0xffffffe0, %r11d                                             #  65    0x9bacd  7      OPC=131   
  nop                                                                 #  66    0x9bad4  1      OPC=1343  
  nop                                                                 #  67    0x9bad5  1      OPC=1343  
  nop                                                                 #  68    0x9bad6  1      OPC=1343  
  nop                                                                 #  69    0x9bad7  1      OPC=1343  
  addq %r15, %r11                                                     #  70    0x9bad8  3      OPC=72    
  jmpq %r11                                                           #  71    0x9badb  3      OPC=928   
  nop                                                                 #  72    0x9bade  1      OPC=1343  
  nop                                                                 #  73    0x9badf  1      OPC=1343  
  nop                                                                 #  74    0x9bae0  1      OPC=1343  
  nop                                                                 #  75    0x9bae1  1      OPC=1343  
  nop                                                                 #  76    0x9bae2  1      OPC=1343  
  nop                                                                 #  77    0x9bae3  1      OPC=1343  
  nop                                                                 #  78    0x9bae4  1      OPC=1343  
  nop                                                                 #  79    0x9bae5  1      OPC=1343  
                                                                                                         
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi

