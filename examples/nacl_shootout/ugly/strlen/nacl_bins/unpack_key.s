  .text
  .globl unpack_key
  .type unpack_key, @function

#! file-offset 0x63520
#! rip-offset  0x23520
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode    
.unpack_key:                           #        0x23520  0      OPC=0     
  movl %edx, %edx                      #  1     0x23520  2      OPC=1157  
  testl %esi, %esi                     #  2     0x23522  2      OPC=2436  
  jle .L_23580                         #  3     0x23524  6      OPC=919   
  nop                                  #  4     0x2352a  1      OPC=1343  
  nop                                  #  5     0x2352b  1      OPC=1343  
  leal (%rsi,%rdx,1), %eax             #  6     0x2352c  3      OPC=1066  
  movl %edx, %r9d                      #  7     0x2352f  3      OPC=1157  
  nop                                  #  8     0x23532  1      OPC=1343  
  nop                                  #  9     0x23533  1      OPC=1343  
  nop                                  #  10    0x23534  1      OPC=1343  
  nop                                  #  11    0x23535  1      OPC=1343  
  nop                                  #  12    0x23536  1      OPC=1343  
  nop                                  #  13    0x23537  1      OPC=1343  
  nop                                  #  14    0x23538  1      OPC=1343  
  nop                                  #  15    0x23539  1      OPC=1343  
  nop                                  #  16    0x2353a  1      OPC=1343  
  nop                                  #  17    0x2353b  1      OPC=1343  
  nop                                  #  18    0x2353c  1      OPC=1343  
  nop                                  #  19    0x2353d  1      OPC=1343  
  nop                                  #  20    0x2353e  1      OPC=1343  
  nop                                  #  21    0x2353f  1      OPC=1343  
  nop                                  #  22    0x23540  1      OPC=1343  
  nop                                  #  23    0x23541  1      OPC=1343  
  nop                                  #  24    0x23542  1      OPC=1343  
  nop                                  #  25    0x23543  1      OPC=1343  
  nop                                  #  26    0x23544  1      OPC=1343  
  nop                                  #  27    0x23545  1      OPC=1343  
.L_23540:                              #        0x23546  0      OPC=0     
  subl $0x1, %eax                      #  28    0x23546  3      OPC=2384  
  movl %eax, %ecx                      #  29    0x23549  2      OPC=1157  
  movq %rdi, %r8                       #  30    0x2354b  3      OPC=1162  
  andl $0x3, %r8d                      #  31    0x2354e  4      OPC=132   
  movl %r8d, %r8d                      #  32    0x23552  3      OPC=1157  
  movzbl 0x10020548(%r15,%r8,1), %r8d  #  33    0x23555  9      OPC=1302  
  movl %ecx, %ecx                      #  34    0x2355e  2      OPC=1157  
  movb %r8b, (%r15,%rcx,1)             #  35    0x23560  4      OPC=1141  
  xchgw %ax, %ax                       #  36    0x23564  2      OPC=3700  
  shrq $0x2, %rdi                      #  37    0x23566  4      OPC=2315  
  cmpl %r9d, %eax                      #  38    0x2356a  3      OPC=472   
  jne .L_23540                         #  39    0x2356d  6      OPC=963   
  nop                                  #  40    0x23573  1      OPC=1343  
  nop                                  #  41    0x23574  1      OPC=1343  
  nop                                  #  42    0x23575  1      OPC=1343  
  nop                                  #  43    0x23576  1      OPC=1343  
  nop                                  #  44    0x23577  1      OPC=1343  
  nop                                  #  45    0x23578  1      OPC=1343  
  nop                                  #  46    0x23579  1      OPC=1343  
  nop                                  #  47    0x2357a  1      OPC=1343  
  nop                                  #  48    0x2357b  1      OPC=1343  
  nop                                  #  49    0x2357c  1      OPC=1343  
  nop                                  #  50    0x2357d  1      OPC=1343  
  nop                                  #  51    0x2357e  1      OPC=1343  
  nop                                  #  52    0x2357f  1      OPC=1343  
  nop                                  #  53    0x23580  1      OPC=1343  
  nop                                  #  54    0x23581  1      OPC=1343  
  nop                                  #  55    0x23582  1      OPC=1343  
  nop                                  #  56    0x23583  1      OPC=1343  
  nop                                  #  57    0x23584  1      OPC=1343  
  nop                                  #  58    0x23585  1      OPC=1343  
  nop                                  #  59    0x23586  1      OPC=1343  
  nop                                  #  60    0x23587  1      OPC=1343  
  nop                                  #  61    0x23588  1      OPC=1343  
  nop                                  #  62    0x23589  1      OPC=1343  
  nop                                  #  63    0x2358a  1      OPC=1343  
  nop                                  #  64    0x2358b  1      OPC=1343  
.L_23580:                              #        0x2358c  0      OPC=0     
  addl %edx, %esi                      #  65    0x2358c  2      OPC=67    
  movl %esi, %esi                      #  66    0x2358e  2      OPC=1157  
  movb $0x0, (%r15,%rsi,1)             #  67    0x23590  5      OPC=1140  
  popq %r11                            #  68    0x23595  2      OPC=1694  
  andl $0xffffffe0, %r11d              #  69    0x23597  7      OPC=131   
  nop                                  #  70    0x2359e  1      OPC=1343  
  nop                                  #  71    0x2359f  1      OPC=1343  
  nop                                  #  72    0x235a0  1      OPC=1343  
  nop                                  #  73    0x235a1  1      OPC=1343  
  addq %r15, %r11                      #  74    0x235a2  3      OPC=72    
  jmpq %r11                            #  75    0x235a5  3      OPC=928   
  nop                                  #  76    0x235a8  1      OPC=1343  
  nop                                  #  77    0x235a9  1      OPC=1343  
  nop                                  #  78    0x235aa  1      OPC=1343  
  nop                                  #  79    0x235ab  1      OPC=1343  
  nop                                  #  80    0x235ac  1      OPC=1343  
  nop                                  #  81    0x235ad  1      OPC=1343  
  nop                                  #  82    0x235ae  1      OPC=1343  
  nop                                  #  83    0x235af  1      OPC=1343  
  nop                                  #  84    0x235b0  1      OPC=1343  
  nop                                  #  85    0x235b1  1      OPC=1343  
  nop                                  #  86    0x235b2  1      OPC=1343  
                                                                          
.size unpack_key, .-unpack_key

