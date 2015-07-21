  .text
  .globl AddIfSatisfiedInput
  .type AddIfSatisfiedInput, @function

#! file-offset 0x67420
#! rip-offset  0x27420
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.AddIfSatisfiedInput:           #        0x27420  0      OPC=0     
  movl %edi, %esi               #  1     0x27420  2      OPC=1157  
  movl %esi, %esi               #  2     0x27422  2      OPC=1157  
  movl 0x4(%r15,%rsi,1), %r10d  #  3     0x27424  5      OPC=1156  
  testl %r10d, %r10d            #  4     0x27429  3      OPC=2436  
  je .L_27460                   #  5     0x2742c  6      OPC=893   
  nop                           #  6     0x27432  1      OPC=1343  
  nop                           #  7     0x27433  1      OPC=1343  
  movl %esi, %esi               #  8     0x27434  2      OPC=1157  
  cmpb $0xff, 0xc(%r15,%rsi,1)  #  9     0x27436  6      OPC=461   
  je .L_27460                   #  10    0x2743c  6      OPC=893   
  nop                           #  11    0x27442  1      OPC=1343  
  nop                           #  12    0x27443  1      OPC=1343  
  movl 0x10049d0a(%rip), %edi   #  13    0x27444  6      OPC=1156  
  xchgw %ax, %ax                #  14    0x2744a  2      OPC=3700  
  jmpq .List_Add                #  15    0x2744c  5      OPC=930   
  nop                           #  16    0x27451  1      OPC=1343  
  nop                           #  17    0x27452  1      OPC=1343  
  nop                           #  18    0x27453  1      OPC=1343  
  nop                           #  19    0x27454  1      OPC=1343  
  nop                           #  20    0x27455  1      OPC=1343  
  nop                           #  21    0x27456  1      OPC=1343  
  nop                           #  22    0x27457  1      OPC=1343  
  nop                           #  23    0x27458  1      OPC=1343  
  nop                           #  24    0x27459  1      OPC=1343  
  nop                           #  25    0x2745a  1      OPC=1343  
  nop                           #  26    0x2745b  1      OPC=1343  
  nop                           #  27    0x2745c  1      OPC=1343  
  nop                           #  28    0x2745d  1      OPC=1343  
  nop                           #  29    0x2745e  1      OPC=1343  
  nop                           #  30    0x2745f  1      OPC=1343  
  nop                           #  31    0x27460  1      OPC=1343  
  nop                           #  32    0x27461  1      OPC=1343  
  nop                           #  33    0x27462  1      OPC=1343  
  nop                           #  34    0x27463  1      OPC=1343  
  nop                           #  35    0x27464  1      OPC=1343  
  nop                           #  36    0x27465  1      OPC=1343  
  nop                           #  37    0x27466  1      OPC=1343  
  nop                           #  38    0x27467  1      OPC=1343  
  nop                           #  39    0x27468  1      OPC=1343  
  nop                           #  40    0x27469  1      OPC=1343  
  nop                           #  41    0x2746a  1      OPC=1343  
  nop                           #  42    0x2746b  1      OPC=1343  
.L_27460:                       #        0x2746c  0      OPC=0     
  popq %r11                     #  43    0x2746c  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  44    0x2746e  7      OPC=131   
  nop                           #  45    0x27475  1      OPC=1343  
  nop                           #  46    0x27476  1      OPC=1343  
  nop                           #  47    0x27477  1      OPC=1343  
  nop                           #  48    0x27478  1      OPC=1343  
  addq %r15, %r11               #  49    0x27479  3      OPC=72    
  jmpq %r11                     #  50    0x2747c  3      OPC=928   
  nop                           #  51    0x2747f  1      OPC=1343  
  nop                           #  52    0x27480  1      OPC=1343  
  nop                           #  53    0x27481  1      OPC=1343  
  nop                           #  54    0x27482  1      OPC=1343  
  nop                           #  55    0x27483  1      OPC=1343  
  nop                           #  56    0x27484  1      OPC=1343  
  nop                           #  57    0x27485  1      OPC=1343  
  nop                           #  58    0x27486  1      OPC=1343  
  nop                           #  59    0x27487  1      OPC=1343  
  nop                           #  60    0x27488  1      OPC=1343  
  nop                           #  61    0x27489  1      OPC=1343  
  nop                           #  62    0x2748a  1      OPC=1343  
  nop                           #  63    0x2748b  1      OPC=1343  
  nop                           #  64    0x2748c  1      OPC=1343  
  nop                           #  65    0x2748d  1      OPC=1343  
  nop                           #  66    0x2748e  1      OPC=1343  
  nop                           #  67    0x2748f  1      OPC=1343  
  nop                           #  68    0x27490  1      OPC=1343  
  nop                           #  69    0x27491  1      OPC=1343  
  nop                           #  70    0x27492  1      OPC=1343  
                                                                   
.size AddIfSatisfiedInput, .-AddIfSatisfiedInput

