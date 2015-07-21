  .text
  .globl __libnacl_irt_dev_filename_init
  .type __libnacl_irt_dev_filename_init, @function

#! file-offset 0x198000
#! rip-offset  0x158000
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.__libnacl_irt_dev_filename_init:  #        0x158000  0      OPC=0     
  subl $0x8, %esp                  #  1     0x158000  3      OPC=2384  
  addq %r15, %rsp                  #  2     0x158003  3      OPC=72    
  movl $0x40, %edx                 #  3     0x158006  5      OPC=1154  
  movl $0x10079280, %esi           #  4     0x15800b  5      OPC=1154  
  movl $0x1004b5d6, %edi           #  5     0x158010  5      OPC=1154  
  nop                              #  6     0x158015  1      OPC=1343  
  nop                              #  7     0x158016  1      OPC=1343  
  nop                              #  8     0x158017  1      OPC=1343  
  nop                              #  9     0x158018  1      OPC=1343  
  nop                              #  10    0x158019  1      OPC=1343  
  nop                              #  11    0x15801a  1      OPC=1343  
  callq .__libnacl_irt_query       #  12    0x15801b  5      OPC=260   
  testl %eax, %eax                 #  13    0x158020  2      OPC=2436  
  je .L_158060                     #  14    0x158022  6      OPC=893   
  nop                              #  15    0x158028  1      OPC=1343  
  nop                              #  16    0x158029  1      OPC=1343  
  nop                              #  17    0x15802a  1      OPC=1343  
  nop                              #  18    0x15802b  1      OPC=1343  
  nop                              #  19    0x15802c  1      OPC=1343  
  nop                              #  20    0x15802d  1      OPC=1343  
  nop                              #  21    0x15802e  1      OPC=1343  
  nop                              #  22    0x15802f  1      OPC=1343  
  nop                              #  23    0x158030  1      OPC=1343  
  nop                              #  24    0x158031  1      OPC=1343  
  nop                              #  25    0x158032  1      OPC=1343  
  nop                              #  26    0x158033  1      OPC=1343  
  nop                              #  27    0x158034  1      OPC=1343  
  nop                              #  28    0x158035  1      OPC=1343  
  nop                              #  29    0x158036  1      OPC=1343  
  nop                              #  30    0x158037  1      OPC=1343  
  nop                              #  31    0x158038  1      OPC=1343  
  nop                              #  32    0x158039  1      OPC=1343  
  nop                              #  33    0x15803a  1      OPC=1343  
  nop                              #  34    0x15803b  1      OPC=1343  
  nop                              #  35    0x15803c  1      OPC=1343  
  nop                              #  36    0x15803d  1      OPC=1343  
  nop                              #  37    0x15803e  1      OPC=1343  
  nop                              #  38    0x15803f  1      OPC=1343  
  nop                              #  39    0x158040  1      OPC=1343  
  nop                              #  40    0x158041  1      OPC=1343  
  nop                              #  41    0x158042  1      OPC=1343  
  nop                              #  42    0x158043  1      OPC=1343  
  nop                              #  43    0x158044  1      OPC=1343  
  nop                              #  44    0x158045  1      OPC=1343  
.L_158040:                         #        0x158046  0      OPC=0     
  addl $0x8, %esp                  #  45    0x158046  3      OPC=65    
  addq %r15, %rsp                  #  46    0x158049  3      OPC=72    
  popq %r11                        #  47    0x15804c  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  48    0x15804e  7      OPC=131   
  nop                              #  49    0x158055  1      OPC=1343  
  nop                              #  50    0x158056  1      OPC=1343  
  nop                              #  51    0x158057  1      OPC=1343  
  nop                              #  52    0x158058  1      OPC=1343  
  addq %r15, %r11                  #  53    0x158059  3      OPC=72    
  jmpq %r11                        #  54    0x15805c  3      OPC=928   
  nop                              #  55    0x15805f  1      OPC=1343  
  nop                              #  56    0x158060  1      OPC=1343  
  nop                              #  57    0x158061  1      OPC=1343  
  nop                              #  58    0x158062  1      OPC=1343  
  nop                              #  59    0x158063  1      OPC=1343  
  nop                              #  60    0x158064  1      OPC=1343  
  nop                              #  61    0x158065  1      OPC=1343  
  nop                              #  62    0x158066  1      OPC=1343  
  nop                              #  63    0x158067  1      OPC=1343  
  nop                              #  64    0x158068  1      OPC=1343  
  nop                              #  65    0x158069  1      OPC=1343  
  nop                              #  66    0x15806a  1      OPC=1343  
  nop                              #  67    0x15806b  1      OPC=1343  
  nop                              #  68    0x15806c  1      OPC=1343  
.L_158060:                         #        0x15806d  0      OPC=0     
  movl $0x1c, %edx                 #  69    0x15806d  5      OPC=1154  
  movl $0x10079280, %esi           #  70    0x158072  5      OPC=1154  
  movl $0x1004b5f0, %edi           #  71    0x158077  5      OPC=1154  
  nop                              #  72    0x15807c  1      OPC=1343  
  nop                              #  73    0x15807d  1      OPC=1343  
  nop                              #  74    0x15807e  1      OPC=1343  
  nop                              #  75    0x15807f  1      OPC=1343  
  nop                              #  76    0x158080  1      OPC=1343  
  nop                              #  77    0x158081  1      OPC=1343  
  nop                              #  78    0x158082  1      OPC=1343  
  nop                              #  79    0x158083  1      OPC=1343  
  nop                              #  80    0x158084  1      OPC=1343  
  nop                              #  81    0x158085  1      OPC=1343  
  nop                              #  82    0x158086  1      OPC=1343  
  nop                              #  83    0x158087  1      OPC=1343  
  callq .__libnacl_irt_query       #  84    0x158088  5      OPC=260   
  testl %eax, %eax                 #  85    0x15808d  2      OPC=2436  
  jne .L_158040                    #  86    0x15808f  6      OPC=963   
  nop                              #  87    0x158095  1      OPC=1343  
  nop                              #  88    0x158096  1      OPC=1343  
  movl $0x8, %edx                  #  89    0x158097  5      OPC=1154  
  movl $0x10079280, %esi           #  90    0x15809c  5      OPC=1154  
  movl $0x1004b60a, %edi           #  91    0x1580a1  5      OPC=1154  
  addl $0x8, %esp                  #  92    0x1580a6  3      OPC=65    
  addq %r15, %rsp                  #  93    0x1580a9  3      OPC=72    
  jmpq .__libnacl_irt_query        #  94    0x1580ac  5      OPC=930   
  nop                              #  95    0x1580b1  1      OPC=1343  
  nop                              #  96    0x1580b2  1      OPC=1343  
                                                                       
.size __libnacl_irt_dev_filename_init, .-__libnacl_irt_dev_filename_init

