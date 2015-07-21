  .text
  .globl __mcmp
  .type __mcmp, @function

#! file-offset 0x189c80
#! rip-offset  0x149c80
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.__mcmp:                        #        0x149c80  0      OPC=0     
  movl %edi, %edi               #  1     0x149c80  2      OPC=1157  
  movl %esi, %esi               #  2     0x149c82  2      OPC=1157  
  movl %edi, %edi               #  3     0x149c84  2      OPC=1157  
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x149c86  5      OPC=1156  
  movl %esi, %esi               #  5     0x149c8b  2      OPC=1157  
  movl 0x10(%r15,%rsi,1), %edx  #  6     0x149c8d  5      OPC=1156  
  subl %edx, %eax               #  7     0x149c92  2      OPC=2386  
  jne .L_149ce0                 #  8     0x149c94  6      OPC=963   
  nop                           #  9     0x149c9a  1      OPC=1343  
  nop                           #  10    0x149c9b  1      OPC=1343  
  leal 0x10(,%rdx,4), %edx      #  11    0x149c9c  7      OPC=1066  
  leal 0x14(%rdi), %ecx         #  12    0x149ca3  3      OPC=1066  
  leal 0x4(%rdx,%rsi,1), %esi   #  13    0x149ca6  4      OPC=1066  
  leal 0x4(%rdx,%rdi,1), %edi   #  14    0x149caa  4      OPC=1066  
  nop                           #  15    0x149cae  1      OPC=1343  
  nop                           #  16    0x149caf  1      OPC=1343  
  nop                           #  17    0x149cb0  1      OPC=1343  
  nop                           #  18    0x149cb1  1      OPC=1343  
  nop                           #  19    0x149cb2  1      OPC=1343  
  nop                           #  20    0x149cb3  1      OPC=1343  
  nop                           #  21    0x149cb4  1      OPC=1343  
  nop                           #  22    0x149cb5  1      OPC=1343  
  nop                           #  23    0x149cb6  1      OPC=1343  
  nop                           #  24    0x149cb7  1      OPC=1343  
  nop                           #  25    0x149cb8  1      OPC=1343  
  nop                           #  26    0x149cb9  1      OPC=1343  
  nop                           #  27    0x149cba  1      OPC=1343  
  nop                           #  28    0x149cbb  1      OPC=1343  
  nop                           #  29    0x149cbc  1      OPC=1343  
  nop                           #  30    0x149cbd  1      OPC=1343  
  nop                           #  31    0x149cbe  1      OPC=1343  
  nop                           #  32    0x149cbf  1      OPC=1343  
  nop                           #  33    0x149cc0  1      OPC=1343  
  nop                           #  34    0x149cc1  1      OPC=1343  
  nop                           #  35    0x149cc2  1      OPC=1343  
  nop                           #  36    0x149cc3  1      OPC=1343  
  nop                           #  37    0x149cc4  1      OPC=1343  
  nop                           #  38    0x149cc5  1      OPC=1343  
.L_149cc0:                      #        0x149cc6  0      OPC=0     
  subl $0x4, %esi               #  39    0x149cc6  3      OPC=2384  
  subl $0x4, %edi               #  40    0x149cc9  3      OPC=2384  
  movl %esi, %esi               #  41    0x149ccc  2      OPC=1157  
  movl (%r15,%rsi,1), %edx      #  42    0x149cce  4      OPC=1156  
  movl %edi, %edi               #  43    0x149cd2  2      OPC=1157  
  cmpl %edx, (%r15,%rdi,1)      #  44    0x149cd4  4      OPC=457   
  jne .L_149d00                 #  45    0x149cd8  6      OPC=963   
  nop                           #  46    0x149cde  1      OPC=1343  
  nop                           #  47    0x149cdf  1      OPC=1343  
  cmpl %edi, %ecx               #  48    0x149ce0  2      OPC=472   
  jb .L_149cc0                  #  49    0x149ce2  6      OPC=875   
  nop                           #  50    0x149ce8  1      OPC=1343  
  nop                           #  51    0x149ce9  1      OPC=1343  
  nop                           #  52    0x149cea  1      OPC=1343  
  nop                           #  53    0x149ceb  1      OPC=1343  
  nop                           #  54    0x149cec  1      OPC=1343  
  nop                           #  55    0x149ced  1      OPC=1343  
  nop                           #  56    0x149cee  1      OPC=1343  
  nop                           #  57    0x149cef  1      OPC=1343  
  nop                           #  58    0x149cf0  1      OPC=1343  
  nop                           #  59    0x149cf1  1      OPC=1343  
