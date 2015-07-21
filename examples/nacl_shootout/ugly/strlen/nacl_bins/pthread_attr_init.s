  .text
  .globl pthread_attr_init
  .type pthread_attr_init, @function

#! file-offset 0x6d240
#! rip-offset  0x2d240
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
.pthread_attr_init:                #        0x2d240  0      OPC=0     
  movl %edi, %edi                  #  1     0x2d240  2      OPC=1157  
  movl $0x16, %eax                 #  2     0x2d242  5      OPC=1154  
  testq %rdi, %rdi                 #  3     0x2d247  3      OPC=2438  
  je .L_2d280                      #  4     0x2d24a  6      OPC=893   
  nop                              #  5     0x2d250  1      OPC=1343  
  nop                              #  6     0x2d251  1      OPC=1343  
  movl %edi, %edi                  #  7     0x2d252  2      OPC=1157  
  movl $0x1, (%r15,%rdi,1)         #  8     0x2d254  8      OPC=1135  
  nop                              #  9     0x2d25c  1      OPC=1343  
  nop                              #  10    0x2d25d  1      OPC=1343  
  nop                              #  11    0x2d25e  1      OPC=1343  
  nop                              #  12    0x2d25f  1      OPC=1343  
  nop                              #  13    0x2d260  1      OPC=1343  
  nop                              #  14    0x2d261  1      OPC=1343  
  nop                              #  15    0x2d262  1      OPC=1343  
  nop                              #  16    0x2d263  1      OPC=1343  
  nop                              #  17    0x2d264  1      OPC=1343  
  nop                              #  18    0x2d265  1      OPC=1343  
  movl %edi, %edi                  #  19    0x2d266  2      OPC=1157  
  movl $0x80000, 0x4(%r15,%rdi,1)  #  20    0x2d268  9      OPC=1135  
  xorb %al, %al                    #  21    0x2d271  2      OPC=3767  
  nop                              #  22    0x2d273  1      OPC=1343  
  nop                              #  23    0x2d274  1      OPC=1343  
  nop                              #  24    0x2d275  1      OPC=1343  
  nop                              #  25    0x2d276  1      OPC=1343  
  nop                              #  26    0x2d277  1      OPC=1343  
  nop                              #  27    0x2d278  1      OPC=1343  
  nop                              #  28    0x2d279  1      OPC=1343  
  nop                              #  29    0x2d27a  1      OPC=1343  
  nop                              #  30    0x2d27b  1      OPC=1343  
  nop                              #  31    0x2d27c  1      OPC=1343  
  nop                              #  32    0x2d27d  1      OPC=1343  
  nop                              #  33    0x2d27e  1      OPC=1343  
  nop                              #  34    0x2d27f  1      OPC=1343  
  nop                              #  35    0x2d280  1      OPC=1343  
  nop                              #  36    0x2d281  1      OPC=1343  
  nop                              #  37    0x2d282  1      OPC=1343  
  nop                              #  38    0x2d283  1      OPC=1343  
  nop                              #  39    0x2d284  1      OPC=1343  
  nop                              #  40    0x2d285  1      OPC=1343  
.L_2d280:                          #        0x2d286  0      OPC=0     
  popq %r11                        #  41    0x2d286  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  42    0x2d288  7      OPC=131   
  nop                              #  43    0x2d28f  1      OPC=1343  
  nop                              #  44    0x2d290  1      OPC=1343  
  nop                              #  45    0x2d291  1      OPC=1343  
  nop                              #  46    0x2d292  1      OPC=1343  
  addq %r15, %r11                  #  47    0x2d293  3      OPC=72    
  jmpq %r11                        #  48    0x2d296  3      OPC=928   
  nop                              #  49    0x2d299  1      OPC=1343  
  nop                              #  50    0x2d29a  1      OPC=1343  
  nop                              #  51    0x2d29b  1      OPC=1343  
  nop                              #  52    0x2d29c  1      OPC=1343  
  nop                              #  53    0x2d29d  1      OPC=1343  
  nop                              #  54    0x2d29e  1      OPC=1343  
  nop                              #  55    0x2d29f  1      OPC=1343  
  nop                              #  56    0x2d2a0  1      OPC=1343  
  nop                              #  57    0x2d2a1  1      OPC=1343  
  nop                              #  58    0x2d2a2  1      OPC=1343  
  nop                              #  59    0x2d2a3  1      OPC=1343  
  nop                              #  60    0x2d2a4  1      OPC=1343  
  nop                              #  61    0x2d2a5  1      OPC=1343  
  nop                              #  62    0x2d2a6  1      OPC=1343  
  nop                              #  63    0x2d2a7  1      OPC=1343  
  nop                              #  64    0x2d2a8  1      OPC=1343  
  nop                              #  65    0x2d2a9  1      OPC=1343  
  nop                              #  66    0x2d2aa  1      OPC=1343  
  nop                              #  67    0x2d2ab  1      OPC=1343  
  nop                              #  68    0x2d2ac  1      OPC=1343  
                                                                      
.size pthread_attr_init, .-pthread_attr_init

