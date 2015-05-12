  .text
  .globl get_tls_info
  .type get_tls_info, @function

#! file-offset 0x67b20
#! rip-offset  0x67b20
#! capacity    672 bytes

# Text                          #  Line  RIP      Bytes  
.get_tls_info:                  #        0x67b20  0      
  movl 0xffcef86(%rip), %eax    #  1     0x67b20  6      
  testl %eax, %eax              #  2     0x67b26  2      
  jne .L_67ba0                  #  3     0x67b28  6      
  movl $0x10020000, %eax        #  4     0x67b2e  5      
  testl %eax, %eax              #  5     0x67b33  2      
  jne .L_67bc0                  #  6     0x67b35  6      
  nop                           #  7     0x67b3b  1      
.L_67b40:                       #        0x67b3c  0      
  testl %eax, %eax              #  8     0x67b3c  2      
  jne .L_67cc0                  #  9     0x67b3e  6      
  nop                           #  10    0x67b44  1      
  nop                           #  11    0x67b45  1      
.L_67b60:                       #        0x67b46  0      
  movl -0x67b4c(%rip), %eax     #  12    0x67b46  6      
  movl $0x0, 0xffcef4a(%rip)    #  13    0x67b4c  10     
  movl %eax, 0xffcef50(%rip)    #  14    0x67b56  6      
  movl $0x0, %eax               #  15    0x67b5c  5      
  subl $0x0, %eax               #  16    0x67b61  3      
  movl %eax, 0xffcef3a(%rip)    #  17    0x67b64  6      
  movl $0x0, %eax               #  18    0x67b6a  5      
  subl $0x0, %eax               #  19    0x67b6f  3      
  movl %eax, 0xffcef30(%rip)    #  20    0x67b72  6      
  nop                           #  21    0x67b78  1      
.L_67ba0:                       #        0x67b79  0      
  popq %r11                     #  22    0x67b79  3      
  movl $0x10036aa0, %eax        #  23    0x67b7c  5      
  andl $0xffffffe0, %r11d       #  24    0x67b81  7      
  addq %r15, %r11               #  25    0x67b88  3      
  jmpq %r11                     #  26    0x67b8b  3      
  nop                           #  27    0x67b8e  1      
.L_67bc0:                       #        0x67b8f  0      
  cmpb $0x1, 0xffb846e(%rip)    #  28    0x67b8f  7      
  jne .L_67b40                  #  29    0x67b96  6      
  cmpw $0x20, 0xffb8486(%rip)   #  30    0x67b9c  8      
  jne .L_67b40                  #  31    0x67ba4  6      
  nop                           #  32    0x67baa  1      
  movl 0xffb846b(%rip), %esi    #  33    0x67bab  6      
  movzwl 0xffb8474(%rip), %edi  #  34    0x67bb1  7      
  xorl %ecx, %ecx               #  35    0x67bb8  2      
  addl %eax, %esi               #  36    0x67bba  2      
  jmpq .L_67c20                 #  37    0x67bbc  5      
  nop                           #  38    0x67bc1  1      
.L_67c00:                       #        0x67bc2  0      
  addl $0x1, %ecx               #  39    0x67bc2  3      
  nop                           #  40    0x67bc5  1      
  nop                           #  41    0x67bc6  1      
.L_67c20:                       #        0x67bc7  0      
  cmpl %edi, %ecx               #  42    0x67bc7  2      
  jge .L_67b40                  #  43    0x67bc9  6      
  movl %esi, %edx               #  44    0x67bcf  2      
  addl $0x20, %esi              #  45    0x67bd1  3      
  movl %edx, %edx               #  46    0x67bd4  2      
  cmpl $0x7, (%r15,%rdx,1)      #  47    0x67bd6  5      
  jne .L_67c00                  #  48    0x67bdb  6      
  movl %edx, %edx               #  49    0x67be1  2      
  movl 0x1c(%r15,%rdx,1), %eax  #  50    0x67be3  5      
  nop                           #  51    0x67be8  1      
  cmpw $0x3, 0xffb841f(%rip)    #  52    0x67be9  8      
  movl %eax, 0xffceeb5(%rip)    #  53    0x67bf1  6      
  movl %edx, %edx               #  54    0x67bf7  2      
  movl 0x8(%r15,%rdx,1), %eax   #  55    0x67bf9  5      
  movl %eax, 0xffcee9c(%rip)    #  56    0x67bfe  6      
  nop                           #  57    0x67c04  1      
  jne .L_67c80                  #  58    0x67c05  6      
  addl $0x10020000, %eax        #  59    0x67c0b  5      
  movl %eax, 0xffcee8a(%rip)    #  60    0x67c10  6      
  nop                           #  61    0x67c16  1      
  nop                           #  62    0x67c17  1      
