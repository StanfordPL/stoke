  .text
  .globl _Znaj
  .type _Znaj, @function

#! file-offset 0x1207e0
#! rip-offset  0xe07e0
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._Znaj:                         #        0xe07e0  0      OPC=0     
  subl $0x8, %esp               #  1     0xe07e0  3      OPC=2384  
  addq %r15, %rsp               #  2     0xe07e3  3      OPC=72    
  nop                           #  3     0xe07e6  1      OPC=1343  
  nop                           #  4     0xe07e7  1      OPC=1343  
  nop                           #  5     0xe07e8  1      OPC=1343  
  nop                           #  6     0xe07e9  1      OPC=1343  
  nop                           #  7     0xe07ea  1      OPC=1343  
  nop                           #  8     0xe07eb  1      OPC=1343  
  nop                           #  9     0xe07ec  1      OPC=1343  
  nop                           #  10    0xe07ed  1      OPC=1343  
  nop                           #  11    0xe07ee  1      OPC=1343  
  nop                           #  12    0xe07ef  1      OPC=1343  
  nop                           #  13    0xe07f0  1      OPC=1343  
  nop                           #  14    0xe07f1  1      OPC=1343  
  nop                           #  15    0xe07f2  1      OPC=1343  
  nop                           #  16    0xe07f3  1      OPC=1343  
  nop                           #  17    0xe07f4  1      OPC=1343  
  nop                           #  18    0xe07f5  1      OPC=1343  
  nop                           #  19    0xe07f6  1      OPC=1343  
  nop                           #  20    0xe07f7  1      OPC=1343  
  nop                           #  21    0xe07f8  1      OPC=1343  
  nop                           #  22    0xe07f9  1      OPC=1343  
  nop                           #  23    0xe07fa  1      OPC=1343  
  callq ._Znwj                  #  24    0xe07fb  5      OPC=260   
  addl $0x8, %esp               #  25    0xe0800  3      OPC=65    
  addq %r15, %rsp               #  26    0xe0803  3      OPC=72    
  movl %eax, %eax               #  27    0xe0806  2      OPC=1157  
  popq %r11                     #  28    0xe0808  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  29    0xe080a  7      OPC=131   
  nop                           #  30    0xe0811  1      OPC=1343  
  nop                           #  31    0xe0812  1      OPC=1343  
  nop                           #  32    0xe0813  1      OPC=1343  
  nop                           #  33    0xe0814  1      OPC=1343  
  addq %r15, %r11               #  34    0xe0815  3      OPC=72    
  jmpq %r11                     #  35    0xe0818  3      OPC=928   
  nop                           #  36    0xe081b  1      OPC=1343  
  nop                           #  37    0xe081c  1      OPC=1343  
  nop                           #  38    0xe081d  1      OPC=1343  
  nop                           #  39    0xe081e  1      OPC=1343  
  nop                           #  40    0xe081f  1      OPC=1343  
  nop                           #  41    0xe0820  1      OPC=1343  
  nop                           #  42    0xe0821  1      OPC=1343  
  nop                           #  43    0xe0822  1      OPC=1343  
  nop                           #  44    0xe0823  1      OPC=1343  
  nop                           #  45    0xe0824  1      OPC=1343  
  nop                           #  46    0xe0825  1      OPC=1343  
  nop                           #  47    0xe0826  1      OPC=1343  
  cmpq $0xff, %rdx              #  48    0xe0827  4      OPC=475   
  movl %eax, %edi               #  49    0xe082b  2      OPC=1157  
  je .L_e0840                   #  50    0xe082d  6      OPC=893   
  nop                           #  51    0xe0833  1      OPC=1343  
  nop                           #  52    0xe0834  1      OPC=1343  
  nop                           #  53    0xe0835  1      OPC=1343  
  nop                           #  54    0xe0836  1      OPC=1343  
  nop                           #  55    0xe0837  1      OPC=1343  
  nop                           #  56    0xe0838  1      OPC=1343  
  nop                           #  57    0xe0839  1      OPC=1343  
  nop                           #  58    0xe083a  1      OPC=1343  
  nop                           #  59    0xe083b  1      OPC=1343  
  nop                           #  60    0xe083c  1      OPC=1343  
  nop                           #  61    0xe083d  1      OPC=1343  
  nop                           #  62    0xe083e  1      OPC=1343  
  nop                           #  63    0xe083f  1      OPC=1343  
  nop                           #  64    0xe0840  1      OPC=1343  
  nop                           #  65    0xe0841  1      OPC=1343  
  nop                           #  66    0xe0842  1      OPC=1343  
  nop                           #  67    0xe0843  1      OPC=1343  
  nop                           #  68    0xe0844  1      OPC=1343  
  nop                           #  69    0xe0845  1      OPC=1343  
  nop                           #  70    0xe0846  1      OPC=1343  
  nop                           #  71    0xe0847  1      OPC=1343  
  callq ._Unwind_Resume         #  72    0xe0848  5      OPC=260   
.L_e0840:                       #        0xe084d  0      OPC=0     
  nop                           #  73    0xe084d  1      OPC=1343  
  nop                           #  74    0xe084e  1      OPC=1343  
  nop                           #  75    0xe084f  1      OPC=1343  
  nop                           #  76    0xe0850  1      OPC=1343  
  nop                           #  77    0xe0851  1      OPC=1343  
  nop                           #  78    0xe0852  1      OPC=1343  
  nop                           #  79    0xe0853  1      OPC=1343  
  nop                           #  80    0xe0854  1      OPC=1343  
  nop                           #  81    0xe0855  1      OPC=1343  
  nop                           #  82    0xe0856  1      OPC=1343  
  nop                           #  83    0xe0857  1      OPC=1343  
  nop                           #  84    0xe0858  1      OPC=1343  
  nop                           #  85    0xe0859  1      OPC=1343  
  nop                           #  86    0xe085a  1      OPC=1343  
  nop                           #  87    0xe085b  1      OPC=1343  
  nop                           #  88    0xe085c  1      OPC=1343  
  nop                           #  89    0xe085d  1      OPC=1343  
  nop                           #  90    0xe085e  1      OPC=1343  
  nop                           #  91    0xe085f  1      OPC=1343  
  nop                           #  92    0xe0860  1      OPC=1343  
  nop                           #  93    0xe0861  1      OPC=1343  
  nop                           #  94    0xe0862  1      OPC=1343  
  nop                           #  95    0xe0863  1      OPC=1343  
  nop                           #  96    0xe0864  1      OPC=1343  
  nop                           #  97    0xe0865  1      OPC=1343  
  nop                           #  98    0xe0866  1      OPC=1343  
  nop                           #  99    0xe0867  1      OPC=1343  
  callq .__cxa_call_unexpected  #  100   0xe0868  5      OPC=260   
                                                                   
.size _Znaj, .-_Znaj

