  .text
  .globl __gcclibcxx_demangle_callback
  .type __gcclibcxx_demangle_callback, @function

#! file-offset 0x145da0
#! rip-offset  0x105da0
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.__gcclibcxx_demangle_callback:  #        0x105da0  0      OPC=0     
  movl %esi, %esi                #  1     0x105da0  2      OPC=1157  
  subl $0x8, %esp                #  2     0x105da2  3      OPC=2384  
  addq %r15, %rsp                #  3     0x105da5  3      OPC=72    
  movl %edi, %edi                #  4     0x105da8  2      OPC=1157  
  testq %rsi, %rsi               #  5     0x105daa  3      OPC=2438  
  movl %edx, %edx                #  6     0x105dad  2      OPC=1157  
  je .L_105e00                   #  7     0x105daf  6      OPC=893   
  nop                            #  8     0x105db5  1      OPC=1343  
  nop                            #  9     0x105db6  1      OPC=1343  
  testq %rdi, %rdi               #  10    0x105db7  3      OPC=2438  
  je .L_105e00                   #  11    0x105dba  6      OPC=893   
  nop                            #  12    0x105dc0  1      OPC=1343  
  nop                            #  13    0x105dc1  1      OPC=1343  
  movl %edx, %ecx                #  14    0x105dc2  2      OPC=1157  
  movl %esi, %edx                #  15    0x105dc4  2      OPC=1157  
  movl $0x11, %esi               #  16    0x105dc6  5      OPC=1154  
  nop                            #  17    0x105dcb  1      OPC=1343  
  nop                            #  18    0x105dcc  1      OPC=1343  
  nop                            #  19    0x105dcd  1      OPC=1343  
  nop                            #  20    0x105dce  1      OPC=1343  
  nop                            #  21    0x105dcf  1      OPC=1343  
  nop                            #  22    0x105dd0  1      OPC=1343  
  nop                            #  23    0x105dd1  1      OPC=1343  
  nop                            #  24    0x105dd2  1      OPC=1343  
  nop                            #  25    0x105dd3  1      OPC=1343  
  nop                            #  26    0x105dd4  1      OPC=1343  
  nop                            #  27    0x105dd5  1      OPC=1343  
  nop                            #  28    0x105dd6  1      OPC=1343  
  nop                            #  29    0x105dd7  1      OPC=1343  
  nop                            #  30    0x105dd8  1      OPC=1343  
  nop                            #  31    0x105dd9  1      OPC=1343  
  nop                            #  32    0x105dda  1      OPC=1343  
  nop                            #  33    0x105ddb  1      OPC=1343  
  nop                            #  34    0x105ddc  1      OPC=1343  
  nop                            #  35    0x105ddd  1      OPC=1343  
  nop                            #  36    0x105dde  1      OPC=1343  
  nop                            #  37    0x105ddf  1      OPC=1343  
  nop                            #  38    0x105de0  1      OPC=1343  
  nop                            #  39    0x105de1  1      OPC=1343  
  nop                            #  40    0x105de2  1      OPC=1343  
  nop                            #  41    0x105de3  1      OPC=1343  
  nop                            #  42    0x105de4  1      OPC=1343  
  nop                            #  43    0x105de5  1      OPC=1343  
  nop                            #  44    0x105de6  1      OPC=1343  
  callq .d_demangle_callback     #  45    0x105de7  5      OPC=260   
  cmpl $0x1, %eax                #  46    0x105dec  3      OPC=470   
  sbbl %eax, %eax                #  47    0x105def  2      OPC=2134  
  addl $0x8, %esp                #  48    0x105df1  3      OPC=65    
  addq %r15, %rsp                #  49    0x105df4  3      OPC=72    
  popq %r11                      #  50    0x105df7  2      OPC=1694  
  andl $0xfffffffe, %eax         #  51    0x105df9  6      OPC=131   
  nop                            #  52    0x105dff  1      OPC=1343  
  nop                            #  53    0x105e00  1      OPC=1343  
  nop                            #  54    0x105e01  1      OPC=1343  
  andl $0xffffffe0, %r11d        #  55    0x105e02  7      OPC=131   
  nop                            #  56    0x105e09  1      OPC=1343  
  nop                            #  57    0x105e0a  1      OPC=1343  
  nop                            #  58    0x105e0b  1      OPC=1343  
  nop                            #  59    0x105e0c  1      OPC=1343  
  addq %r15, %r11                #  60    0x105e0d  3      OPC=72    
  jmpq %r11                      #  61    0x105e10  3      OPC=928   
  nop                            #  62    0x105e13  1      OPC=1343  
  nop                            #  63    0x105e14  1      OPC=1343  
  nop                            #  64    0x105e15  1      OPC=1343  
  nop                            #  65    0x105e16  1      OPC=1343  
  nop                            #  66    0x105e17  1      OPC=1343  
  nop                            #  67    0x105e18  1      OPC=1343  
.L_105e00:                       #        0x105e19  0      OPC=0     
  addl $0x8, %esp                #  68    0x105e19  3      OPC=65    
  addq %r15, %rsp                #  69    0x105e1c  3      OPC=72    
  movl $0xfffffffd, %eax         #  70    0x105e1f  6      OPC=1155  
  popq %r11                      #  71    0x105e25  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  72    0x105e27  7      OPC=131   
  nop                            #  73    0x105e2e  1      OPC=1343  
  nop                            #  74    0x105e2f  1      OPC=1343  
  nop                            #  75    0x105e30  1      OPC=1343  
  nop                            #  76    0x105e31  1      OPC=1343  
  addq %r15, %r11                #  77    0x105e32  3      OPC=72    
  jmpq %r11                      #  78    0x105e35  3      OPC=928   
  nop                            #  79    0x105e38  1      OPC=1343  
  nop                            #  80    0x105e39  1      OPC=1343  
  nop                            #  81    0x105e3a  1      OPC=1343  
  nop                            #  82    0x105e3b  1      OPC=1343  
  nop                            #  83    0x105e3c  1      OPC=1343  
  nop                            #  84    0x105e3d  1      OPC=1343  
  nop                            #  85    0x105e3e  1      OPC=1343  
  nop                            #  86    0x105e3f  1      OPC=1343  
  nop                            #  87    0x105e40  1      OPC=1343  
                                                                     
.size __gcclibcxx_demangle_callback, .-__gcclibcxx_demangle_callback

