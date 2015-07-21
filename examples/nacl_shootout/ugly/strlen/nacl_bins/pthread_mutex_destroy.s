  .text
  .globl pthread_mutex_destroy
  .type pthread_mutex_destroy, @function

#! file-offset 0x6cb00
#! rip-offset  0x2cb00
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.pthread_mutex_destroy:        #        0x2cb00  0      OPC=0     
  movl %edi, %edi              #  1     0x2cb00  2      OPC=1157  
  movl %edi, %edi              #  2     0x2cb02  2      OPC=1157  
  movl (%r15,%rdi,1), %eax     #  3     0x2cb04  4      OPC=1156  
  testl %eax, %eax             #  4     0x2cb08  2      OPC=2436  
  jne .L_2cb20                 #  5     0x2cb0a  6      OPC=963   
  nop                          #  6     0x2cb10  1      OPC=1343  
  nop                          #  7     0x2cb11  1      OPC=1343  
  movl %edi, %edi              #  8     0x2cb12  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax  #  9     0x2cb14  5      OPC=1156  
  testl %eax, %eax             #  10    0x2cb19  2      OPC=2436  
  je .L_2cb40                  #  11    0x2cb1b  6      OPC=893   
  nop                          #  12    0x2cb21  1      OPC=1343  
  nop                          #  13    0x2cb22  1      OPC=1343  
  nop                          #  14    0x2cb23  1      OPC=1343  
  nop                          #  15    0x2cb24  1      OPC=1343  
  nop                          #  16    0x2cb25  1      OPC=1343  
  nop                          #  17    0x2cb26  1      OPC=1343  
  nop                          #  18    0x2cb27  1      OPC=1343  
  nop                          #  19    0x2cb28  1      OPC=1343  
  nop                          #  20    0x2cb29  1      OPC=1343  
  nop                          #  21    0x2cb2a  1      OPC=1343  
  nop                          #  22    0x2cb2b  1      OPC=1343  
.L_2cb20:                      #        0x2cb2c  0      OPC=0     
  movl $0x10, %eax             #  23    0x2cb2c  5      OPC=1154  
  popq %r11                    #  24    0x2cb31  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  25    0x2cb33  7      OPC=131   
  nop                          #  26    0x2cb3a  1      OPC=1343  
  nop                          #  27    0x2cb3b  1      OPC=1343  
  nop                          #  28    0x2cb3c  1      OPC=1343  
  nop                          #  29    0x2cb3d  1      OPC=1343  
  addq %r15, %r11              #  30    0x2cb3e  3      OPC=72    
  jmpq %r11                    #  31    0x2cb41  3      OPC=928   
  nop                          #  32    0x2cb44  1      OPC=1343  
  nop                          #  33    0x2cb45  1      OPC=1343  
  nop                          #  34    0x2cb46  1      OPC=1343  
  nop                          #  35    0x2cb47  1      OPC=1343  
  nop                          #  36    0x2cb48  1      OPC=1343  
  nop                          #  37    0x2cb49  1      OPC=1343  
  nop                          #  38    0x2cb4a  1      OPC=1343  
  nop                          #  39    0x2cb4b  1      OPC=1343  
  nop                          #  40    0x2cb4c  1      OPC=1343  
  nop                          #  41    0x2cb4d  1      OPC=1343  
  nop                          #  42    0x2cb4e  1      OPC=1343  
  nop                          #  43    0x2cb4f  1      OPC=1343  
  nop                          #  44    0x2cb50  1      OPC=1343  
  nop                          #  45    0x2cb51  1      OPC=1343  
  nop                          #  46    0x2cb52  1      OPC=1343  
.L_2cb40:                      #        0x2cb53  0      OPC=0     
  movl %edi, %edi              #  47    0x2cb53  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rdi,1)  #  48    0x2cb55  9      OPC=1135  
  movl %edi, %edi              #  49    0x2cb5e  2      OPC=1157  
  movl $0x0, 0xc(%r15,%rdi,1)  #  50    0x2cb60  9      OPC=1135  
  popq %r11                    #  51    0x2cb69  2      OPC=1694  
  nop                          #  52    0x2cb6b  1      OPC=1343  
  nop                          #  53    0x2cb6c  1      OPC=1343  
  nop                          #  54    0x2cb6d  1      OPC=1343  
  nop                          #  55    0x2cb6e  1      OPC=1343  
  nop                          #  56    0x2cb6f  1      OPC=1343  
  nop                          #  57    0x2cb70  1      OPC=1343  
  nop                          #  58    0x2cb71  1      OPC=1343  
  nop                          #  59    0x2cb72  1      OPC=1343  
  andl $0xffffffe0, %r11d      #  60    0x2cb73  7      OPC=131   
  nop                          #  61    0x2cb7a  1      OPC=1343  
  nop                          #  62    0x2cb7b  1      OPC=1343  
  nop                          #  63    0x2cb7c  1      OPC=1343  
  nop                          #  64    0x2cb7d  1      OPC=1343  
  addq %r15, %r11              #  65    0x2cb7e  3      OPC=72    
  jmpq %r11                    #  66    0x2cb81  3      OPC=928   
  nop                          #  67    0x2cb84  1      OPC=1343  
  nop                          #  68    0x2cb85  1      OPC=1343  
  nop                          #  69    0x2cb86  1      OPC=1343  
  nop                          #  70    0x2cb87  1      OPC=1343  
  nop                          #  71    0x2cb88  1      OPC=1343  
  nop                          #  72    0x2cb89  1      OPC=1343  
  nop                          #  73    0x2cb8a  1      OPC=1343  
  nop                          #  74    0x2cb8b  1      OPC=1343  
  nop                          #  75    0x2cb8c  1      OPC=1343  
  nop                          #  76    0x2cb8d  1      OPC=1343  
  nop                          #  77    0x2cb8e  1      OPC=1343  
  nop                          #  78    0x2cb8f  1      OPC=1343  
  nop                          #  79    0x2cb90  1      OPC=1343  
  nop                          #  80    0x2cb91  1      OPC=1343  
  nop                          #  81    0x2cb92  1      OPC=1343  
  nop                          #  82    0x2cb93  1      OPC=1343  
  nop                          #  83    0x2cb94  1      OPC=1343  
  nop                          #  84    0x2cb95  1      OPC=1343  
  nop                          #  85    0x2cb96  1      OPC=1343  
  nop                          #  86    0x2cb97  1      OPC=1343  
  nop                          #  87    0x2cb98  1      OPC=1343  
  nop                          #  88    0x2cb99  1      OPC=1343  
                                                                  
.size pthread_mutex_destroy, .-pthread_mutex_destroy

