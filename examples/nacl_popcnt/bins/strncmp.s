  .text
  .globl strncmp
  .type strncmp, @function

#! file-offset 0x6b8a0
#! rip-offset  0x6b8a0
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.strncmp:                      #        0x6b8a0  0      
  testl %edx, %edx             #  1     0x6b8a0  2      
  movl %edi, %edi              #  2     0x6b8a2  2      
  movl %esi, %esi              #  3     0x6b8a4  2      
  je .L_6b920                  #  4     0x6b8a6  6      
  movl %esi, %eax              #  5     0x6b8ac  2      
  orl %edi, %eax               #  6     0x6b8ae  2      
  testb $0x3, %al              #  7     0x6b8b0  2      
  jne .L_6b960                 #  8     0x6b8b2  6      
  cmpl $0x3, %edx              #  9     0x6b8b8  3      
  ja .L_6b900                  #  10    0x6b8bb  6      
  jmpq .L_6b960                #  11    0x6b8c1  5      
  xchgw %ax, %ax               #  12    0x6b8c6  3      
.L_6b8c0:                      #        0x6b8c9  0      
  leal -0x1010101(%rax), %ecx  #  13    0x6b8c9  6      
  notl %eax                    #  14    0x6b8cf  2      
  andl %eax, %ecx              #  15    0x6b8d1  2      
  andl $0x80808080, %ecx       #  16    0x6b8d3  6      
  jne .L_6b920                 #  17    0x6b8d9  6      
  addl $0x4, %edi              #  18    0x6b8df  3      
  addl $0x4, %esi              #  19    0x6b8e2  3      
  cmpl $0x3, %edx              #  20    0x6b8e5  3      
  nop                          #  21    0x6b8e8  1      
  jbe .L_6b9a0                 #  22    0x6b8e9  6      
  nop                          #  23    0x6b8ef  1      
  nop                          #  24    0x6b8f0  1      
.L_6b900:                      #        0x6b8f1  0      
  movl %edi, %edi              #  25    0x6b8f1  2      
  movl (%r15,%rdi,1), %eax     #  26    0x6b8f3  4      
  movl %esi, %esi              #  27    0x6b8f7  2      
  cmpl (%r15,%rsi,1), %eax     #  28    0x6b8f9  4      
  jne .L_6b960                 #  29    0x6b8fd  6      
  subl $0x4, %edx              #  30    0x6b903  3      
  jne .L_6b8c0                 #  31    0x6b906  6      
  nop                          #  32    0x6b90c  1      
.L_6b920:                      #        0x6b90d  0      
  xorl %eax, %eax              #  33    0x6b90d  2      
  popq %r11                    #  34    0x6b90f  3      
  andl $0xffffffe0, %r11d      #  35    0x6b912  7      
  addq %r15, %r11              #  36    0x6b919  3      
  jmpq %r11                    #  37    0x6b91c  3      
  nop                          #  38    0x6b91f  1      
  nop                          #  39    0x6b920  1      
.L_6b940:                      #        0x6b921  0      
  testl %edx, %edx             #  40    0x6b921  2      
  je .L_6b920                  #  41    0x6b923  6      
  testb %al, %al               #  42    0x6b929  2      
  je .L_6b920                  #  43    0x6b92b  6      
  addl $0x1, %edi              #  44    0x6b931  3      
  addl $0x1, %esi              #  45    0x6b934  3      
  nop                          #  46    0x6b937  1      
  nop                          #  47    0x6b938  1      
.L_6b960:                      #        0x6b939  0      
  movl %edi, %edi              #  48    0x6b939  2      
  movzbl (%r15,%rdi,1), %eax   #  49    0x6b93b  5      
  subl $0x1, %edx              #  50    0x6b940  3      
  movl %esi, %esi              #  51    0x6b943  2      
  cmpb (%r15,%rsi,1), %al      #  52    0x6b945  4      
  je .L_6b940                  #  53    0x6b949  6      
  nop                          #  54    0x6b94f  1      
.L_6b980:                      #        0x6b950  0      
  movl %edi, %edi              #  55    0x6b950  2      
  movzbl (%r15,%rdi,1), %eax   #  56    0x6b952  5      
  movl %esi, %esi              #  57    0x6b957  2      
  movzbl (%r15,%rsi,1), %edx   #  58    0x6b959  5      
  subl %edx, %eax              #  59    0x6b95e  2      
  popq %r11                    #  60    0x6b960  3      
  andl $0xffffffe0, %r11d      #  61    0x6b963  7      
  addq %r15, %r11              #  62    0x6b96a  3      
  jmpq %r11                    #  63    0x6b96d  3      
  nop                          #  64    0x6b970  1      
.L_6b9a0:                      #        0x6b971  0      
  testl %edx, %edx             #  65    0x6b971  2      
  jne .L_6b960                 #  66    0x6b973  6      
  jmpq .L_6b980                #  67    0x6b979  5      
  nop                          #  68    0x6b97e  1      
  nop                          #  69    0x6b97f  1      
  nop                          #  70    0x6b980  1      
  nop                          #  71    0x6b981  1      
  nop                          #  72    0x6b982  1      
  nop                          #  73    0x6b983  1      
  nop                          #  74    0x6b984  1      
  nop                          #  75    0x6b985  1      
  nop                          #  76    0x6b986  1      
  nop                          #  77    0x6b987  1      
  nop                          #  78    0x6b988  1      
  nop                          #  79    0x6b989  1      
  nop                          #  80    0x6b98a  1      
  nop                          #  81    0x6b98b  1      
  nop                          #  82    0x6b98c  1      
  nop                          #  83    0x6b98d  1      
  nop                          #  84    0x6b98e  1      
  nop                          #  85    0x6b98f  1      
  nop                          #  86    0x6b990  1      
  nop                          #  87    0x6b991  1      
  nop                          #  88    0x6b992  1      
  nop                          #  89    0x6b993  1      
  nop                          #  90    0x6b994  1      
  nop                          #  91    0x6b995  1      
  nop                          #  92    0x6b996  1      
  nop                          #  93    0x6b997  1      
                                                        
.size strncmp, .-strncmp

