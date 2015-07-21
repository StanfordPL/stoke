  .text
  .globl memcpy
  .type memcpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    234 bytes

# Text                        #  Line  RIP    Bytes  Opcode    
.memcpy:                      #        0      0      OPC=0     
  cmpq $0x1f, %rdx            #  1     0      4      OPC=475   
  movq %rdi, %rax             #  2     0x4    3      OPC=1162  
  jbe .L_d0                   #  3     0x7    6      OPC=881   
  movq %rdi, %rcx             #  4     0xd    3      OPC=1162  
  orq %rsi, %rcx              #  5     0x10   3      OPC=1385  
  andl $0x7, %ecx             #  6     0x13   3      OPC=132   
  jne .L_e0                   #  7     0x16   6      OPC=963   
  movq %rsi, %r8              #  8     0x1c   3      OPC=1162  
  movq %rdi, %rcx             #  9     0x1f   3      OPC=1162  
  movq %rdx, %r9              #  10    0x22   3      OPC=1162  
  nop                         #  11    0x25   1      OPC=1343  
  nop                         #  12    0x26   1      OPC=1343  
  nop                         #  13    0x27   1      OPC=1343  
.L_28:                        #        0x28   0      OPC=0     
  movq (%r8), %rdi            #  14    0x28   3      OPC=1161  
  addq $0x20, %r8             #  15    0x2b   4      OPC=70    
  subq $0x20, %r9             #  16    0x2f   4      OPC=2389  
  addq $0x20, %rcx            #  17    0x33   4      OPC=70    
  movq %rdi, -0x20(%rcx)      #  18    0x37   4      OPC=1138  
  movq -0x18(%r8), %rdi       #  19    0x3b   4      OPC=1161  
  movq %rdi, -0x18(%rcx)      #  20    0x3f   4      OPC=1138  
  movq -0x10(%r8), %r10       #  21    0x43   4      OPC=1161  
  movq %r10, -0x10(%rcx)      #  22    0x47   4      OPC=1138  
  movq -0x8(%r8), %r10        #  23    0x4b   4      OPC=1161  
  cmpq $0x1f, %r9             #  24    0x4f   4      OPC=475   
  movq %r10, -0x8(%rcx)       #  25    0x53   4      OPC=1138  
  ja .L_28                    #  26    0x57   6      OPC=863   
  nop                         #  27    0x5d   1      OPC=1343  
  nop                         #  28    0x5e   1      OPC=1343  
  leaq -0x20(%rdx), %rcx      #  29    0x5f   4      OPC=1069  
  andq $0xe0, %rcx            #  30    0x63   4      OPC=137   
  addq $0x20, %rcx            #  31    0x67   4      OPC=70    
  addq %rcx, %rsi             #  32    0x6b   3      OPC=72    
  leaq (%rax,%rcx,1), %r9     #  33    0x6e   4      OPC=1069  
  movq %rdx, %rcx             #  34    0x72   3      OPC=1162  
  andl $0x1f, %ecx            #  35    0x75   3      OPC=132   
  cmpq $0x7, %rcx             #  36    0x78   4      OPC=475   
  jbe .L_e5                   #  37    0x7c   6      OPC=881   
  nop                         #  38    0x82   1      OPC=1343  
  nop                         #  39    0x83   1      OPC=1343  
  subq $0x8, %rcx             #  40    0x84   4      OPC=2389  
  shrq $0x3, %rcx             #  41    0x88   4      OPC=2315  
  leaq 0x8(,%rcx,8), %rdi     #  42    0x8c   8      OPC=1069  
  xorl %ecx, %ecx             #  43    0x94   2      OPC=3758  
  nop                         #  44    0x96   1      OPC=1343  
  nop                         #  45    0x97   1      OPC=1343  
  nop                         #  46    0x98   1      OPC=1343  
  nop                         #  47    0x99   1      OPC=1343  
  nop                         #  48    0x9a   1      OPC=1343  
  nop                         #  49    0x9b   1      OPC=1343  
