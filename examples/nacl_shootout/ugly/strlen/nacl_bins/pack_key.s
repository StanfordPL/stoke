  .text
  .globl pack_key
  .type pack_key, @function

#! file-offset 0x63480
#! rip-offset  0x23480
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
.pack_key:                              #        0x23480  0      OPC=0     
  movl %edi, %edi                       #  1     0x23480  2      OPC=1157  
  testl %esi, %esi                      #  2     0x23482  2      OPC=2436  
  jle .L_23500                          #  3     0x23484  6      OPC=919   
  nop                                   #  4     0x2348a  1      OPC=1343  
  nop                                   #  5     0x2348b  1      OPC=1343  
  movl %edi, %edi                       #  6     0x2348c  2      OPC=1157  
  movzbl (%r15,%rdi,1), %edx            #  7     0x2348e  5      OPC=1302  
  movl 0x1004d4cc(%rip), %r8d           #  8     0x23493  7      OPC=1156  
  xorl %eax, %eax                       #  9     0x2349a  2      OPC=3758  
  xorl %r9d, %r9d                       #  10    0x2349c  3      OPC=3758  
  nop                                   #  11    0x2349f  1      OPC=1343  
  nop                                   #  12    0x234a0  1      OPC=1343  
  nop                                   #  13    0x234a1  1      OPC=1343  
  nop                                   #  14    0x234a2  1      OPC=1343  
  nop                                   #  15    0x234a3  1      OPC=1343  
  nop                                   #  16    0x234a4  1      OPC=1343  
  nop                                   #  17    0x234a5  1      OPC=1343  
.L_234a0:                               #        0x234a6  0      OPC=0     
  andl $0x7, %edx                       #  18    0x234a6  3      OPC=132   
  movl %edx, %edx                       #  19    0x234a9  2      OPC=1157  
  movzbl 0x10020540(%r15,%rdx,1), %edx  #  20    0x234ab  9      OPC=1302  
  leaq (%rdx,%rax,4), %rax              #  21    0x234b4  4      OPC=1069  
  nop                                   #  22    0x234b8  1      OPC=1343  
  nop                                   #  23    0x234b9  1      OPC=1343  
  nop                                   #  24    0x234ba  1      OPC=1343  
  nop                                   #  25    0x234bb  1      OPC=1343  
  nop                                   #  26    0x234bc  1      OPC=1343  
  nop                                   #  27    0x234bd  1      OPC=1343  
  nop                                   #  28    0x234be  1      OPC=1343  
  nop                                   #  29    0x234bf  1      OPC=1343  
  nop                                   #  30    0x234c0  1      OPC=1343  
  nop                                   #  31    0x234c1  1      OPC=1343  
  nop                                   #  32    0x234c2  1      OPC=1343  
  nop                                   #  33    0x234c3  1      OPC=1343  
  nop                                   #  34    0x234c4  1      OPC=1343  
  nop                                   #  35    0x234c5  1      OPC=1343  
.L_234c0:                               #        0x234c6  0      OPC=0     
  addl $0x1, %edi                       #  36    0x234c6  3      OPC=65    
  movl %edi, %edi                       #  37    0x234c9  2      OPC=1157  
  movzbl (%r15,%rdi,1), %edx            #  38    0x234cb  5      OPC=1302  
  movsbl %dl, %ecx                      #  39    0x234d0  3      OPC=1282  
  addl %r8d, %ecx                       #  40    0x234d3  3      OPC=67    
  movl %ecx, %ecx                       #  41    0x234d6  2      OPC=1157  
  testb $0x8, 0x1(%r15,%rcx,1)          #  42    0x234d8  6      OPC=2430  
  jne .L_234c0                          #  43    0x234de  6      OPC=963   
  nop                                   #  44    0x234e4  1      OPC=1343  
  nop                                   #  45    0x234e5  1      OPC=1343  
  addl $0x1, %r9d                       #  46    0x234e6  4      OPC=65    
  xchgw %ax, %ax                        #  47    0x234ea  2      OPC=3700  
  cmpl %esi, %r9d                       #  48    0x234ec  3      OPC=472   
  jne .L_234a0                          #  49    0x234ef  6      OPC=963   
  nop                                   #  50    0x234f5  1      OPC=1343  
  nop                                   #  51    0x234f6  1      OPC=1343  
  popq %r11                             #  52    0x234f7  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  53    0x234f9  7      OPC=131   
  nop                                   #  54    0x23500  1      OPC=1343  
  nop                                   #  55    0x23501  1      OPC=1343  
  nop                                   #  56    0x23502  1      OPC=1343  
  nop                                   #  57    0x23503  1      OPC=1343  
  addq %r15, %r11                       #  58    0x23504  3      OPC=72    
  jmpq %r11                             #  59    0x23507  3      OPC=928   
  nop                                   #  60    0x2350a  1      OPC=1343  
  nop                                   #  61    0x2350b  1      OPC=1343  
  nop                                   #  62    0x2350c  1      OPC=1343  
  nop                                   #  63    0x2350d  1      OPC=1343  
  nop                                   #  64    0x2350e  1      OPC=1343  
  nop                                   #  65    0x2350f  1      OPC=1343  
  nop                                   #  66    0x23510  1      OPC=1343  
  nop                                   #  67    0x23511  1      OPC=1343  
  nop                                   #  68    0x23512  1      OPC=1343  
  nop                                   #  69    0x23513  1      OPC=1343  
  nop                                   #  70    0x23514  1      OPC=1343  
  nop                                   #  71    0x23515  1      OPC=1343  
  nop                                   #  72    0x23516  1      OPC=1343  
  nop                                   #  73    0x23517  1      OPC=1343  
  nop                                   #  74    0x23518  1      OPC=1343  
.L_23500:                               #        0x23519  0      OPC=0     
  xorl %eax, %eax                       #  75    0x23519  2      OPC=3758  
  popq %r11                             #  76    0x2351b  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  77    0x2351d  7      OPC=131   
  nop                                   #  78    0x23524  1      OPC=1343  
  nop                                   #  79    0x23525  1      OPC=1343  
  nop                                   #  80    0x23526  1      OPC=1343  
  nop                                   #  81    0x23527  1      OPC=1343  
  addq %r15, %r11                       #  82    0x23528  3      OPC=72    
  jmpq %r11                             #  83    0x2352b  3      OPC=928   
  nop                                   #  84    0x2352e  1      OPC=1343  
  nop                                   #  85    0x2352f  1      OPC=1343  
  nop                                   #  86    0x23530  1      OPC=1343  
  nop                                   #  87    0x23531  1      OPC=1343  
  nop                                   #  88    0x23532  1      OPC=1343  
  nop                                   #  89    0x23533  1      OPC=1343  
  nop                                   #  90    0x23534  1      OPC=1343  
  nop                                   #  91    0x23535  1      OPC=1343  
  nop                                   #  92    0x23536  1      OPC=1343  
  nop                                   #  93    0x23537  1      OPC=1343  
  nop                                   #  94    0x23538  1      OPC=1343  
  nop                                   #  95    0x23539  1      OPC=1343  
  nop                                   #  96    0x2353a  1      OPC=1343  
  nop                                   #  97    0x2353b  1      OPC=1343  
  nop                                   #  98    0x2353c  1      OPC=1343  
  nop                                   #  99    0x2353d  1      OPC=1343  
  nop                                   #  100   0x2353e  1      OPC=1343  
  nop                                   #  101   0x2353f  1      OPC=1343  
                                                                           
.size pack_key, .-pack_key

