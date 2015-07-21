  .text
  .globl _ZNSs5beginEv
  .type _ZNSs5beginEv, @function

#! file-offset 0xee700
#! rip-offset  0xae700
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._ZNSs5beginEv:                 #        0xae700  0      OPC=0     
  pushq %rbx                    #  1     0xae700  1      OPC=1861  
  movl %edi, %ebx               #  2     0xae701  2      OPC=1157  
  movl %ebx, %ebx               #  3     0xae703  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  4     0xae705  4      OPC=1156  
  leal -0xc(%rax), %edx         #  5     0xae709  3      OPC=1066  
  movl %edx, %edx               #  6     0xae70c  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %edx   #  7     0xae70e  5      OPC=1156  
  testl %edx, %edx              #  8     0xae713  2      OPC=2436  
  js .L_ae740                   #  9     0xae715  6      OPC=1043  
  nop                           #  10    0xae71b  1      OPC=1343  
  nop                           #  11    0xae71c  1      OPC=1343  
  movl %ebx, %edi               #  12    0xae71d  2      OPC=1157  
  xchgw %ax, %ax                #  13    0xae71f  2      OPC=3700  
  callq ._ZNSs12_M_leak_hardEv  #  14    0xae721  5      OPC=260   
  movl %ebx, %ebx               #  15    0xae726  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  16    0xae728  4      OPC=1156  
  nop                           #  17    0xae72c  1      OPC=1343  
  nop                           #  18    0xae72d  1      OPC=1343  
  nop                           #  19    0xae72e  1      OPC=1343  
  nop                           #  20    0xae72f  1      OPC=1343  
  nop                           #  21    0xae730  1      OPC=1343  
  nop                           #  22    0xae731  1      OPC=1343  
  nop                           #  23    0xae732  1      OPC=1343  
  nop                           #  24    0xae733  1      OPC=1343  
  nop                           #  25    0xae734  1      OPC=1343  
  nop                           #  26    0xae735  1      OPC=1343  
  nop                           #  27    0xae736  1      OPC=1343  
  nop                           #  28    0xae737  1      OPC=1343  
  nop                           #  29    0xae738  1      OPC=1343  
  nop                           #  30    0xae739  1      OPC=1343  
  nop                           #  31    0xae73a  1      OPC=1343  
  nop                           #  32    0xae73b  1      OPC=1343  
  nop                           #  33    0xae73c  1      OPC=1343  
  nop                           #  34    0xae73d  1      OPC=1343  
  nop                           #  35    0xae73e  1      OPC=1343  
  nop                           #  36    0xae73f  1      OPC=1343  
  nop                           #  37    0xae740  1      OPC=1343  
  nop                           #  38    0xae741  1      OPC=1343  
  nop                           #  39    0xae742  1      OPC=1343  
  nop                           #  40    0xae743  1      OPC=1343  
  nop                           #  41    0xae744  1      OPC=1343  
  nop                           #  42    0xae745  1      OPC=1343  
.L_ae740:                       #        0xae746  0      OPC=0     
  popq %rbx                     #  43    0xae746  1      OPC=1694  
  popq %r11                     #  44    0xae747  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  45    0xae749  7      OPC=131   
  nop                           #  46    0xae750  1      OPC=1343  
  nop                           #  47    0xae751  1      OPC=1343  
  nop                           #  48    0xae752  1      OPC=1343  
  nop                           #  49    0xae753  1      OPC=1343  
  addq %r15, %r11               #  50    0xae754  3      OPC=72    
  jmpq %r11                     #  51    0xae757  3      OPC=928   
  nop                           #  52    0xae75a  1      OPC=1343  
  nop                           #  53    0xae75b  1      OPC=1343  
  nop                           #  54    0xae75c  1      OPC=1343  
  nop                           #  55    0xae75d  1      OPC=1343  
  nop                           #  56    0xae75e  1      OPC=1343  
  nop                           #  57    0xae75f  1      OPC=1343  
  nop                           #  58    0xae760  1      OPC=1343  
  nop                           #  59    0xae761  1      OPC=1343  
  nop                           #  60    0xae762  1      OPC=1343  
  nop                           #  61    0xae763  1      OPC=1343  
  nop                           #  62    0xae764  1      OPC=1343  
  nop                           #  63    0xae765  1      OPC=1343  
  nop                           #  64    0xae766  1      OPC=1343  
  nop                           #  65    0xae767  1      OPC=1343  
  nop                           #  66    0xae768  1      OPC=1343  
  nop                           #  67    0xae769  1      OPC=1343  
  nop                           #  68    0xae76a  1      OPC=1343  
  nop                           #  69    0xae76b  1      OPC=1343  
  nop                           #  70    0xae76c  1      OPC=1343  
                                                                   
.size _ZNSs5beginEv, .-_ZNSs5beginEv

