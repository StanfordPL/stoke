  .text
  .globl pthread_setschedprio
  .type pthread_setschedprio, @function

#! file-offset 0x6de20
#! rip-offset  0x2de20
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.pthread_setschedprio:         #        0x2de20  0      OPC=0     
  movq %rbx, -0x10(%rsp)       #  1     0x2de20  5      OPC=1138  
  movq %r12, -0x8(%rsp)        #  2     0x2de25  5      OPC=1138  
  movl %edi, %ebx              #  3     0x2de2a  2      OPC=1157  
  subl $0x18, %esp             #  4     0x2de2c  3      OPC=2384  
  addq %r15, %rsp              #  5     0x2de2f  3      OPC=72    
  movl %esi, %r12d             #  6     0x2de32  3      OPC=1157  
  nop                          #  7     0x2de35  1      OPC=1343  
  nop                          #  8     0x2de36  1      OPC=1343  
  nop                          #  9     0x2de37  1      OPC=1343  
  nop                          #  10    0x2de38  1      OPC=1343  
  nop                          #  11    0x2de39  1      OPC=1343  
  nop                          #  12    0x2de3a  1      OPC=1343  
  callq .pthread_self          #  13    0x2de3b  5      OPC=260   
  cmpl %ebx, %eax              #  14    0x2de40  2      OPC=472   
  je .L_2de80                  #  15    0x2de42  6      OPC=893   
  nop                          #  16    0x2de48  1      OPC=1343  
  nop                          #  17    0x2de49  1      OPC=1343  
  movq 0x8(%rsp), %rbx         #  18    0x2de4a  5      OPC=1161  
  movq 0x10(%rsp), %r12        #  19    0x2de4f  5      OPC=1161  
  addl $0x18, %esp             #  20    0x2de54  3      OPC=65    
  addq %r15, %rsp              #  21    0x2de57  3      OPC=72    
  popq %r11                    #  22    0x2de5a  2      OPC=1694  
  movl $0x1, %eax              #  23    0x2de5c  5      OPC=1154  
  nop                          #  24    0x2de61  1      OPC=1343  
  nop                          #  25    0x2de62  1      OPC=1343  
  nop                          #  26    0x2de63  1      OPC=1343  
  nop                          #  27    0x2de64  1      OPC=1343  
  nop                          #  28    0x2de65  1      OPC=1343  
  andl $0xffffffe0, %r11d      #  29    0x2de66  7      OPC=131   
  nop                          #  30    0x2de6d  1      OPC=1343  
  nop                          #  31    0x2de6e  1      OPC=1343  
  nop                          #  32    0x2de6f  1      OPC=1343  
  nop                          #  33    0x2de70  1      OPC=1343  
  addq %r15, %r11              #  34    0x2de71  3      OPC=72    
  jmpq %r11                    #  35    0x2de74  3      OPC=928   
  nop                          #  36    0x2de77  1      OPC=1343  
  nop                          #  37    0x2de78  1      OPC=1343  
  nop                          #  38    0x2de79  1      OPC=1343  
  nop                          #  39    0x2de7a  1      OPC=1343  
  nop                          #  40    0x2de7b  1      OPC=1343  
  nop                          #  41    0x2de7c  1      OPC=1343  
  nop                          #  42    0x2de7d  1      OPC=1343  
  nop                          #  43    0x2de7e  1      OPC=1343  
  nop                          #  44    0x2de7f  1      OPC=1343  
  nop                          #  45    0x2de80  1      OPC=1343  
  nop                          #  46    0x2de81  1      OPC=1343  
  nop                          #  47    0x2de82  1      OPC=1343  
  nop                          #  48    0x2de83  1      OPC=1343  
  nop                          #  49    0x2de84  1      OPC=1343  
  nop                          #  50    0x2de85  1      OPC=1343  
  nop                          #  51    0x2de86  1      OPC=1343  
  nop                          #  52    0x2de87  1      OPC=1343  
  nop                          #  53    0x2de88  1      OPC=1343  
  nop                          #  54    0x2de89  1      OPC=1343  
  nop                          #  55    0x2de8a  1      OPC=1343  
  nop                          #  56    0x2de8b  1      OPC=1343  
  nop                          #  57    0x2de8c  1      OPC=1343  
.L_2de80:                      #        0x2de8d  0      OPC=0     
  movl 0x1004b39a(%rip), %eax  #  58    0x2de8d  6      OPC=1156  
  movl %r12d, %edi             #  59    0x2de93  3      OPC=1157  
  movq 0x8(%rsp), %rbx         #  60    0x2de96  5      OPC=1161  
  movq 0x10(%rsp), %r12        #  61    0x2de9b  5      OPC=1161  
  addl $0x18, %esp             #  62    0x2dea0  3      OPC=65    
  addq %r15, %rsp              #  63    0x2dea3  3      OPC=72    
  nop                          #  64    0x2dea6  1      OPC=1343  
  nop                          #  65    0x2dea7  1      OPC=1343  
  nop                          #  66    0x2dea8  1      OPC=1343  
  nop                          #  67    0x2dea9  1      OPC=1343  
  nop                          #  68    0x2deaa  1      OPC=1343  
  nop                          #  69    0x2deab  1      OPC=1343  
  nop                          #  70    0x2deac  1      OPC=1343  
  andl $0xffffffe0, %eax       #  71    0x2dead  6      OPC=131   
  nop                          #  72    0x2deb3  1      OPC=1343  
  nop                          #  73    0x2deb4  1      OPC=1343  
  nop                          #  74    0x2deb5  1      OPC=1343  
  addq %r15, %rax              #  75    0x2deb6  3      OPC=72    
  jmpq %rax                    #  76    0x2deb9  2      OPC=928   
  nop                          #  77    0x2debb  1      OPC=1343  
  nop                          #  78    0x2debc  1      OPC=1343  
  nop                          #  79    0x2debd  1      OPC=1343  
  nop                          #  80    0x2debe  1      OPC=1343  
  nop                          #  81    0x2debf  1      OPC=1343  
  nop                          #  82    0x2dec0  1      OPC=1343  
  nop                          #  83    0x2dec1  1      OPC=1343  
  nop                          #  84    0x2dec2  1      OPC=1343  
  nop                          #  85    0x2dec3  1      OPC=1343  
  nop                          #  86    0x2dec4  1      OPC=1343  
  nop                          #  87    0x2dec5  1      OPC=1343  
  nop                          #  88    0x2dec6  1      OPC=1343  
  nop                          #  89    0x2dec7  1      OPC=1343  
  nop                          #  90    0x2dec8  1      OPC=1343  
  nop                          #  91    0x2dec9  1      OPC=1343  
  nop                          #  92    0x2deca  1      OPC=1343  
  nop                          #  93    0x2decb  1      OPC=1343  
  nop                          #  94    0x2decc  1      OPC=1343  
  nop                          #  95    0x2decd  1      OPC=1343  
  nop                          #  96    0x2dece  1      OPC=1343  
  nop                          #  97    0x2decf  1      OPC=1343  
  nop                          #  98    0x2ded0  1      OPC=1343  
  nop                          #  99    0x2ded1  1      OPC=1343  
  nop                          #  100   0x2ded2  1      OPC=1343  
                                                                  
.size pthread_setschedprio, .-pthread_setschedprio

