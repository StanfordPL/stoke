  .text
  .globl strncmp
  .type strncmp, @function

#! file-offset 0x6b920
#! rip-offset  0x6b920
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.strncmp:                      #        0x6b920  0      
  testl %edx, %edx             #  1     0x6b920  2      
  movl %edi, %edi              #  2     0x6b922  2      
  movl %esi, %esi              #  3     0x6b924  2      
  je .L_6b9a0                  #  4     0x6b926  6      
  movl %esi, %eax              #  5     0x6b92c  2      
  orl %edi, %eax               #  6     0x6b92e  2      
  testb $0x3, %al              #  7     0x6b930  2      
  jne .L_6b9e0                 #  8     0x6b932  6      
  cmpl $0x3, %edx              #  9     0x6b938  3      
  ja .L_6b980                  #  10    0x6b93b  6      
  jmpq .L_6b9e0                #  11    0x6b941  5      
  xchgw %ax, %ax               #  12    0x6b946  3      
.L_6b940:                      #        0x6b949  0      
  leal -0x1010101(%rax), %ecx  #  13    0x6b949  6      
  notl %eax                    #  14    0x6b94f  2      
  andl %eax, %ecx              #  15    0x6b951  2      
  andl $0x80808080, %ecx       #  16    0x6b953  6      
  jne .L_6b9a0                 #  17    0x6b959  6      
  addl $0x4, %edi              #  18    0x6b95f  3      
  addl $0x4, %esi              #  19    0x6b962  3      
  cmpl $0x3, %edx              #  20    0x6b965  3      
  nop                          #  21    0x6b968  1      
  jbe .L_6ba20                 #  22    0x6b969  6      
  nop                          #  23    0x6b96f  1      
  nop                          #  24    0x6b970  1      
.L_6b980:                      #        0x6b971  0      
  movl %edi, %edi              #  25    0x6b971  2      
  movl (%r15,%rdi,1), %eax     #  26    0x6b973  4      
  movl %esi, %esi              #  27    0x6b977  2      
  cmpl (%r15,%rsi,1), %eax     #  28    0x6b979  4      
  jne .L_6b9e0                 #  29    0x6b97d  6      
  subl $0x4, %edx              #  30    0x6b983  3      
  jne .L_6b940                 #  31    0x6b986  6      
  nop                          #  32    0x6b98c  1      
.L_6b9a0:                      #        0x6b98d  0      
  xorl %eax, %eax              #  33    0x6b98d  2      
  popq %r11                    #  34    0x6b98f  3      
  andl $0xffffffe0, %r11d      #  35    0x6b992  7      
  addq %r15, %r11              #  36    0x6b999  3      
  jmpq %r11                    #  37    0x6b99c  3      
  nop                          #  38    0x6b99f  1      
  nop                          #  39    0x6b9a0  1      
.L_6b9c0:                      #        0x6b9a1  0      
  testl %edx, %edx             #  40    0x6b9a1  2      
  je .L_6b9a0                  #  41    0x6b9a3  6      
  testb %al, %al               #  42    0x6b9a9  2      
  je .L_6b9a0                  #  43    0x6b9ab  6      
  addl $0x1, %edi              #  44    0x6b9b1  3      
  addl $0x1, %esi              #  45    0x6b9b4  3      
  nop                          #  46    0x6b9b7  1      
  nop                          #  47    0x6b9b8  1      
.L_6b9e0:                      #        0x6b9b9  0      
  movl %edi, %edi              #  48    0x6b9b9  2      
  movzbl (%r15,%rdi,1), %eax   #  49    0x6b9bb  5      
  subl $0x1, %edx              #  50    0x6b9c0  3      
  movl %esi, %esi              #  51    0x6b9c3  2      
  cmpb (%r15,%rsi,1), %al      #  52    0x6b9c5  4      
  je .L_6b9c0                  #  53    0x6b9c9  6      
  nop                          #  54    0x6b9cf  1      
.L_6ba00:                      #        0x6b9d0  0      
  movl %edi, %edi              #  55    0x6b9d0  2      
  movzbl (%r15,%rdi,1), %eax   #  56    0x6b9d2  5      
  movl %esi, %esi              #  57    0x6b9d7  2      
  movzbl (%r15,%rsi,1), %edx   #  58    0x6b9d9  5      
  subl %edx, %eax              #  59    0x6b9de  2      
  popq %r11                    #  60    0x6b9e0  3      
  andl $0xffffffe0, %r11d      #  61    0x6b9e3  7      
  addq %r15, %r11              #  62    0x6b9ea  3      
  jmpq %r11                    #  63    0x6b9ed  3      
  nop                          #  64    0x6b9f0  1      
.L_6ba20:                      #        0x6b9f1  0      
  testl %edx, %edx             #  65    0x6b9f1  2      
  jne .L_6b9e0                 #  66    0x6b9f3  6      
  jmpq .L_6ba00                #  67    0x6b9f9  5      
  nop                          #  68    0x6b9fe  1      
  nop                          #  69    0x6b9ff  1      
  nop                          #  70    0x6ba00  1      
  nop                          #  71    0x6ba01  1      
  nop                          #  72    0x6ba02  1      
  nop                          #  73    0x6ba03  1      
  nop                          #  74    0x6ba04  1      
  nop                          #  75    0x6ba05  1      
  nop                          #  76    0x6ba06  1      
  nop                          #  77    0x6ba07  1      
  nop                          #  78    0x6ba08  1      
  nop                          #  79    0x6ba09  1      
  nop                          #  80    0x6ba0a  1      
  nop                          #  81    0x6ba0b  1      
  nop                          #  82    0x6ba0c  1      
  nop                          #  83    0x6ba0d  1      
  nop                          #  84    0x6ba0e  1      
  nop                          #  85    0x6ba0f  1      
  nop                          #  86    0x6ba10  1      
  nop                          #  87    0x6ba11  1      
  nop                          #  88    0x6ba12  1      
  nop                          #  89    0x6ba13  1      
  nop                          #  90    0x6ba14  1      
  nop                          #  91    0x6ba15  1      
  nop                          #  92    0x6ba16  1      
  nop                          #  93    0x6ba17  1      
                                                        
.size strncmp, .-strncmp

