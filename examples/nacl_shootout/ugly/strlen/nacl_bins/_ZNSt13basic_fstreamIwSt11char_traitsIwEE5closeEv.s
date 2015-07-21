  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x132700
#! rip-offset  0xf2700
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv:                  #        0xf2700  0      OPC=0     
  pushq %rbx                                                         #  1     0xf2700  1      OPC=1861  
  movl %edi, %ebx                                                    #  2     0xf2701  2      OPC=1157  
  leal 0xc(%rbx), %edi                                               #  3     0xf2703  3      OPC=1066  
  nop                                                                #  4     0xf2706  1      OPC=1343  
  nop                                                                #  5     0xf2707  1      OPC=1343  
  nop                                                                #  6     0xf2708  1      OPC=1343  
  nop                                                                #  7     0xf2709  1      OPC=1343  
  nop                                                                #  8     0xf270a  1      OPC=1343  
  nop                                                                #  9     0xf270b  1      OPC=1343  
  nop                                                                #  10    0xf270c  1      OPC=1343  
  nop                                                                #  11    0xf270d  1      OPC=1343  
  nop                                                                #  12    0xf270e  1      OPC=1343  
  nop                                                                #  13    0xf270f  1      OPC=1343  
  nop                                                                #  14    0xf2710  1      OPC=1343  
  nop                                                                #  15    0xf2711  1      OPC=1343  
  nop                                                                #  16    0xf2712  1      OPC=1343  
  nop                                                                #  17    0xf2713  1      OPC=1343  
  nop                                                                #  18    0xf2714  1      OPC=1343  
  nop                                                                #  19    0xf2715  1      OPC=1343  
  nop                                                                #  20    0xf2716  1      OPC=1343  
  nop                                                                #  21    0xf2717  1      OPC=1343  
  nop                                                                #  22    0xf2718  1      OPC=1343  
  nop                                                                #  23    0xf2719  1      OPC=1343  
  nop                                                                #  24    0xf271a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf271b  5      OPC=260   
  testl %eax, %eax                                                   #  26    0xf2720  2      OPC=2436  
  je .L_f2740                                                        #  27    0xf2722  6      OPC=893   
  nop                                                                #  28    0xf2728  1      OPC=1343  
  nop                                                                #  29    0xf2729  1      OPC=1343  
  popq %rbx                                                          #  30    0xf272a  1      OPC=1694  
  popq %r11                                                          #  31    0xf272b  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  32    0xf272d  7      OPC=131   
  nop                                                                #  33    0xf2734  1      OPC=1343  
  nop                                                                #  34    0xf2735  1      OPC=1343  
  nop                                                                #  35    0xf2736  1      OPC=1343  
  nop                                                                #  36    0xf2737  1      OPC=1343  
  addq %r15, %r11                                                    #  37    0xf2738  3      OPC=72    
  jmpq %r11                                                          #  38    0xf273b  3      OPC=928   
  nop                                                                #  39    0xf273e  1      OPC=1343  
  nop                                                                #  40    0xf273f  1      OPC=1343  
  nop                                                                #  41    0xf2740  1      OPC=1343  
  nop                                                                #  42    0xf2741  1      OPC=1343  
  nop                                                                #  43    0xf2742  1      OPC=1343  
  nop                                                                #  44    0xf2743  1      OPC=1343  
  nop                                                                #  45    0xf2744  1      OPC=1343  
  nop                                                                #  46    0xf2745  1      OPC=1343  
  nop                                                                #  47    0xf2746  1      OPC=1343  
  nop                                                                #  48    0xf2747  1      OPC=1343  
  nop                                                                #  49    0xf2748  1      OPC=1343  
  nop                                                                #  50    0xf2749  1      OPC=1343  
  nop                                                                #  51    0xf274a  1      OPC=1343  
  nop                                                                #  52    0xf274b  1      OPC=1343  
  nop                                                                #  53    0xf274c  1      OPC=1343  
.L_f2740:                                                            #        0xf274d  0      OPC=0     
  movl %ebx, %ebx                                                    #  54    0xf274d  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  55    0xf274f  4      OPC=1156  
  subl $0xc, %eax                                                    #  56    0xf2753  3      OPC=2384  
  movl %eax, %eax                                                    #  57    0xf2756  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                           #  58    0xf2758  4      OPC=1156  
  addl %ebx, %edi                                                    #  59    0xf275c  2      OPC=67    
  movl %edi, %edi                                                    #  60    0xf275e  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                       #  61    0xf2760  5      OPC=1156  
  popq %rbx                                                          #  62    0xf2765  1      OPC=1694  
  orl $0x4, %esi                                                     #  63    0xf2766  3      OPC=1378  
  nop                                                                #  64    0xf2769  1      OPC=1343  
  nop                                                                #  65    0xf276a  1      OPC=1343  
  nop                                                                #  66    0xf276b  1      OPC=1343  
  nop                                                                #  67    0xf276c  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  68    0xf276d  5      OPC=930   
  nop                                                                #  69    0xf2772  1      OPC=1343  
  nop                                                                #  70    0xf2773  1      OPC=1343  
  nop                                                                #  71    0xf2774  1      OPC=1343  
  nop                                                                #  72    0xf2775  1      OPC=1343  
  nop                                                                #  73    0xf2776  1      OPC=1343  
  nop                                                                #  74    0xf2777  1      OPC=1343  
  nop                                                                #  75    0xf2778  1      OPC=1343  
  nop                                                                #  76    0xf2779  1      OPC=1343  
  nop                                                                #  77    0xf277a  1      OPC=1343  
  nop                                                                #  78    0xf277b  1      OPC=1343  
  nop                                                                #  79    0xf277c  1      OPC=1343  
  nop                                                                #  80    0xf277d  1      OPC=1343  
  nop                                                                #  81    0xf277e  1      OPC=1343  
  nop                                                                #  82    0xf277f  1      OPC=1343  
  nop                                                                #  83    0xf2780  1      OPC=1343  
  nop                                                                #  84    0xf2781  1      OPC=1343  
  nop                                                                #  85    0xf2782  1      OPC=1343  
  nop                                                                #  86    0xf2783  1      OPC=1343  
  nop                                                                #  87    0xf2784  1      OPC=1343  
  nop                                                                #  88    0xf2785  1      OPC=1343  
  nop                                                                #  89    0xf2786  1      OPC=1343  
  nop                                                                #  90    0xf2787  1      OPC=1343  
  nop                                                                #  91    0xf2788  1      OPC=1343  
  nop                                                                #  92    0xf2789  1      OPC=1343  
  nop                                                                #  93    0xf278a  1      OPC=1343  
  nop                                                                #  94    0xf278b  1      OPC=1343  
  nop                                                                #  95    0xf278c  1      OPC=1343  
                                                                                                        
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE5closeEv

