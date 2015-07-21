  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv, @function

#! file-offset 0x132780
#! rip-offset  0xf2780
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv:                 #        0xf2780  0      OPC=0     
  pushq %rbx                                                         #  1     0xf2780  1      OPC=1861  
  movl %edi, %ebx                                                    #  2     0xf2781  2      OPC=1157  
  leal 0x4(%rbx), %edi                                               #  3     0xf2783  3      OPC=1066  
  nop                                                                #  4     0xf2786  1      OPC=1343  
  nop                                                                #  5     0xf2787  1      OPC=1343  
  nop                                                                #  6     0xf2788  1      OPC=1343  
  nop                                                                #  7     0xf2789  1      OPC=1343  
  nop                                                                #  8     0xf278a  1      OPC=1343  
  nop                                                                #  9     0xf278b  1      OPC=1343  
  nop                                                                #  10    0xf278c  1      OPC=1343  
  nop                                                                #  11    0xf278d  1      OPC=1343  
  nop                                                                #  12    0xf278e  1      OPC=1343  
  nop                                                                #  13    0xf278f  1      OPC=1343  
  nop                                                                #  14    0xf2790  1      OPC=1343  
  nop                                                                #  15    0xf2791  1      OPC=1343  
  nop                                                                #  16    0xf2792  1      OPC=1343  
  nop                                                                #  17    0xf2793  1      OPC=1343  
  nop                                                                #  18    0xf2794  1      OPC=1343  
  nop                                                                #  19    0xf2795  1      OPC=1343  
  nop                                                                #  20    0xf2796  1      OPC=1343  
  nop                                                                #  21    0xf2797  1      OPC=1343  
  nop                                                                #  22    0xf2798  1      OPC=1343  
  nop                                                                #  23    0xf2799  1      OPC=1343  
  nop                                                                #  24    0xf279a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE5closeEv           #  25    0xf279b  5      OPC=260   
  testl %eax, %eax                                                   #  26    0xf27a0  2      OPC=2436  
  je .L_f27c0                                                        #  27    0xf27a2  6      OPC=893   
  nop                                                                #  28    0xf27a8  1      OPC=1343  
  nop                                                                #  29    0xf27a9  1      OPC=1343  
  popq %rbx                                                          #  30    0xf27aa  1      OPC=1694  
  popq %r11                                                          #  31    0xf27ab  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  32    0xf27ad  7      OPC=131   
  nop                                                                #  33    0xf27b4  1      OPC=1343  
  nop                                                                #  34    0xf27b5  1      OPC=1343  
  nop                                                                #  35    0xf27b6  1      OPC=1343  
  nop                                                                #  36    0xf27b7  1      OPC=1343  
  addq %r15, %r11                                                    #  37    0xf27b8  3      OPC=72    
  jmpq %r11                                                          #  38    0xf27bb  3      OPC=928   
  nop                                                                #  39    0xf27be  1      OPC=1343  
  nop                                                                #  40    0xf27bf  1      OPC=1343  
  nop                                                                #  41    0xf27c0  1      OPC=1343  
  nop                                                                #  42    0xf27c1  1      OPC=1343  
  nop                                                                #  43    0xf27c2  1      OPC=1343  
  nop                                                                #  44    0xf27c3  1      OPC=1343  
  nop                                                                #  45    0xf27c4  1      OPC=1343  
  nop                                                                #  46    0xf27c5  1      OPC=1343  
  nop                                                                #  47    0xf27c6  1      OPC=1343  
  nop                                                                #  48    0xf27c7  1      OPC=1343  
  nop                                                                #  49    0xf27c8  1      OPC=1343  
  nop                                                                #  50    0xf27c9  1      OPC=1343  
  nop                                                                #  51    0xf27ca  1      OPC=1343  
  nop                                                                #  52    0xf27cb  1      OPC=1343  
  nop                                                                #  53    0xf27cc  1      OPC=1343  
.L_f27c0:                                                            #        0xf27cd  0      OPC=0     
  movl %ebx, %ebx                                                    #  54    0xf27cd  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  55    0xf27cf  4      OPC=1156  
  subl $0xc, %eax                                                    #  56    0xf27d3  3      OPC=2384  
  movl %eax, %eax                                                    #  57    0xf27d6  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                           #  58    0xf27d8  4      OPC=1156  
  addl %ebx, %edi                                                    #  59    0xf27dc  2      OPC=67    
  movl %edi, %edi                                                    #  60    0xf27de  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                       #  61    0xf27e0  5      OPC=1156  
  popq %rbx                                                          #  62    0xf27e5  1      OPC=1694  
  orl $0x4, %esi                                                     #  63    0xf27e6  3      OPC=1378  
  nop                                                                #  64    0xf27e9  1      OPC=1343  
  nop                                                                #  65    0xf27ea  1      OPC=1343  
  nop                                                                #  66    0xf27eb  1      OPC=1343  
  nop                                                                #  67    0xf27ec  1      OPC=1343  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  68    0xf27ed  5      OPC=930   
  nop                                                                #  69    0xf27f2  1      OPC=1343  
  nop                                                                #  70    0xf27f3  1      OPC=1343  
  nop                                                                #  71    0xf27f4  1      OPC=1343  
  nop                                                                #  72    0xf27f5  1      OPC=1343  
  nop                                                                #  73    0xf27f6  1      OPC=1343  
  nop                                                                #  74    0xf27f7  1      OPC=1343  
  nop                                                                #  75    0xf27f8  1      OPC=1343  
  nop                                                                #  76    0xf27f9  1      OPC=1343  
  nop                                                                #  77    0xf27fa  1      OPC=1343  
  nop                                                                #  78    0xf27fb  1      OPC=1343  
  nop                                                                #  79    0xf27fc  1      OPC=1343  
  nop                                                                #  80    0xf27fd  1      OPC=1343  
  nop                                                                #  81    0xf27fe  1      OPC=1343  
  nop                                                                #  82    0xf27ff  1      OPC=1343  
  nop                                                                #  83    0xf2800  1      OPC=1343  
  nop                                                                #  84    0xf2801  1      OPC=1343  
  nop                                                                #  85    0xf2802  1      OPC=1343  
  nop                                                                #  86    0xf2803  1      OPC=1343  
  nop                                                                #  87    0xf2804  1      OPC=1343  
  nop                                                                #  88    0xf2805  1      OPC=1343  
  nop                                                                #  89    0xf2806  1      OPC=1343  
  nop                                                                #  90    0xf2807  1      OPC=1343  
  nop                                                                #  91    0xf2808  1      OPC=1343  
  nop                                                                #  92    0xf2809  1      OPC=1343  
  nop                                                                #  93    0xf280a  1      OPC=1343  
  nop                                                                #  94    0xf280b  1      OPC=1343  
  nop                                                                #  95    0xf280c  1      OPC=1343  
                                                                                                        
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE5closeEv

