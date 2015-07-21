  .text
  .globl Grow
  .type Grow, @function

#! file-offset 0x66fe0
#! rip-offset  0x26fe0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.Grow:                         #        0x26fe0  0      OPC=0     
  pushq %rbx                   #  1     0x26fe0  1      OPC=1861  
  movl %edi, %ebx              #  2     0x26fe1  2      OPC=1157  
  movl %ebx, %ebx              #  3     0x26fe3  2      OPC=1157  
  movl 0x4(%r15,%rbx,1), %eax  #  4     0x26fe5  5      OPC=1156  
  cmpl $0x1ff, %eax            #  5     0x26fea  5      OPC=451   
  jle .L_27040                 #  6     0x26fef  6      OPC=919   
  nop                          #  7     0x26ff5  1      OPC=1343  
  nop                          #  8     0x26ff6  1      OPC=1343  
  movl $0x200, %edx            #  9     0x26ff7  5      OPC=1154  
  nop                          #  10    0x26ffc  1      OPC=1343  
  nop                          #  11    0x26ffd  1      OPC=1343  
  nop                          #  12    0x26ffe  1      OPC=1343  
  nop                          #  13    0x26fff  1      OPC=1343  
  nop                          #  14    0x27000  1      OPC=1343  
  nop                          #  15    0x27001  1      OPC=1343  
  nop                          #  16    0x27002  1      OPC=1343  
  nop                          #  17    0x27003  1      OPC=1343  
  nop                          #  18    0x27004  1      OPC=1343  
  nop                          #  19    0x27005  1      OPC=1343  
.L_27000:                      #        0x27006  0      OPC=0     
  leal (%rdx,%rax,1), %eax     #  20    0x27006  3      OPC=1066  
  movl %ebx, %ebx              #  21    0x27009  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)  #  22    0x2700b  5      OPC=1136  
  leal (,%rax,4), %esi         #  23    0x27010  7      OPC=1066  
  movl %ebx, %ebx              #  24    0x27017  2      OPC=1157  
  movl (%r15,%rbx,1), %edi     #  25    0x27019  4      OPC=1156  
  nop                          #  26    0x2701d  1      OPC=1343  
  nop                          #  27    0x2701e  1      OPC=1343  
  nop                          #  28    0x2701f  1      OPC=1343  
  nop                          #  29    0x27020  1      OPC=1343  
  callq .realloc               #  30    0x27021  5      OPC=260   
  movl %eax, %eax              #  31    0x27026  2      OPC=1157  
  movl %ebx, %ebx              #  32    0x27028  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)     #  33    0x2702a  4      OPC=1136  
  testq %rax, %rax             #  34    0x2702e  3      OPC=2438  
  je .L_27060                  #  35    0x27031  6      OPC=893   
  nop                          #  36    0x27037  1      OPC=1343  
  nop                          #  37    0x27038  1      OPC=1343  
  popq %rbx                    #  38    0x27039  1      OPC=1694  
  popq %r11                    #  39    0x2703a  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  40    0x2703c  7      OPC=131   
  nop                          #  41    0x27043  1      OPC=1343  
  nop                          #  42    0x27044  1      OPC=1343  
  nop                          #  43    0x27045  1      OPC=1343  
  nop                          #  44    0x27046  1      OPC=1343  
  addq %r15, %r11              #  45    0x27047  3      OPC=72    
  jmpq %r11                    #  46    0x2704a  3      OPC=928   
  nop                          #  47    0x2704d  1      OPC=1343  
  nop                          #  48    0x2704e  1      OPC=1343  
  nop                          #  49    0x2704f  1      OPC=1343  
  nop                          #  50    0x27050  1      OPC=1343  
  nop                          #  51    0x27051  1      OPC=1343  
  nop                          #  52    0x27052  1      OPC=1343  
.L_27040:                      #        0x27053  0      OPC=0     
  movl $0x2, %edx              #  53    0x27053  5      OPC=1154  
  cmpl $0x2, %eax              #  54    0x27058  3      OPC=470   
  cmovgel %eax, %edx           #  55    0x2705b  3      OPC=314   
  jmpq .L_27000                #  56    0x2705e  5      OPC=930   
  nop                          #  57    0x27063  1      OPC=1343  
  nop                          #  58    0x27064  1      OPC=1343  
  nop                          #  59    0x27065  1      OPC=1343  
  nop                          #  60    0x27066  1      OPC=1343  
  nop                          #  61    0x27067  1      OPC=1343  
  nop                          #  62    0x27068  1      OPC=1343  
  nop                          #  63    0x27069  1      OPC=1343  
  nop                          #  64    0x2706a  1      OPC=1343  
  nop                          #  65    0x2706b  1      OPC=1343  
  nop                          #  66    0x2706c  1      OPC=1343  
  nop                          #  67    0x2706d  1      OPC=1343  
  nop                          #  68    0x2706e  1      OPC=1343  
  nop                          #  69    0x2706f  1      OPC=1343  
  nop                          #  70    0x27070  1      OPC=1343  
  nop                          #  71    0x27071  1      OPC=1343  
  nop                          #  72    0x27072  1      OPC=1343  
  nop                          #  73    0x27073  1      OPC=1343  
  nop                          #  74    0x27074  1      OPC=1343  
  nop                          #  75    0x27075  1      OPC=1343  
  nop                          #  76    0x27076  1      OPC=1343  
  nop                          #  77    0x27077  1      OPC=1343  
.L_27060:                      #        0x27078  0      OPC=0     
  movl $0x10020ae1, %edi       #  78    0x27078  5      OPC=1154  
  popq %rbx                    #  79    0x2707d  1      OPC=1694  
  jmpq .Error                  #  80    0x2707e  5      OPC=930   
  nop                          #  81    0x27083  1      OPC=1343  
  nop                          #  82    0x27084  1      OPC=1343  
  nop                          #  83    0x27085  1      OPC=1343  
  nop                          #  84    0x27086  1      OPC=1343  
  nop                          #  85    0x27087  1      OPC=1343  
  nop                          #  86    0x27088  1      OPC=1343  
  nop                          #  87    0x27089  1      OPC=1343  
  nop                          #  88    0x2708a  1      OPC=1343  
  nop                          #  89    0x2708b  1      OPC=1343  
  nop                          #  90    0x2708c  1      OPC=1343  
  nop                          #  91    0x2708d  1      OPC=1343  
  nop                          #  92    0x2708e  1      OPC=1343  
  nop                          #  93    0x2708f  1      OPC=1343  
  nop                          #  94    0x27090  1      OPC=1343  
  nop                          #  95    0x27091  1      OPC=1343  
  nop                          #  96    0x27092  1      OPC=1343  
  nop                          #  97    0x27093  1      OPC=1343  
  nop                          #  98    0x27094  1      OPC=1343  
  nop                          #  99    0x27095  1      OPC=1343  
  nop                          #  100   0x27096  1      OPC=1343  
  nop                          #  101   0x27097  1      OPC=1343  
                                                                  
.size Grow, .-Grow

