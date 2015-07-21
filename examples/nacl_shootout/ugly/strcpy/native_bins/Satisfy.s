  .text
  .globl Satisfy
  .type Satisfy, @function

#! file-offset 0x654d
#! rip-offset  0x40654d
#! capacity    222 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.Satisfy:                         #        0x40654d  0      OPC=0     
  pushq %rbp                      #  1     0x40654d  1      OPC=1861  
  pushq %rbx                      #  2     0x40654e  1      OPC=1861  
  subq $0x8, %rsp                 #  3     0x40654f  4      OPC=2389  
  movl 0xc(%rdi), %r9d            #  4     0x406553  4      OPC=1156  
  movsbl 0x11(%rdi), %eax         #  5     0x406557  4      OPC=1280  
  subl $0x1, %eax                 #  6     0x40655b  3      OPC=2384  
  js .L_406605                    #  7     0x40655e  6      OPC=1043  
  movq 0x21eedd(%rip), %rcx       #  8     0x406564  7      OPC=1161  
  movl %r9d, %esi                 #  9     0x40656b  3      OPC=1157  
  movl $0xffffffff, %r8d          #  10    0x40656e  7      OPC=1155  
.L_406574:                        #        0x406575  0      OPC=0     
  movslq %eax, %rdx               #  11    0x406575  3      OPC=1289  
  movsbq 0x13(%rdi,%rdx,1), %rdx  #  12    0x406578  6      OPC=1285  
  movq 0x20(%rdi,%rdx,8), %rdx    #  13    0x40657e  5      OPC=1161  
  cmpq %rcx, 0x18(%rdx)           #  14    0x406583  4      OPC=460   
  je .L_406594                    #  15    0x406587  6      OPC=893   
  nop                             #  16    0x40658d  1      OPC=1343  
  nop                             #  17    0x40658e  1      OPC=1343  
  movl 0x20(%rdx), %edx           #  18    0x40658f  3      OPC=1156  
  cmpl %esi, %edx                 #  19    0x406592  2      OPC=472   
  jbe .L_406594                   #  20    0x406594  6      OPC=881   
  nop                             #  21    0x40659a  1      OPC=1343  
  nop                             #  22    0x40659b  1      OPC=1343  
  movl %edx, %esi                 #  23    0x40659c  2      OPC=1157  
  movl %eax, %r8d                 #  24    0x40659e  3      OPC=1157  
.L_406594:                        #        0x4065a1  0      OPC=0     
  subl $0x1, %eax                 #  25    0x4065a1  3      OPC=2384  
  cmpl $0xffffffff, %eax          #  26    0x4065a4  6      OPC=469   
  nop                             #  27    0x4065aa  1      OPC=1343  
  nop                             #  28    0x4065ab  1      OPC=1343  
  nop                             #  29    0x4065ac  1      OPC=1343  
  jne .L_406574                   #  30    0x4065ad  6      OPC=963   
  nop                             #  31    0x4065b3  1      OPC=1343  
  nop                             #  32    0x4065b4  1      OPC=1343  
  movb %r8b, 0x10(%rdi)           #  33    0x4065b5  4      OPC=1141  
  cmpb $0xff, %r8b                #  34    0x4065b9  4      OPC=479   
  je .L_406609                    #  35    0x4065bd  6      OPC=893   
  nop                             #  36    0x4065c3  1      OPC=1343  
  nop                             #  37    0x4065c4  1      OPC=1343  
  movsbq %r8b, %r8                #  38    0x4065c5  4      OPC=1287  
  movsbq 0x13(%rdi,%r8,1), %rsi   #  39    0x4065c9  6      OPC=1285  
  movsbl 0x12(%rdi), %eax         #  40    0x4065cf  4      OPC=1280  
  subl $0x1, %eax                 #  41    0x4065d3  3      OPC=2384  
  js .L_4065d1                    #  42    0x4065d6  6      OPC=1043  
  nop                             #  43    0x4065dc  1      OPC=1343  
  nop                             #  44    0x4065dd  1      OPC=1343  
