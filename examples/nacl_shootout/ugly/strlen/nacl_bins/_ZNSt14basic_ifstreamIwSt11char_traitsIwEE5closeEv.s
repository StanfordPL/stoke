  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x132800
#! rip-offset  0xf2800
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv:                 #        0xf2800  0      OPC=0     
  pushq %rbx                                                         #  1     0xf2800  1      OPC=1861  
  movl %edi, %ebx                                                    #  2     0xf2801  2      OPC=1157  
  leal 0x8(%rbx), %edi                                               #  3     0xf2803  3      OPC=1066  
  nop                                                                #  4     0xf2806  1      OPC=1343  
  nop                                                                #  5     0xf2807  1      OPC=1343  
  nop                                                                #  6     0xf2808  1      OPC=1343  
  nop                                                                #  7     0xf2809  1      OPC=1343  
  nop                                                                #  8     0xf280a  1      OPC=1343  
  nop                                                                #  9     0xf280b  1      OPC=1343  
  nop                                                                #  10    0xf280c  1      OPC=1343  
  nop                                                                #  11    0xf280d  1      OPC=1343  
  nop                                                                #  12    0xf280e  1      OPC=1343  
  nop                                                                #  13    0xf280f  1      OPC=1343  
  nop                                                                #  14    0xf2810  1      OPC=1343  
  nop                                                                #  15    0xf2811  1      OPC=1343  
  nop                                                                #  16    0xf2812  1      OPC=1343  
  nop                                                                #  17    0xf2813  1      OPC=1343  
  nop                                                                #  18    0xf2814  1      OPC=1343  
  nop                                                                #  19    0xf2815  1      OPC=1343  
  nop                                                                #  20    0xf2816  1      OPC=1343  
  nop                                                                #  21    0xf2817  1      OPC=1343  
  nop                                                                #  22    0xf2818  1      OPC=1343  
  nop                                                                #  23    0xf2819  1      OPC=1343  
  nop                                                                #  24    0xf281a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf281b  5      OPC=260   
  testl %eax, %eax                                                   #  26    0xf2820  2      OPC=2436  
  je .L_f2840                                                        #  27    0xf2822  6      OPC=893   
  nop                                                                #  28    0xf2828  1      OPC=1343  
  nop                                                                #  29    0xf2829  1      OPC=1343  
  popq %rbx                                                          #  30    0xf282a  1      OPC=1694  
  popq %r11                                                          #  31    0xf282b  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  32    0xf282d  7      OPC=131   
  nop                                                                #  33    0xf2834  1      OPC=1343  
  nop                                                                #  34    0xf2835  1      OPC=1343  
  nop                                                                #  35    0xf2836  1      OPC=1343  
  nop                                                                #  36    0xf2837  1      OPC=1343  
  addq %r15, %r11                                                    #  37    0xf2838  3      OPC=72    
  jmpq %r11                                                          #  38    0xf283b  3      OPC=928   
  nop                                                                #  39    0xf283e  1      OPC=1343  
  nop                                                                #  40    0xf283f  1      OPC=1343  
  nop                                                                #  41    0xf2840  1      OPC=1343  
  nop                                                                #  42    0xf2841  1      OPC=1343  
  nop                                                                #  43    0xf2842  1      OPC=1343  
  nop                                                                #  44    0xf2843  1      OPC=1343  
  nop                                                                #  45    0xf2844  1      OPC=1343  
  nop                                                                #  46    0xf2845  1      OPC=1343  
  nop                                                                #  47    0xf2846  1      OPC=1343  
  nop                                                                #  48    0xf2847  1      OPC=1343  
  nop                                                                #  49    0xf2848  1      OPC=1343  
  nop                                                                #  50    0xf2849  1      OPC=1343  
  nop                                                                #  51    0xf284a  1      OPC=1343  
  nop                                                                #  52    0xf284b  1      OPC=1343  
  nop                                                                #  53    0xf284c  1      OPC=1343  
.L_f2840:                                                            #        0xf284d  0      OPC=0     
  movl %ebx, %ebx                                                    #  54    0xf284d  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  55    0xf284f  4      OPC=1156  
  subl $0xc, %eax                                                    #  56    0xf2853  3      OPC=2384  
  movl %eax, %eax                                                    #  57    0xf2856  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                           #  58    0xf2858  4      OPC=1156  
  addl %ebx, %edi                                                    #  59    0xf285c  2      OPC=67    
  movl %edi, %edi                                                    #  60    0xf285e  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                       #  61    0xf2860  5      OPC=1156  
  popq %rbx                                                          #  62    0xf2865  1      OPC=1694  
  orl $0x4, %esi                                                     #  63    0xf2866  3      OPC=1378  
  nop                                                                #  64    0xf2869  1      OPC=1343  
  nop                                                                #  65    0xf286a  1      OPC=1343  
  nop                                                                #  66    0xf286b  1      OPC=1343  
  nop                                                                #  67    0xf286c  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  68    0xf286d  5      OPC=930   
  nop                                                                #  69    0xf2872  1      OPC=1343  
  nop                                                                #  70    0xf2873  1      OPC=1343  
  nop                                                                #  71    0xf2874  1      OPC=1343  
  nop                                                                #  72    0xf2875  1      OPC=1343  
  nop                                                                #  73    0xf2876  1      OPC=1343  
  nop                                                                #  74    0xf2877  1      OPC=1343  
  nop                                                                #  75    0xf2878  1      OPC=1343  
  nop                                                                #  76    0xf2879  1      OPC=1343  
  nop                                                                #  77    0xf287a  1      OPC=1343  
  nop                                                                #  78    0xf287b  1      OPC=1343  
  nop                                                                #  79    0xf287c  1      OPC=1343  
  nop                                                                #  80    0xf287d  1      OPC=1343  
  nop                                                                #  81    0xf287e  1      OPC=1343  
  nop                                                                #  82    0xf287f  1      OPC=1343  
  nop                                                                #  83    0xf2880  1      OPC=1343  
  nop                                                                #  84    0xf2881  1      OPC=1343  
  nop                                                                #  85    0xf2882  1      OPC=1343  
  nop                                                                #  86    0xf2883  1      OPC=1343  
  nop                                                                #  87    0xf2884  1      OPC=1343  
  nop                                                                #  88    0xf2885  1      OPC=1343  
  nop                                                                #  89    0xf2886  1      OPC=1343  
  nop                                                                #  90    0xf2887  1      OPC=1343  
  nop                                                                #  91    0xf2888  1      OPC=1343  
  nop                                                                #  92    0xf2889  1      OPC=1343  
  nop                                                                #  93    0xf288a  1      OPC=1343  
  nop                                                                #  94    0xf288b  1      OPC=1343  
  nop                                                                #  95    0xf288c  1      OPC=1343  
                                                                                                        
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE5closeEv