.L_90:                        #        0x9c   0      OPC=0     
  movq (%rsi,%rcx,1), %r8     #  50    0x9c   4      OPC=1161  
  movq %r8, (%r9,%rcx,1)      #  51    0xa0   4      OPC=1138  
  addq $0x8, %rcx             #  52    0xa4   4      OPC=70    
  cmpq %rdi, %rcx             #  53    0xa8   3      OPC=477   
  jne .L_90                   #  54    0xab   6      OPC=963   
  nop                         #  55    0xb1   1      OPC=1343  
  nop                         #  56    0xb2   1      OPC=1343  
  andl $0x7, %edx             #  57    0xb3   3      OPC=132   
  addq %rcx, %r9              #  58    0xb6   3      OPC=72    
  addq %rcx, %rsi             #  59    0xb9   3      OPC=72    
  testq %rdx, %rdx            #  60    0xbc   3      OPC=2438  
  je .L_d8                    #  61    0xbf   6      OPC=893   
  nop                         #  62    0xc5   1      OPC=1343  
  nop                         #  63    0xc6   1      OPC=1343  
.L_af:                        #        0xc7   0      OPC=0     
  xorl %ecx, %ecx             #  64    0xc7   2      OPC=3758  
  nop                         #  65    0xc9   1      OPC=1343  
  nop                         #  66    0xca   1      OPC=1343  
  nop                         #  67    0xcb   1      OPC=1343  
  nop                         #  68    0xcc   1      OPC=1343  
  nop                         #  69    0xcd   1      OPC=1343  
  nop                         #  70    0xce   1      OPC=1343  
  nop                         #  71    0xcf   1      OPC=1343  
.L_b8:                        #        0xd0   0      OPC=0     
  movzbl (%rsi,%rcx,1), %r8d  #  72    0xd0   5      OPC=1302  
  movb %r8b, (%r9,%rcx,1)     #  73    0xd5   4      OPC=1141  
  addq $0x1, %rcx             #  74    0xd9   4      OPC=70    
  cmpq %rdx, %rcx             #  75    0xdd   3      OPC=477   
  jne .L_b8                   #  76    0xe0   6      OPC=963   
  nop                         #  77    0xe6   1      OPC=1343  
  nop                         #  78    0xe7   1      OPC=1343  
  retq                        #  79    0xe8   1      OPC=1978  
  nop                         #  80    0xe9   1      OPC=1343  
  nop                         #  81    0xea   1      OPC=1343  
  nop                         #  82    0xeb   1      OPC=1343  
  nop                         #  83    0xec   1      OPC=1343  
  nop                         #  84    0xed   1      OPC=1343  
.L_d0:                        #        0xee   0      OPC=0     
  movq %rdi, %r9              #  85    0xee   3      OPC=1162  
.L_d3:                        #        0xf1   0      OPC=0     
  testq %rdx, %rdx            #  86    0xf1   3      OPC=2438  
  jne .L_af                   #  87    0xf4   6      OPC=963   
  nop                         #  88    0xfa   1      OPC=1343  
  nop                         #  89    0xfb   1      OPC=1343  
.L_d8:                        #        0xfc   0      OPC=0     
  retq                        #  90    0xfc   1      OPC=1978  
  nop                         #  91    0xfd   1      OPC=1343  
  nop                         #  92    0xfe   1      OPC=1343  
  nop                         #  93    0xff   1      OPC=1343  
  nop                         #  94    0x100  1      OPC=1343  
  nop                         #  95    0x101  1      OPC=1343  
  nop                         #  96    0x102  1      OPC=1343  
  nop                         #  97    0x103  1      OPC=1343  
.L_e0:                        #        0x104  0      OPC=0     
  movq %rdi, %r9              #  98    0x104  3      OPC=1162  
  jmpq .L_af                  #  99    0x107  5      OPC=930   
  nop                         #  100   0x10c  1      OPC=1343  
  nop                         #  101   0x10d  1      OPC=1343  
.L_e5:                        #        0x10e  0      OPC=0     
  movq %rcx, %rdx             #  102   0x10e  3      OPC=1162  
  jmpq .L_d3                  #  103   0x111  5      OPC=930   
  nop                         #  104   0x116  1      OPC=1343  
  nop                         #  105   0x117  1      OPC=1343  
                                                               
.size memcpy, .-memcpy