.L_67c80:                       #        0x67c18  0      
  movl %edx, %edx               #  63    0x67c18  2      
  movl 0x10(%r15,%rdx,1), %ecx  #  64    0x67c1a  5      
  movl %ecx, 0xffcee7f(%rip)    #  65    0x67c1f  6      
  movl %edx, %edx               #  66    0x67c25  2      
  movl 0x14(%r15,%rdx,1), %eax  #  67    0x67c27  5      
  subl %ecx, %eax               #  68    0x67c2c  2      
  movl %eax, 0xffcee74(%rip)    #  69    0x67c2e  6      
  nop                           #  70    0x67c34  1      
  jmpq .L_67ba0                 #  71    0x67c35  5      
  nop                           #  72    0x67c3a  1      
  nop                           #  73    0x67c3b  1      
.L_67cc0:                       #        0x67c3c  0      
  cmpb $0x2, 0xffb83c1(%rip)    #  74    0x67c3c  7      
  jne .L_67b60                  #  75    0x67c43  6      
  cmpw $0x38, 0xffb83e5(%rip)   #  76    0x67c49  8      
  jne .L_67b60                  #  77    0x67c51  6      
  nop                           #  78    0x67c57  1      
  movq 0xffb83c1(%rip), %rcx    #  79    0x67c58  7      
  movzwl 0xffb83d2(%rip), %esi  #  80    0x67c5f  7      
  xorl %edx, %edx               #  81    0x67c66  2      
  addl $0x10020000, %ecx        #  82    0x67c68  6      
  jmpq .L_67d20                 #  83    0x67c6e  5      
  nop                           #  84    0x67c73  1      
.L_67d00:                       #        0x67c74  0      
  addl $0x1, %edx               #  85    0x67c74  3      
  nop                           #  86    0x67c77  1      
  nop                           #  87    0x67c78  1      
.L_67d20:                       #        0x67c79  0      
  cmpl %esi, %edx               #  88    0x67c79  2      
  jge .L_67b60                  #  89    0x67c7b  6      
  movl %ecx, %eax               #  90    0x67c81  2      
  addl $0x38, %ecx              #  91    0x67c83  3      
  movl %eax, %eax               #  92    0x67c86  2      
  cmpl $0x7, (%r15,%rax,1)      #  93    0x67c88  5      
  jne .L_67d00                  #  94    0x67c8d  6      
  movl %eax, %eax               #  95    0x67c93  2      
  movq 0x30(%r15,%rax,1), %rdx  #  96    0x67c95  5      
  nop                           #  97    0x67c9a  1      
  cmpw $0x3, 0xffb836d(%rip)    #  98    0x67c9b  8      
  movl %edx, 0xffcee03(%rip)    #  99    0x67ca3  6      
  movl %eax, %eax               #  100   0x67ca9  2      
  movl 0x10(%r15,%rax,1), %edx  #  101   0x67cab  5      
  movl %edx, 0xffcedea(%rip)    #  102   0x67cb0  6      
  nop                           #  103   0x67cb6  1      
  jne .L_67d80                  #  104   0x67cb7  6      
  addl $0x10020000, %edx        #  105   0x67cbd  6      
  movl %edx, 0xffcedd7(%rip)    #  106   0x67cc3  6      
  nop                           #  107   0x67cc9  1      
  nop                           #  108   0x67cca  1      
.L_67d80:                       #        0x67ccb  0      
  movl %eax, %eax               #  109   0x67ccb  2      
  movq 0x20(%r15,%rax,1), %rdx  #  110   0x67ccd  5      
  movl %eax, %eax               #  111   0x67cd2  2      
  movq 0x28(%r15,%rax,1), %rax  #  112   0x67cd4  5      
  subl %edx, %eax               #  113   0x67cd9  2      
  movl %edx, 0xffcedc3(%rip)    #  114   0x67cdb  6      
  movl %eax, 0xffcedc1(%rip)    #  115   0x67ce1  6      
  nop                           #  116   0x67ce7  1      
  jmpq .L_67ba0                 #  117   0x67ce8  5      
  nop                           #  118   0x67ced  1      
  nop                           #  119   0x67cee  1      
                                                         
.size get_tls_info, .-get_tls_info

