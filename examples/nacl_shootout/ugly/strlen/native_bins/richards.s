  .text
  .globl richards
  .type richards, @function

#! file-offset 0x54ad
#! rip-offset  0x4054ad
#! capacity    503 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.richards:                     #        0x4054ad  0      OPC=0     
  subq $0x18, %rsp             #  1     0x4054ad  4      OPC=2389  
  movq 0x220578(%rip), %rax    #  2     0x4054b1  7      OPC=1161  
  movq %rax, (%rsp)            #  3     0x4054b8  4      OPC=1138  
  movl $0x1, %r9d              #  4     0x4054bc  6      OPC=1154  
  movl $0x405267, %r8d         #  5     0x4054c2  6      OPC=1154  
  xorl %ecx, %ecx              #  6     0x4054c8  2      OPC=3758  
  xorl %edx, %edx              #  7     0x4054ca  2      OPC=3758  
  xorl %esi, %esi              #  8     0x4054cc  2      OPC=3758  
  movl $0x1, %edi              #  9     0x4054ce  5      OPC=1154  
  callq .createtask            #  10    0x4054d3  5      OPC=260   
  movl $0x3e9, %edx            #  11    0x4054d8  5      OPC=1154  
  xorl %esi, %esi              #  12    0x4054dd  2      OPC=3758  
  xorl %edi, %edi              #  13    0x4054df  2      OPC=3758  
  callq .pkt                   #  14    0x4054e1  5      OPC=260   
  movl $0x3e9, %edx            #  15    0x4054e6  5      OPC=1154  
  xorl %esi, %esi              #  16    0x4054eb  2      OPC=3758  
  movq %rax, %rdi              #  17    0x4054ed  3      OPC=1162  
  callq .pkt                   #  18    0x4054f0  5      OPC=260   
  movq $0x0, (%rsp)            #  19    0x4054f5  8      OPC=1137  
  movl $0x3, %r9d              #  20    0x4054fd  6      OPC=1154  
  movl $0x405336, %r8d         #  21    0x405503  6      OPC=1154  
  movl $0x3, %ecx              #  22    0x405509  5      OPC=1154  
  movq %rax, %rdx              #  23    0x40550e  3      OPC=1162  
  movl $0x3e8, %esi            #  24    0x405511  5      OPC=1154  
  movl $0x2, %edi              #  25    0x405516  5      OPC=1154  
  callq .createtask            #  26    0x40551b  5      OPC=260   
  movl $0x3e8, %edx            #  27    0x405520  5      OPC=1154  
  movl $0x5, %esi              #  28    0x405525  5      OPC=1154  
  xorl %edi, %edi              #  29    0x40552a  2      OPC=3758  
  callq .pkt                   #  30    0x40552c  5      OPC=260   
  movl $0x3e8, %edx            #  31    0x405531  5      OPC=1154  
  movl $0x5, %esi              #  32    0x405536  5      OPC=1154  
  movq %rax, %rdi              #  33    0x40553b  3      OPC=1162  
  callq .pkt                   #  34    0x40553e  5      OPC=260   
  movl $0x3e8, %edx            #  35    0x405543  5      OPC=1154  
  movl $0x5, %esi              #  36    0x405548  5      OPC=1154  
  movq %rax, %rdi              #  37    0x40554d  3      OPC=1162  
  callq .pkt                   #  38    0x405550  5      OPC=260   
  movq $0x0, (%rsp)            #  39    0x405555  8      OPC=1137  
  xorl %r9d, %r9d              #  40    0x40555d  3      OPC=3758  
  movl $0x405406, %r8d         #  41    0x405560  6      OPC=1154  
  movl $0x3, %ecx              #  42    0x405566  5      OPC=1154  
  movq %rax, %rdx              #  43    0x40556b  3      OPC=1162  
  movl $0x7d0, %esi            #  44    0x40556e  5      OPC=1154  
  movl $0x3, %edi              #  45    0x405573  5      OPC=1154  
  callq .createtask            #  46    0x405578  5      OPC=260   
  movl $0x3e8, %edx            #  47    0x40557d  5      OPC=1154  
  movl $0x6, %esi              #  48    0x405582  5      OPC=1154  
  xorl %edi, %edi              #  49    0x405587  2      OPC=3758  
  callq .pkt                   #  50    0x405589  5      OPC=260   
  movl $0x3e8, %edx            #  51    0x40558e  5      OPC=1154  
  movl $0x6, %esi              #  52    0x405593  5      OPC=1154  
  movq %rax, %rdi              #  53    0x405598  3      OPC=1162  
  callq .pkt                   #  54    0x40559b  5      OPC=260   
  movl $0x3e8, %edx            #  55    0x4055a0  5      OPC=1154  
  movl $0x6, %esi              #  56    0x4055a5  5      OPC=1154  
  movq %rax, %rdi              #  57    0x4055aa  3      OPC=1162  
  callq .pkt                   #  58    0x4055ad  5      OPC=260   
  movq $0x0, (%rsp)            #  59    0x4055b2  8      OPC=1137  
  xorl %r9d, %r9d              #  60    0x4055ba  3      OPC=3758  
  movl $0x405406, %r8d         #  61    0x4055bd  6      OPC=1154  
  movl $0x3, %ecx              #  62    0x4055c3  5      OPC=1154  
  movq %rax, %rdx              #  63    0x4055c8  3      OPC=1162  
  movl $0xbb8, %esi            #  64    0x4055cb  5      OPC=1154  
  movl $0x4, %edi              #  65    0x4055d0  5      OPC=1154  
  callq .createtask            #  66    0x4055d5  5      OPC=260   
  movq $0x0, (%rsp)            #  67    0x4055da  8      OPC=1137  
  xorl %r9d, %r9d              #  68    0x4055e2  3      OPC=3758  
  movl $0x40539f, %r8d         #  69    0x4055e5  6      OPC=1154  
  movl $0x2, %ecx              #  70    0x4055eb  5      OPC=1154  
  xorl %edx, %edx              #  71    0x4055f0  2      OPC=3758  
  movl $0xfa0, %esi            #  72    0x4055f2  5      OPC=1154  
  movl $0x5, %edi              #  73    0x4055f7  5      OPC=1154  
  callq .createtask            #  74    0x4055fc  5      OPC=260   
  movq $0x0, (%rsp)            #  75    0x405601  8      OPC=1137  
  xorl %r9d, %r9d              #  76    0x405609  3      OPC=3758  
  movl $0x40539f, %r8d         #  77    0x40560c  6      OPC=1154  
  movl $0x2, %ecx              #  78    0x405612  5      OPC=1154  
  xorl %edx, %edx              #  79    0x405617  2      OPC=3758  
  movl $0x1388, %esi           #  80    0x405619  5      OPC=1154  
  movl $0x6, %edi              #  81    0x40561e  5      OPC=1154  
  callq .createtask            #  82    0x405623  5      OPC=260   
  movq 0x21fe01(%rip), %rax    #  83    0x405628  7      OPC=1161  
  movq %rax, 0x2203d2(%rip)    #  84    0x40562f  7      OPC=1138  
  movl $0x0, 0x21fde8(%rip)    #  85    0x405636  10     OPC=1135  
  movl $0x0, 0x21fde2(%rip)    #  86    0x405640  10     OPC=1135  
  movl $0x0, 0x21fdd0(%rip)    #  87    0x40564a  10     OPC=1135  
  movl $0x0, 0x21fdc2(%rip)    #  88    0x405654  10     OPC=1135  
  xorl %eax, %eax              #  89    0x40565e  2      OPC=3758  
  callq .schedule              #  90    0x405660  5      OPC=260   
  movslq 0x21fdc0(%rip), %rax  #  91    0x405665  7      OPC=1288  
  cmpq 0x2203a5(%rip), %rax    #  92    0x40566c  7      OPC=476   
  je .L_405690                 #  93    0x405673  6      OPC=893   
  nop                          #  94    0x405679  1      OPC=1343  
  nop                          #  95    0x40567a  1      OPC=1343  
