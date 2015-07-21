  .text
  .globl _ZNKSt5ctypeIwE10do_toupperEPwPKw
  .type _ZNKSt5ctypeIwE10do_toupperEPwPKw, @function

#! file-offset 0x13c9a0
#! rip-offset  0xfc9a0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIwE10do_toupperEPwPKw:  #        0xfc9a0  0      OPC=0     
  pushq %r12                         #  1     0xfc9a0  2      OPC=1861  
  movl %edx, %r12d                   #  2     0xfc9a2  3      OPC=1157  
  pushq %rbx                         #  3     0xfc9a5  1      OPC=1861  
  movl %esi, %ebx                    #  4     0xfc9a6  2      OPC=1157  
  subl $0x8, %esp                    #  5     0xfc9a8  3      OPC=2384  
  addq %r15, %rsp                    #  6     0xfc9ab  3      OPC=72    
  cmpl %r12d, %ebx                   #  7     0xfc9ae  3      OPC=472   
  jae .L_fca00                       #  8     0xfc9b1  6      OPC=869   
  nop                                #  9     0xfc9b7  1      OPC=1343  
  nop                                #  10    0xfc9b8  1      OPC=1343  
  nop                                #  11    0xfc9b9  1      OPC=1343  
  nop                                #  12    0xfc9ba  1      OPC=1343  
  nop                                #  13    0xfc9bb  1      OPC=1343  
  nop                                #  14    0xfc9bc  1      OPC=1343  
  nop                                #  15    0xfc9bd  1      OPC=1343  
  nop                                #  16    0xfc9be  1      OPC=1343  
  nop                                #  17    0xfc9bf  1      OPC=1343  
  nop                                #  18    0xfc9c0  1      OPC=1343  
  nop                                #  19    0xfc9c1  1      OPC=1343  
  nop                                #  20    0xfc9c2  1      OPC=1343  
  nop                                #  21    0xfc9c3  1      OPC=1343  
  nop                                #  22    0xfc9c4  1      OPC=1343  
  nop                                #  23    0xfc9c5  1      OPC=1343  
.L_fc9c0:                            #        0xfc9c6  0      OPC=0     
  movl %ebx, %ebx                    #  24    0xfc9c6  2      OPC=1157  
  movl (%r15,%rbx,1), %edi           #  25    0xfc9c8  4      OPC=1156  
  nop                                #  26    0xfc9cc  1      OPC=1343  
  nop                                #  27    0xfc9cd  1      OPC=1343  
  nop                                #  28    0xfc9ce  1      OPC=1343  
  nop                                #  29    0xfc9cf  1      OPC=1343  
  nop                                #  30    0xfc9d0  1      OPC=1343  
  nop                                #  31    0xfc9d1  1      OPC=1343  
  nop                                #  32    0xfc9d2  1      OPC=1343  
  nop                                #  33    0xfc9d3  1      OPC=1343  
  nop                                #  34    0xfc9d4  1      OPC=1343  
  nop                                #  35    0xfc9d5  1      OPC=1343  
  nop                                #  36    0xfc9d6  1      OPC=1343  
  nop                                #  37    0xfc9d7  1      OPC=1343  
  nop                                #  38    0xfc9d8  1      OPC=1343  
  nop                                #  39    0xfc9d9  1      OPC=1343  
  nop                                #  40    0xfc9da  1      OPC=1343  
  nop                                #  41    0xfc9db  1      OPC=1343  
  nop                                #  42    0xfc9dc  1      OPC=1343  
  nop                                #  43    0xfc9dd  1      OPC=1343  
  nop                                #  44    0xfc9de  1      OPC=1343  
  nop                                #  45    0xfc9df  1      OPC=1343  
  nop                                #  46    0xfc9e0  1      OPC=1343  
  callq .towupper                    #  47    0xfc9e1  5      OPC=260   
  movl %ebx, %ebx                    #  48    0xfc9e6  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)           #  49    0xfc9e8  4      OPC=1136  
  addl $0x4, %ebx                    #  50    0xfc9ec  3      OPC=65    
  cmpl %ebx, %r12d                   #  51    0xfc9ef  3      OPC=472   
  ja .L_fc9c0                        #  52    0xfc9f2  6      OPC=863   
  nop                                #  53    0xfc9f8  1      OPC=1343  
  nop                                #  54    0xfc9f9  1      OPC=1343  
  nop                                #  55    0xfc9fa  1      OPC=1343  
  nop                                #  56    0xfc9fb  1      OPC=1343  
  nop                                #  57    0xfc9fc  1      OPC=1343  
  nop                                #  58    0xfc9fd  1      OPC=1343  
  nop                                #  59    0xfc9fe  1      OPC=1343  
  nop                                #  60    0xfc9ff  1      OPC=1343  
  nop                                #  61    0xfca00  1      OPC=1343  
  nop                                #  62    0xfca01  1      OPC=1343  
  nop                                #  63    0xfca02  1      OPC=1343  
  nop                                #  64    0xfca03  1      OPC=1343  
  nop                                #  65    0xfca04  1      OPC=1343  
  nop                                #  66    0xfca05  1      OPC=1343  
  nop                                #  67    0xfca06  1      OPC=1343  
  nop                                #  68    0xfca07  1      OPC=1343  
  nop                                #  69    0xfca08  1      OPC=1343  
  nop                                #  70    0xfca09  1      OPC=1343  
  nop                                #  71    0xfca0a  1      OPC=1343  
  nop                                #  72    0xfca0b  1      OPC=1343  
.L_fca00:                            #        0xfca0c  0      OPC=0     
  addl $0x8, %esp                    #  73    0xfca0c  3      OPC=65    
  addq %r15, %rsp                    #  74    0xfca0f  3      OPC=72    
  movl %r12d, %eax                   #  75    0xfca12  3      OPC=1157  
  popq %rbx                          #  76    0xfca15  1      OPC=1694  
  popq %r12                          #  77    0xfca16  2      OPC=1694  
  popq %r11                          #  78    0xfca18  2      OPC=1694  
  andl $0xffffffe0, %r11d            #  79    0xfca1a  7      OPC=131   
  nop                                #  80    0xfca21  1      OPC=1343  
  nop                                #  81    0xfca22  1      OPC=1343  
  nop                                #  82    0xfca23  1      OPC=1343  
  nop                                #  83    0xfca24  1      OPC=1343  
  addq %r15, %r11                    #  84    0xfca25  3      OPC=72    
  jmpq %r11                          #  85    0xfca28  3      OPC=928   
  nop                                #  86    0xfca2b  1      OPC=1343  
  nop                                #  87    0xfca2c  1      OPC=1343  
  nop                                #  88    0xfca2d  1      OPC=1343  
  nop                                #  89    0xfca2e  1      OPC=1343  
  nop                                #  90    0xfca2f  1      OPC=1343  
  nop                                #  91    0xfca30  1      OPC=1343  
  nop                                #  92    0xfca31  1      OPC=1343  
  nop                                #  93    0xfca32  1      OPC=1343  
                                                                        
.size _ZNKSt5ctypeIwE10do_toupperEPwPKw, .-_ZNKSt5ctypeIwE10do_toupperEPwPKw

