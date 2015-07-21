  .text
  .globl _ZNSs4_Rep10_M_disposeERKSaIcE
  .type _ZNSs4_Rep10_M_disposeERKSaIcE, @function

#! file-offset 0xea540
#! rip-offset  0xaa540
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs4_Rep10_M_disposeERKSaIcE:        #        0xaa540  0      OPC=0     
  movl %edi, %edi                       #  1     0xaa540  2      OPC=1157  
  movl %esi, %esi                       #  2     0xaa542  2      OPC=1157  
  cmpl $0x10073580, %edi                #  3     0xaa544  6      OPC=469   
  jne .L_aa580                          #  4     0xaa54a  6      OPC=963   
  nop                                   #  5     0xaa550  1      OPC=1343  
  nop                                   #  6     0xaa551  1      OPC=1343  
  nop                                   #  7     0xaa552  1      OPC=1343  
  nop                                   #  8     0xaa553  1      OPC=1343  
  nop                                   #  9     0xaa554  1      OPC=1343  
  nop                                   #  10    0xaa555  1      OPC=1343  
  nop                                   #  11    0xaa556  1      OPC=1343  
  nop                                   #  12    0xaa557  1      OPC=1343  
  nop                                   #  13    0xaa558  1      OPC=1343  
  nop                                   #  14    0xaa559  1      OPC=1343  
  nop                                   #  15    0xaa55a  1      OPC=1343  
  nop                                   #  16    0xaa55b  1      OPC=1343  
  nop                                   #  17    0xaa55c  1      OPC=1343  
  nop                                   #  18    0xaa55d  1      OPC=1343  
  nop                                   #  19    0xaa55e  1      OPC=1343  
  nop                                   #  20    0xaa55f  1      OPC=1343  
  nop                                   #  21    0xaa560  1      OPC=1343  
  nop                                   #  22    0xaa561  1      OPC=1343  
  nop                                   #  23    0xaa562  1      OPC=1343  
  nop                                   #  24    0xaa563  1      OPC=1343  
  nop                                   #  25    0xaa564  1      OPC=1343  
  nop                                   #  26    0xaa565  1      OPC=1343  
.L_aa560:                               #        0xaa566  0      OPC=0     
  popq %r11                             #  27    0xaa566  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  28    0xaa568  7      OPC=131   
  nop                                   #  29    0xaa56f  1      OPC=1343  
  nop                                   #  30    0xaa570  1      OPC=1343  
  nop                                   #  31    0xaa571  1      OPC=1343  
  nop                                   #  32    0xaa572  1      OPC=1343  
  addq %r15, %r11                       #  33    0xaa573  3      OPC=72    
  jmpq %r11                             #  34    0xaa576  3      OPC=928   
  nop                                   #  35    0xaa579  1      OPC=1343  
  nop                                   #  36    0xaa57a  1      OPC=1343  
  nop                                   #  37    0xaa57b  1      OPC=1343  
  nop                                   #  38    0xaa57c  1      OPC=1343  
  nop                                   #  39    0xaa57d  1      OPC=1343  
  nop                                   #  40    0xaa57e  1      OPC=1343  
  nop                                   #  41    0xaa57f  1      OPC=1343  
  nop                                   #  42    0xaa580  1      OPC=1343  
  nop                                   #  43    0xaa581  1      OPC=1343  
  nop                                   #  44    0xaa582  1      OPC=1343  
  nop                                   #  45    0xaa583  1      OPC=1343  
  nop                                   #  46    0xaa584  1      OPC=1343  
  nop                                   #  47    0xaa585  1      OPC=1343  
  nop                                   #  48    0xaa586  1      OPC=1343  
  nop                                   #  49    0xaa587  1      OPC=1343  
  nop                                   #  50    0xaa588  1      OPC=1343  
  nop                                   #  51    0xaa589  1      OPC=1343  
  nop                                   #  52    0xaa58a  1      OPC=1343  
  nop                                   #  53    0xaa58b  1      OPC=1343  
  nop                                   #  54    0xaa58c  1      OPC=1343  
.L_aa580:                               #        0xaa58d  0      OPC=0     
  movl %edi, %edi                       #  55    0xaa58d  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax           #  56    0xaa58f  5      OPC=1156  
  leal -0x1(%rax), %edx                 #  57    0xaa594  3      OPC=1066  
  testl %eax, %eax                      #  58    0xaa597  2      OPC=2436  
  movl %edi, %edi                       #  59    0xaa599  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)           #  60    0xaa59b  5      OPC=1136  
  jg .L_aa560                           #  61    0xaa5a0  6      OPC=901   
  nop                                   #  62    0xaa5a6  1      OPC=1343  
  nop                                   #  63    0xaa5a7  1      OPC=1343  
  jmpq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  64    0xaa5a8  5      OPC=930   
  nop                                   #  65    0xaa5ad  1      OPC=1343  
  nop                                   #  66    0xaa5ae  1      OPC=1343  
  nop                                   #  67    0xaa5af  1      OPC=1343  
  nop                                   #  68    0xaa5b0  1      OPC=1343  
  nop                                   #  69    0xaa5b1  1      OPC=1343  
  nop                                   #  70    0xaa5b2  1      OPC=1343  
                                                                           
.size _ZNSs4_Rep10_M_disposeERKSaIcE, .-_ZNSs4_Rep10_M_disposeERKSaIcE

