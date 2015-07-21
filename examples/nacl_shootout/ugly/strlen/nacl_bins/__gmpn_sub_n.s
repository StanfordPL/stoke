  .text
  .globl __gmpn_sub_n
  .type __gmpn_sub_n, @function

#! file-offset 0x72140
#! rip-offset  0x32140
#! capacity    128 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.__gmpn_sub_n:               #        0x32140  0      OPC=0     
  pushq %rbx                 #  1     0x32140  1      OPC=1861  
  movl %edi, %edi            #  2     0x32141  2      OPC=1157  
  movl %esi, %esi            #  3     0x32143  2      OPC=1157  
  movl %edx, %edx            #  4     0x32145  2      OPC=1157  
  xorl %eax, %eax            #  5     0x32147  2      OPC=3758  
  nop                        #  6     0x32149  1      OPC=1343  
  nop                        #  7     0x3214a  1      OPC=1343  
  nop                        #  8     0x3214b  1      OPC=1343  
  nop                        #  9     0x3214c  1      OPC=1343  
  nop                        #  10    0x3214d  1      OPC=1343  
  nop                        #  11    0x3214e  1      OPC=1343  
  nop                        #  12    0x3214f  1      OPC=1343  
  nop                        #  13    0x32150  1      OPC=1343  
  nop                        #  14    0x32151  1      OPC=1343  
  nop                        #  15    0x32152  1      OPC=1343  
  nop                        #  16    0x32153  1      OPC=1343  
  nop                        #  17    0x32154  1      OPC=1343  
  nop                        #  18    0x32155  1      OPC=1343  
  nop                        #  19    0x32156  1      OPC=1343  
  nop                        #  20    0x32157  1      OPC=1343  
  nop                        #  21    0x32158  1      OPC=1343  
  nop                        #  22    0x32159  1      OPC=1343  
  nop                        #  23    0x3215a  1      OPC=1343  
  nop                        #  24    0x3215b  1      OPC=1343  
  nop                        #  25    0x3215c  1      OPC=1343  
  nop                        #  26    0x3215d  1      OPC=1343  
  nop                        #  27    0x3215e  1      OPC=1343  
  nop                        #  28    0x3215f  1      OPC=1343  
.L_32160:                    #        0x32160  0      OPC=0     
  movl %esi, %esi            #  29    0x32160  2      OPC=1157  
  movl (%r15,%rsi,1), %r9d   #  30    0x32162  4      OPC=1156  
  movl %edx, %edx            #  31    0x32166  2      OPC=1157  
  movl (%r15,%rdx,1), %r8d   #  32    0x32168  4      OPC=1156  
  addl $0x4, %esi            #  33    0x3216c  3      OPC=65    
  addl $0x4, %edx            #  34    0x3216f  3      OPC=65    
  movl %r9d, %ebx            #  35    0x32172  3      OPC=1157  
  subl %r8d, %ebx            #  36    0x32175  3      OPC=2386  
  movl %ebx, %r10d           #  37    0x32178  3      OPC=1157  
  subl %eax, %r10d           #  38    0x3217b  3      OPC=2386  
  xchgw %ax, %ax             #  39    0x3217e  2      OPC=3700  
  setb %al                   #  40    0x32180  3      OPC=2169  
  cmpl %r9d, %ebx            #  41    0x32183  3      OPC=472   
  movl %edi, %edi            #  42    0x32186  2      OPC=1157  
  movl %r10d, (%r15,%rdi,1)  #  43    0x32188  4      OPC=1136  
  seta %r8b                  #  44    0x3218c  4      OPC=2163  
  addl $0x4, %edi            #  45    0x32190  3      OPC=65    
  orl %r8d, %eax             #  46    0x32193  3      OPC=1380  
  andl $0x1, %eax            #  47    0x32196  3      OPC=132   
  subl $0x1, %ecx            #  48    0x32199  3      OPC=2384  
  nop                        #  49    0x3219c  1      OPC=1343  
  nop                        #  50    0x3219d  1      OPC=1343  
  nop                        #  51    0x3219e  1      OPC=1343  
  nop                        #  52    0x3219f  1      OPC=1343  
  jne .L_32160               #  53    0x321a0  6      OPC=963   
  nop                        #  54    0x321a6  1      OPC=1343  
  nop                        #  55    0x321a7  1      OPC=1343  
  popq %rbx                  #  56    0x321a8  1      OPC=1694  
  popq %r11                  #  57    0x321a9  2      OPC=1694  
  andl $0xffffffe0, %r11d    #  58    0x321ab  7      OPC=131   
  nop                        #  59    0x321b2  1      OPC=1343  
  nop                        #  60    0x321b3  1      OPC=1343  
  nop                        #  61    0x321b4  1      OPC=1343  
  nop                        #  62    0x321b5  1      OPC=1343  
  addq %r15, %r11            #  63    0x321b6  3      OPC=72    
  jmpq %r11                  #  64    0x321b9  3      OPC=928   
  nop                        #  65    0x321bc  1      OPC=1343  
  nop                        #  66    0x321bd  1      OPC=1343  
  nop                        #  67    0x321be  1      OPC=1343  
  nop                        #  68    0x321bf  1      OPC=1343  
  nop                        #  69    0x321c0  1      OPC=1343  
  nop                        #  70    0x321c1  1      OPC=1343  
  nop                        #  71    0x321c2  1      OPC=1343  
  nop                        #  72    0x321c3  1      OPC=1343  
  nop                        #  73    0x321c4  1      OPC=1343  
  nop                        #  74    0x321c5  1      OPC=1343  
  nop                        #  75    0x321c6  1      OPC=1343  
  nop                        #  76    0x321c7  1      OPC=1343  
  nop                        #  77    0x321c8  1      OPC=1343  
  nop                        #  78    0x321c9  1      OPC=1343  
  nop                        #  79    0x321ca  1      OPC=1343  
  nop                        #  80    0x321cb  1      OPC=1343  
  nop                        #  81    0x321cc  1      OPC=1343  
                                                                
.size __gmpn_sub_n, .-__gmpn_sub_n

