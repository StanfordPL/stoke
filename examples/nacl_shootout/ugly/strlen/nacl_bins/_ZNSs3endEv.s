  .text
  .globl _ZNSs3endEv
  .type _ZNSs3endEv, @function

#! file-offset 0xee6a0
#! rip-offset  0xae6a0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._ZNSs3endEv:                   #        0xae6a0  0      OPC=0     
  pushq %rbx                    #  1     0xae6a0  1      OPC=1861  
  movl %edi, %ebx               #  2     0xae6a1  2      OPC=1157  
  movl %ebx, %ebx               #  3     0xae6a3  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  4     0xae6a5  4      OPC=1156  
  leal -0xc(%rax), %edx         #  5     0xae6a9  3      OPC=1066  
  movl %edx, %edx               #  6     0xae6ac  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %r11d  #  7     0xae6ae  5      OPC=1156  
  testl %r11d, %r11d            #  8     0xae6b3  3      OPC=2436  
  js .L_ae6e0                   #  9     0xae6b6  6      OPC=1043  
  nop                           #  10    0xae6bc  1      OPC=1343  
  nop                           #  11    0xae6bd  1      OPC=1343  
  movl %ebx, %edi               #  12    0xae6be  2      OPC=1157  
  nop                           #  13    0xae6c0  1      OPC=1343  
  callq ._ZNSs12_M_leak_hardEv  #  14    0xae6c1  5      OPC=260   
  movl %ebx, %ebx               #  15    0xae6c6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  16    0xae6c8  4      OPC=1156  
  leal -0xc(%rax), %edx         #  17    0xae6cc  3      OPC=1066  
  nop                           #  18    0xae6cf  1      OPC=1343  
  nop                           #  19    0xae6d0  1      OPC=1343  
  nop                           #  20    0xae6d1  1      OPC=1343  
  nop                           #  21    0xae6d2  1      OPC=1343  
  nop                           #  22    0xae6d3  1      OPC=1343  
  nop                           #  23    0xae6d4  1      OPC=1343  
  nop                           #  24    0xae6d5  1      OPC=1343  
  nop                           #  25    0xae6d6  1      OPC=1343  
  nop                           #  26    0xae6d7  1      OPC=1343  
  nop                           #  27    0xae6d8  1      OPC=1343  
  nop                           #  28    0xae6d9  1      OPC=1343  
  nop                           #  29    0xae6da  1      OPC=1343  
  nop                           #  30    0xae6db  1      OPC=1343  
  nop                           #  31    0xae6dc  1      OPC=1343  
  nop                           #  32    0xae6dd  1      OPC=1343  
  nop                           #  33    0xae6de  1      OPC=1343  
  nop                           #  34    0xae6df  1      OPC=1343  
  nop                           #  35    0xae6e0  1      OPC=1343  
  nop                           #  36    0xae6e1  1      OPC=1343  
  nop                           #  37    0xae6e2  1      OPC=1343  
  nop                           #  38    0xae6e3  1      OPC=1343  
  nop                           #  39    0xae6e4  1      OPC=1343  
  nop                           #  40    0xae6e5  1      OPC=1343  
.L_ae6e0:                       #        0xae6e6  0      OPC=0     
  popq %rbx                     #  41    0xae6e6  1      OPC=1694  
  popq %r11                     #  42    0xae6e7  2      OPC=1694  
  movl %edx, %edx               #  43    0xae6e9  2      OPC=1157  
  addl (%r15,%rdx,1), %eax      #  44    0xae6eb  4      OPC=66    
  andl $0xffffffe0, %r11d       #  45    0xae6ef  7      OPC=131   
  nop                           #  46    0xae6f6  1      OPC=1343  
  nop                           #  47    0xae6f7  1      OPC=1343  
  nop                           #  48    0xae6f8  1      OPC=1343  
  nop                           #  49    0xae6f9  1      OPC=1343  
  addq %r15, %r11               #  50    0xae6fa  3      OPC=72    
  jmpq %r11                     #  51    0xae6fd  3      OPC=928   
  nop                           #  52    0xae700  1      OPC=1343  
  nop                           #  53    0xae701  1      OPC=1343  
  nop                           #  54    0xae702  1      OPC=1343  
  nop                           #  55    0xae703  1      OPC=1343  
  nop                           #  56    0xae704  1      OPC=1343  
  nop                           #  57    0xae705  1      OPC=1343  
  nop                           #  58    0xae706  1      OPC=1343  
  nop                           #  59    0xae707  1      OPC=1343  
  nop                           #  60    0xae708  1      OPC=1343  
  nop                           #  61    0xae709  1      OPC=1343  
  nop                           #  62    0xae70a  1      OPC=1343  
  nop                           #  63    0xae70b  1      OPC=1343  
  nop                           #  64    0xae70c  1      OPC=1343  
                                                                   
.size _ZNSs3endEv, .-_ZNSs3endEv