.L_4065b9:                        #        0x4065de  0      OPC=0     
  cmpl %esi, %eax                 #  45    0x4065de  2      OPC=472   
  je .L_4065c9                    #  46    0x4065e0  6      OPC=893   
  nop                             #  47    0x4065e6  1      OPC=1343  
  nop                             #  48    0x4065e7  1      OPC=1343  
  movslq %eax, %rdx               #  49    0x4065e8  3      OPC=1289  
  movq 0x20(%rdi,%rdx,8), %rdx    #  50    0x4065eb  5      OPC=1161  
  movq %rcx, 0x18(%rdx)           #  51    0x4065f0  4      OPC=1138  
.L_4065c9:                        #        0x4065f4  0      OPC=0     
  subl $0x1, %eax                 #  52    0x4065f4  3      OPC=2384  
  cmpl $0xffffffff, %eax          #  53    0x4065f7  6      OPC=469   
  nop                             #  54    0x4065fd  1      OPC=1343  
  nop                             #  55    0x4065fe  1      OPC=1343  
  nop                             #  56    0x4065ff  1      OPC=1343  
  jne .L_4065b9                   #  57    0x406600  6      OPC=963   
  nop                             #  58    0x406606  1      OPC=1343  
  nop                             #  59    0x406607  1      OPC=1343  
.L_4065d1:                        #        0x406608  0      OPC=0     
  movq 0x20(%rdi,%rsi,8), %rbx    #  60    0x406608  5      OPC=1161  
  movq 0x10(%rbx), %rbp           #  61    0x40660d  4      OPC=1161  
  testq %rbp, %rbp                #  62    0x406611  3      OPC=2438  
  je .L_4065e3                    #  63    0x406614  6      OPC=893   
  nop                             #  64    0x40661a  1      OPC=1343  
  nop                             #  65    0x40661b  1      OPC=1343  
  movb $0xff, 0x10(%rbp)          #  66    0x40661c  4      OPC=1140  
.L_4065e3:                        #        0x406620  0      OPC=0     
  movq %rdi, 0x10(%rbx)           #  67    0x406620  4      OPC=1138  
  callq .AddPropagate             #  68    0x406624  5      OPC=260   
  testl %eax, %eax                #  69    0x406629  2      OPC=2436  
  je .L_406621                    #  70    0x40662b  6      OPC=893   
  nop                             #  71    0x406631  1      OPC=1343  
  nop                             #  72    0x406632  1      OPC=1343  
  movq 0x21ee51(%rip), %rax       #  73    0x406633  7      OPC=1161  
  movq %rax, 0x18(%rbx)           #  74    0x40663a  4      OPC=1138  
  movq %rbp, %rax                 #  75    0x40663e  3      OPC=1162  
  addq $0x8, %rsp                 #  76    0x406641  4      OPC=70    
  popq %rbx                       #  77    0x406645  1      OPC=1694  
  popq %rbp                       #  78    0x406646  1      OPC=1694  
  retq                            #  79    0x406647  1      OPC=1978  
.L_406605:                        #        0x406648  0      OPC=0     
  movb $0xff, 0x10(%rdi)          #  80    0x406648  4      OPC=1140  
.L_406609:                        #        0x40664c  0      OPC=0     
  testl %r9d, %r9d                #  81    0x40664c  3      OPC=2436  
  je .L_406617                    #  82    0x40664f  6      OPC=893   
  nop                             #  83    0x406655  1      OPC=1343  
  nop                             #  84    0x406656  1      OPC=1343  
  xorl %eax, %eax                 #  85    0x406657  2      OPC=3758  
  addq $0x8, %rsp                 #  86    0x406659  4      OPC=70    
  popq %rbx                       #  87    0x40665d  1      OPC=1694  
  popq %rbp                       #  88    0x40665e  1      OPC=1694  
  retq                            #  89    0x40665f  1      OPC=1978  
.L_406617:                        #        0x406660  0      OPC=0     
  movl $0x408c68, %edi            #  90    0x406660  5      OPC=1154  
  callq .Error                    #  91    0x406665  5      OPC=260   
.L_406621:                        #        0x40666a  0      OPC=0     
  movl $0x408b4a, %edi            #  92    0x40666a  5      OPC=1154  
  callq .Error                    #  93    0x40666f  5      OPC=260   
                                                                      
.size Satisfy, .-Satisfy

