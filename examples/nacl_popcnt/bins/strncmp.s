  .text
  .globl strncmp
  .type strncmp, @function

#! file-offset 0x6b880
#! rip-offset  0x6b880
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.strncmp:                      #        0x6b880  0      
  testl %edx, %edx             #  1     0x6b880  2      
  movl %edi, %edi              #  2     0x6b882  2      
  movl %esi, %esi              #  3     0x6b884  2      
  je .L_6b900                  #  4     0x6b886  6      
  movl %esi, %eax              #  5     0x6b88c  2      
  orl %edi, %eax               #  6     0x6b88e  2      
  testb $0x3, %al              #  7     0x6b890  2      
  jne .L_6b940                 #  8     0x6b892  6      
  cmpl $0x3, %edx              #  9     0x6b898  3      
  ja .L_6b8e0                  #  10    0x6b89b  6      
  jmpq .L_6b940                #  11    0x6b8a1  5      
  xchgw %ax, %ax               #  12    0x6b8a6  3      
.L_6b8a0:                      #        0x6b8a9  0      
  leal -0x1010101(%rax), %ecx  #  13    0x6b8a9  6      
  notl %eax                    #  14    0x6b8af  2      
  andl %eax, %ecx              #  15    0x6b8b1  2      
  andl $0x80808080, %ecx       #  16    0x6b8b3  6      
  jne .L_6b900                 #  17    0x6b8b9  6      
  addl $0x4, %edi              #  18    0x6b8bf  3      
  addl $0x4, %esi              #  19    0x6b8c2  3      
  cmpl $0x3, %edx              #  20    0x6b8c5  3      
  nop                          #  21    0x6b8c8  1      
  jbe .L_6b980                 #  22    0x6b8c9  6      
  nop                          #  23    0x6b8cf  1      
  nop                          #  24    0x6b8d0  1      
.L_6b8e0:                      #        0x6b8d1  0      
  movl %edi, %edi              #  25    0x6b8d1  2      
  movl (%r15,%rdi,1), %eax     #  26    0x6b8d3  4      
  movl %esi, %esi              #  27    0x6b8d7  2      
  cmpl (%r15,%rsi,1), %eax     #  28    0x6b8d9  4      
  jne .L_6b940                 #  29    0x6b8dd  6      
  subl $0x4, %edx              #  30    0x6b8e3  3      
  jne .L_6b8a0                 #  31    0x6b8e6  6      
  nop                          #  32    0x6b8ec  1      
.L_6b900:                      #        0x6b8ed  0      
  xorl %eax, %eax              #  33    0x6b8ed  2      
  popq %r11                    #  34    0x6b8ef  3      
  andl $0xffffffe0, %r11d      #  35    0x6b8f2  7      
  addq %r15, %r11              #  36    0x6b8f9  3      
  jmpq %r11                    #  37    0x6b8fc  3      
  nop                          #  38    0x6b8ff  1      
  nop                          #  39    0x6b900  1      
.L_6b920:                      #        0x6b901  0      
  testl %edx, %edx             #  40    0x6b901  2      
  je .L_6b900                  #  41    0x6b903  6      
  testb %al, %al               #  42    0x6b909  2      
  je .L_6b900                  #  43    0x6b90b  6      
  addl $0x1, %edi              #  44    0x6b911  3      
  addl $0x1, %esi              #  45    0x6b914  3      
  nop                          #  46    0x6b917  1      
  nop                          #  47    0x6b918  1      
.L_6b940:                      #        0x6b919  0      
  movl %edi, %edi              #  48    0x6b919  2      
  movzbl (%r15,%rdi,1), %eax   #  49    0x6b91b  5      
  subl $0x1, %edx              #  50    0x6b920  3      
  movl %esi, %esi              #  51    0x6b923  2      
  cmpb (%r15,%rsi,1), %al      #  52    0x6b925  4      
  je .L_6b920                  #  53    0x6b929  6      
  nop                          #  54    0x6b92f  1      
.L_6b960:                      #        0x6b930  0      
  movl %edi, %edi              #  55    0x6b930  2      
  movzbl (%r15,%rdi,1), %eax   #  56    0x6b932  5      
  movl %esi, %esi              #  57    0x6b937  2      
  movzbl (%r15,%rsi,1), %edx   #  58    0x6b939  5      
  subl %edx, %eax              #  59    0x6b93e  2      
  popq %r11                    #  60    0x6b940  3      
  andl $0xffffffe0, %r11d      #  61    0x6b943  7      
  addq %r15, %r11              #  62    0x6b94a  3      
  jmpq %r11                    #  63    0x6b94d  3      
  nop                          #  64    0x6b950  1      
.L_6b980:                      #        0x6b951  0      
  testl %edx, %edx             #  65    0x6b951  2      
  jne .L_6b940                 #  66    0x6b953  6      
  jmpq .L_6b960                #  67    0x6b959  5      
  nop                          #  68    0x6b95e  1      
  nop                          #  69    0x6b95f  1      
  nop                          #  70    0x6b960  1      
  nop                          #  71    0x6b961  1      
  nop                          #  72    0x6b962  1      
  nop                          #  73    0x6b963  1      
  nop                          #  74    0x6b964  1      
  nop                          #  75    0x6b965  1      
  nop                          #  76    0x6b966  1      
  nop                          #  77    0x6b967  1      
  nop                          #  78    0x6b968  1      
  nop                          #  79    0x6b969  1      
  nop                          #  80    0x6b96a  1      
  nop                          #  81    0x6b96b  1      
  nop                          #  82    0x6b96c  1      
  nop                          #  83    0x6b96d  1      
  nop                          #  84    0x6b96e  1      
  nop                          #  85    0x6b96f  1      
  nop                          #  86    0x6b970  1      
  nop                          #  87    0x6b971  1      
  nop                          #  88    0x6b972  1      
  nop                          #  89    0x6b973  1      
  nop                          #  90    0x6b974  1      
  nop                          #  91    0x6b975  1      
  nop                          #  92    0x6b976  1      
  nop                          #  93    0x6b977  1      
                                                        
.size strncmp, .-strncmp