.L_405675:                     #        0x40567b  0      OPC=0     
  movl $0x408a89, %esi         #  96    0x40567b  5      OPC=1154  
  movl $0x1, %edi              #  97    0x405680  5      OPC=1154  
  xorl %eax, %eax              #  98    0x405685  2      OPC=3758  
  callq .__printf_chk_plt      #  99    0x405687  5      OPC=260   
  movl $0x1, %eax              #  100   0x40568c  5      OPC=1154  
.L_40568b:                     #        0x405691  0      OPC=0     
  addq $0x18, %rsp             #  101   0x405691  4      OPC=70    
  retq                         #  102   0x405695  1      OPC=1978  
.L_405690:                     #        0x405696  0      OPC=0     
  movslq 0x21fd91(%rip), %rax  #  103   0x405696  7      OPC=1288  
  cmpq 0x220362(%rip), %rax    #  104   0x40569d  7      OPC=476   
  jne .L_405675                #  105   0x4056a4  6      OPC=963   
  nop                          #  106   0x4056aa  1      OPC=1343  
  nop                          #  107   0x4056ab  1      OPC=1343  
  xorl %eax, %eax              #  108   0x4056ac  2      OPC=3758  
  jmpq .L_40568b               #  109   0x4056ae  5      OPC=930   
  nop                          #  110   0x4056b3  1      OPC=1343  
  nop                          #  111   0x4056b4  1      OPC=1343  
                                                                   
.size richards, .-richards

