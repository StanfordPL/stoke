  .text
  .globl release
  .type release, @function

#! file-offset 0x65520
#! rip-offset  0x25520
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
.release:                          #        0x25520  0      OPC=0     
  subl $0x8, %esp                  #  1     0x25520  3      OPC=2384  
  addq %r15, %rsp                  #  2     0x25523  3      OPC=72    
  nop                              #  3     0x25526  1      OPC=1343  
  nop                              #  4     0x25527  1      OPC=1343  
  nop                              #  5     0x25528  1      OPC=1343  
  nop                              #  6     0x25529  1      OPC=1343  
  nop                              #  7     0x2552a  1      OPC=1343  
  nop                              #  8     0x2552b  1      OPC=1343  
  nop                              #  9     0x2552c  1      OPC=1343  
  nop                              #  10    0x2552d  1      OPC=1343  
  nop                              #  11    0x2552e  1      OPC=1343  
  nop                              #  12    0x2552f  1      OPC=1343  
  nop                              #  13    0x25530  1      OPC=1343  
  nop                              #  14    0x25531  1      OPC=1343  
  nop                              #  15    0x25532  1      OPC=1343  
  nop                              #  16    0x25533  1      OPC=1343  
  nop                              #  17    0x25534  1      OPC=1343  
  nop                              #  18    0x25535  1      OPC=1343  
  nop                              #  19    0x25536  1      OPC=1343  
  nop                              #  20    0x25537  1      OPC=1343  
  nop                              #  21    0x25538  1      OPC=1343  
  nop                              #  22    0x25539  1      OPC=1343  
  nop                              #  23    0x2553a  1      OPC=1343  
  callq .findtcb                   #  24    0x2553b  5      OPC=260   
  movl %eax, %edx                  #  25    0x25540  2      OPC=1157  
  testq %rdx, %rdx                 #  26    0x25542  3      OPC=2438  
  je .L_25580                      #  27    0x25545  6      OPC=893   
  nop                              #  28    0x2554b  1      OPC=1343  
  nop                              #  29    0x2554c  1      OPC=1343  
  movl %edx, %edx                  #  30    0x2554d  2      OPC=1157  
  andl $0xfffb, 0x10(%r15,%rdx,1)  #  31    0x2554f  9      OPC=117   
  movl 0x10053c50(%rip), %eax      #  32    0x25558  6      OPC=1156  
  movl %edx, %edx                  #  33    0x2555e  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %ecx      #  34    0x25560  5      OPC=1156  
  nop                              #  35    0x25565  1      OPC=1343  
  movl %eax, %eax                  #  36    0x25566  2      OPC=1157  
  cmpl 0x8(%r15,%rax,1), %ecx      #  37    0x25568  5      OPC=471   
  jg .L_25580                      #  38    0x2556d  6      OPC=901   
  nop                              #  39    0x25573  1      OPC=1343  
  nop                              #  40    0x25574  1      OPC=1343  
  addl $0x8, %esp                  #  41    0x25575  3      OPC=65    
  addq %r15, %rsp                  #  42    0x25578  3      OPC=72    
  popq %r11                        #  43    0x2557b  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  44    0x2557d  7      OPC=131   
  nop                              #  45    0x25584  1      OPC=1343  
  nop                              #  46    0x25585  1      OPC=1343  
  nop                              #  47    0x25586  1      OPC=1343  
  nop                              #  48    0x25587  1      OPC=1343  
  addq %r15, %r11                  #  49    0x25588  3      OPC=72    
  jmpq %r11                        #  50    0x2558b  3      OPC=928   
  nop                              #  51    0x2558e  1      OPC=1343  
  nop                              #  52    0x2558f  1      OPC=1343  
  nop                              #  53    0x25590  1      OPC=1343  
  nop                              #  54    0x25591  1      OPC=1343  
  nop                              #  55    0x25592  1      OPC=1343  
.L_25580:                          #        0x25593  0      OPC=0     
  movq %rdx, %rax                  #  56    0x25593  3      OPC=1162  
  addl $0x8, %esp                  #  57    0x25596  3      OPC=65    
  addq %r15, %rsp                  #  58    0x25599  3      OPC=72    
  popq %r11                        #  59    0x2559c  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  60    0x2559e  7      OPC=131   
  nop                              #  61    0x255a5  1      OPC=1343  
  nop                              #  62    0x255a6  1      OPC=1343  
  nop                              #  63    0x255a7  1      OPC=1343  
  nop                              #  64    0x255a8  1      OPC=1343  
  addq %r15, %r11                  #  65    0x255a9  3      OPC=72    
  jmpq %r11                        #  66    0x255ac  3      OPC=928   
  nop                              #  67    0x255af  1      OPC=1343  
  nop                              #  68    0x255b0  1      OPC=1343  
  nop                              #  69    0x255b1  1      OPC=1343  
  nop                              #  70    0x255b2  1      OPC=1343  
  nop                              #  71    0x255b3  1      OPC=1343  
  nop                              #  72    0x255b4  1      OPC=1343  
  nop                              #  73    0x255b5  1      OPC=1343  
  nop                              #  74    0x255b6  1      OPC=1343  
  nop                              #  75    0x255b7  1      OPC=1343  
  nop                              #  76    0x255b8  1      OPC=1343  
  nop                              #  77    0x255b9  1      OPC=1343  
                                                                      
.size release, .-release