.L_149ce0:                      #        0x149cf2  0      OPC=0     
  popq %r11                     #  60    0x149cf2  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  61    0x149cf4  7      OPC=131   
  nop                           #  62    0x149cfb  1      OPC=1343  
  nop                           #  63    0x149cfc  1      OPC=1343  
  nop                           #  64    0x149cfd  1      OPC=1343  
  nop                           #  65    0x149cfe  1      OPC=1343  
  addq %r15, %r11               #  66    0x149cff  3      OPC=72    
  jmpq %r11                     #  67    0x149d02  3      OPC=928   
  nop                           #  68    0x149d05  1      OPC=1343  
  nop                           #  69    0x149d06  1      OPC=1343  
  nop                           #  70    0x149d07  1      OPC=1343  
  nop                           #  71    0x149d08  1      OPC=1343  
  nop                           #  72    0x149d09  1      OPC=1343  
  nop                           #  73    0x149d0a  1      OPC=1343  
  nop                           #  74    0x149d0b  1      OPC=1343  
  nop                           #  75    0x149d0c  1      OPC=1343  
  nop                           #  76    0x149d0d  1      OPC=1343  
  nop                           #  77    0x149d0e  1      OPC=1343  
  nop                           #  78    0x149d0f  1      OPC=1343  
  nop                           #  79    0x149d10  1      OPC=1343  
  nop                           #  80    0x149d11  1      OPC=1343  
  nop                           #  81    0x149d12  1      OPC=1343  
  nop                           #  82    0x149d13  1      OPC=1343  
  nop                           #  83    0x149d14  1      OPC=1343  
  nop                           #  84    0x149d15  1      OPC=1343  
  nop                           #  85    0x149d16  1      OPC=1343  
  nop                           #  86    0x149d17  1      OPC=1343  
  nop                           #  87    0x149d18  1      OPC=1343  
.L_149d00:                      #        0x149d19  0      OPC=0     
  sbbl %eax, %eax               #  88    0x149d19  2      OPC=2134  
  orl $0x1, %eax                #  89    0x149d1b  3      OPC=1378  
  popq %r11                     #  90    0x149d1e  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  91    0x149d20  7      OPC=131   
  nop                           #  92    0x149d27  1      OPC=1343  
  nop                           #  93    0x149d28  1      OPC=1343  
  nop                           #  94    0x149d29  1      OPC=1343  
  nop                           #  95    0x149d2a  1      OPC=1343  
  addq %r15, %r11               #  96    0x149d2b  3      OPC=72    
  jmpq %r11                     #  97    0x149d2e  3      OPC=928   
  nop                           #  98    0x149d31  1      OPC=1343  
  nop                           #  99    0x149d32  1      OPC=1343  
  nop                           #  100   0x149d33  1      OPC=1343  
  nop                           #  101   0x149d34  1      OPC=1343  
  nop                           #  102   0x149d35  1      OPC=1343  
  nop                           #  103   0x149d36  1      OPC=1343  
  nop                           #  104   0x149d37  1      OPC=1343  
  nop                           #  105   0x149d38  1      OPC=1343  
  nop                           #  106   0x149d39  1      OPC=1343  
  nop                           #  107   0x149d3a  1      OPC=1343  
  nop                           #  108   0x149d3b  1      OPC=1343  
  nop                           #  109   0x149d3c  1      OPC=1343  
  nop                           #  110   0x149d3d  1      OPC=1343  
  nop                           #  111   0x149d3e  1      OPC=1343  
  nop                           #  112   0x149d3f  1      OPC=1343  
                                                                    
.size __mcmp, .-__mcmp

