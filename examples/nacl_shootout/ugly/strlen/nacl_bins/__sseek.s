  .text
  .globl __sseek
  .type __sseek, @function

#! file-offset 0x165d00
#! rip-offset  0x125d00
#! capacity    128 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.__sseek:                         #        0x125d00  0      OPC=0     
  pushq %rbx                      #  1     0x125d00  1      OPC=1861  
  movl %esi, %ebx                 #  2     0x125d01  2      OPC=1157  
  movslq %edx, %rsi               #  3     0x125d03  3      OPC=1289  
  movl %ebx, %ebx                 #  4     0x125d06  2      OPC=1157  
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x125d08  6      OPC=1279  
  movl %ecx, %edx                 #  6     0x125d0e  2      OPC=1157  
  nop                             #  7     0x125d10  1      OPC=1343  
  nop                             #  8     0x125d11  1      OPC=1343  
  nop                             #  9     0x125d12  1      OPC=1343  
  nop                             #  10    0x125d13  1      OPC=1343  
  nop                             #  11    0x125d14  1      OPC=1343  
  nop                             #  12    0x125d15  1      OPC=1343  
  nop                             #  13    0x125d16  1      OPC=1343  
  nop                             #  14    0x125d17  1      OPC=1343  
  nop                             #  15    0x125d18  1      OPC=1343  
  nop                             #  16    0x125d19  1      OPC=1343  
  nop                             #  17    0x125d1a  1      OPC=1343  
  callq .lseek                    #  18    0x125d1b  5      OPC=260   
  cmpq $0xff, %rax                #  19    0x125d20  4      OPC=475   
  je .L_125d60                    #  20    0x125d24  6      OPC=893   
  nop                             #  21    0x125d2a  1      OPC=1343  
  nop                             #  22    0x125d2b  1      OPC=1343  
  movl %ebx, %ebx                 #  23    0x125d2c  2      OPC=1157  
  orw $0x1000, 0xc(%r15,%rbx,1)   #  24    0x125d2e  8      OPC=1360  
  movl %ebx, %ebx                 #  25    0x125d36  2      OPC=1157  
  movq %rax, 0x50(%r15,%rbx,1)    #  26    0x125d38  5      OPC=1138  
  popq %rbx                       #  27    0x125d3d  1      OPC=1694  
  popq %r11                       #  28    0x125d3e  2      OPC=1694  
  nop                             #  29    0x125d40  1      OPC=1343  
  nop                             #  30    0x125d41  1      OPC=1343  
  nop                             #  31    0x125d42  1      OPC=1343  
  nop                             #  32    0x125d43  1      OPC=1343  
  nop                             #  33    0x125d44  1      OPC=1343  
  nop                             #  34    0x125d45  1      OPC=1343  
  andl $0xffffffe0, %r11d         #  35    0x125d46  7      OPC=131   
  nop                             #  36    0x125d4d  1      OPC=1343  
  nop                             #  37    0x125d4e  1      OPC=1343  
  nop                             #  38    0x125d4f  1      OPC=1343  
  nop                             #  39    0x125d50  1      OPC=1343  
  addq %r15, %r11                 #  40    0x125d51  3      OPC=72    
  jmpq %r11                       #  41    0x125d54  3      OPC=928   
  nop                             #  42    0x125d57  1      OPC=1343  
  nop                             #  43    0x125d58  1      OPC=1343  
  nop                             #  44    0x125d59  1      OPC=1343  
  nop                             #  45    0x125d5a  1      OPC=1343  
  nop                             #  46    0x125d5b  1      OPC=1343  
  nop                             #  47    0x125d5c  1      OPC=1343  
  nop                             #  48    0x125d5d  1      OPC=1343  
  nop                             #  49    0x125d5e  1      OPC=1343  
  nop                             #  50    0x125d5f  1      OPC=1343  
  nop                             #  51    0x125d60  1      OPC=1343  
  nop                             #  52    0x125d61  1      OPC=1343  
  nop                             #  53    0x125d62  1      OPC=1343  
  nop                             #  54    0x125d63  1      OPC=1343  
  nop                             #  55    0x125d64  1      OPC=1343  
  nop                             #  56    0x125d65  1      OPC=1343  
  nop                             #  57    0x125d66  1      OPC=1343  
  nop                             #  58    0x125d67  1      OPC=1343  
  nop                             #  59    0x125d68  1      OPC=1343  
  nop                             #  60    0x125d69  1      OPC=1343  
  nop                             #  61    0x125d6a  1      OPC=1343  
  nop                             #  62    0x125d6b  1      OPC=1343  
  nop                             #  63    0x125d6c  1      OPC=1343  
.L_125d60:                        #        0x125d6d  0      OPC=0     
  movl %ebx, %ebx                 #  64    0x125d6d  2      OPC=1157  
  andw $0xefff, 0xc(%r15,%rbx,1)  #  65    0x125d6f  8      OPC=114   
  popq %rbx                       #  66    0x125d77  1      OPC=1694  
  popq %r11                       #  67    0x125d78  2      OPC=1694  
  andl $0xffffffe0, %r11d         #  68    0x125d7a  7      OPC=131   
  nop                             #  69    0x125d81  1      OPC=1343  
  nop                             #  70    0x125d82  1      OPC=1343  
  nop                             #  71    0x125d83  1      OPC=1343  
  nop                             #  72    0x125d84  1      OPC=1343  
  addq %r15, %r11                 #  73    0x125d85  3      OPC=72    
  jmpq %r11                       #  74    0x125d88  3      OPC=928   
  nop                             #  75    0x125d8b  1      OPC=1343  
  nop                             #  76    0x125d8c  1      OPC=1343  
  nop                             #  77    0x125d8d  1      OPC=1343  
  nop                             #  78    0x125d8e  1      OPC=1343  
  nop                             #  79    0x125d8f  1      OPC=1343  
  nop                             #  80    0x125d90  1      OPC=1343  
  nop                             #  81    0x125d91  1      OPC=1343  
  nop                             #  82    0x125d92  1      OPC=1343  
  nop                             #  83    0x125d93  1      OPC=1343  
                                                                      
.size __sseek, .-__sseek

