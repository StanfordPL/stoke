  .text
  .globl get_tls_info
  .type get_tls_info, @function

#! file-offset 0x67ba0
#! rip-offset  0x67ba0
#! capacity    672 bytes

# Text                          #  Line  RIP      Bytes  
.get_tls_info:                  #        0x67ba0  0      
  movl 0xffcef06(%rip), %eax    #  1     0x67ba0  6      
  testl %eax, %eax              #  2     0x67ba6  2      
  jne .L_67c20                  #  3     0x67ba8  6      
  movl $0x10020000, %eax        #  4     0x67bae  5      
  testl %eax, %eax              #  5     0x67bb3  2      
  jne .L_67c40                  #  6     0x67bb5  6      
  nop                           #  7     0x67bbb  1      
.L_67bc0:                       #        0x67bbc  0      
  testl %eax, %eax              #  8     0x67bbc  2      
  jne .L_67d40                  #  9     0x67bbe  6      
  nop                           #  10    0x67bc4  1      
  nop                           #  11    0x67bc5  1      
.L_67be0:                       #        0x67bc6  0      
  movl -0x67bcc(%rip), %eax     #  12    0x67bc6  6      
  movl $0x0, 0xffceeca(%rip)    #  13    0x67bcc  10     
  movl %eax, 0xffceed0(%rip)    #  14    0x67bd6  6      
  movl $0x0, %eax               #  15    0x67bdc  5      
  subl $0x0, %eax               #  16    0x67be1  3      
  movl %eax, 0xffceeba(%rip)    #  17    0x67be4  6      
  movl $0x0, %eax               #  18    0x67bea  5      
  subl $0x0, %eax               #  19    0x67bef  3      
  movl %eax, 0xffceeb0(%rip)    #  20    0x67bf2  6      
  nop                           #  21    0x67bf8  1      
.L_67c20:                       #        0x67bf9  0      
  popq %r11                     #  22    0x67bf9  3      
  movl $0x10036aa0, %eax        #  23    0x67bfc  5      
  andl $0xffffffe0, %r11d       #  24    0x67c01  7      
  addq %r15, %r11               #  25    0x67c08  3      
  jmpq %r11                     #  26    0x67c0b  3      
  nop                           #  27    0x67c0e  1      
.L_67c40:                       #        0x67c0f  0      
  cmpb $0x1, 0xffb83ee(%rip)    #  28    0x67c0f  7      
  jne .L_67bc0                  #  29    0x67c16  6      
  cmpw $0x20, 0xffb8406(%rip)   #  30    0x67c1c  8      
  jne .L_67bc0                  #  31    0x67c24  6      
  nop                           #  32    0x67c2a  1      
  movl 0xffb83eb(%rip), %esi    #  33    0x67c2b  6      
  movzwl 0xffb83f4(%rip), %edi  #  34    0x67c31  7      
  xorl %ecx, %ecx               #  35    0x67c38  2      
  addl %eax, %esi               #  36    0x67c3a  2      
  jmpq .L_67ca0                 #  37    0x67c3c  5      
  nop                           #  38    0x67c41  1      
.L_67c80:                       #        0x67c42  0      
  addl $0x1, %ecx               #  39    0x67c42  3      
  nop                           #  40    0x67c45  1      
  nop                           #  41    0x67c46  1      
.L_67ca0:                       #        0x67c47  0      
  cmpl %edi, %ecx               #  42    0x67c47  2      
  jge .L_67bc0                  #  43    0x67c49  6      
  movl %esi, %edx               #  44    0x67c4f  2      
  addl $0x20, %esi              #  45    0x67c51  3      
  movl %edx, %edx               #  46    0x67c54  2      
  cmpl $0x7, (%r15,%rdx,1)      #  47    0x67c56  5      
  jne .L_67c80                  #  48    0x67c5b  6      
  movl %edx, %edx               #  49    0x67c61  2      
  movl 0x1c(%r15,%rdx,1), %eax  #  50    0x67c63  5      
  nop                           #  51    0x67c68  1      
  cmpw $0x3, 0xffb839f(%rip)    #  52    0x67c69  8      
  movl %eax, 0xffcee35(%rip)    #  53    0x67c71  6      
  movl %edx, %edx               #  54    0x67c77  2      
  movl 0x8(%r15,%rdx,1), %eax   #  55    0x67c79  5      
  movl %eax, 0xffcee1c(%rip)    #  56    0x67c7e  6      
  nop                           #  57    0x67c84  1      
  jne .L_67d00                  #  58    0x67c85  6      
  addl $0x10020000, %eax        #  59    0x67c8b  5      
  movl %eax, 0xffcee0a(%rip)    #  60    0x67c90  6      
  nop                           #  61    0x67c96  1      
  nop                           #  62    0x67c97  1      
.L_67d00:                       #        0x67c98  0      
  movl %edx, %edx               #  63    0x67c98  2      
  movl 0x10(%r15,%rdx,1), %ecx  #  64    0x67c9a  5      
  movl %ecx, 0xffcedff(%rip)    #  65    0x67c9f  6      
  movl %edx, %edx               #  66    0x67ca5  2      
  movl 0x14(%r15,%rdx,1), %eax  #  67    0x67ca7  5      
  subl %ecx, %eax               #  68    0x67cac  2      
  movl %eax, 0xffcedf4(%rip)    #  69    0x67cae  6      
  nop                           #  70    0x67cb4  1      
  jmpq .L_67c20                 #  71    0x67cb5  5      
  nop                           #  72    0x67cba  1      
  nop                           #  73    0x67cbb  1      
.L_67d40:                       #        0x67cbc  0      
  cmpb $0x2, 0xffb8341(%rip)    #  74    0x67cbc  7      
  jne .L_67be0                  #  75    0x67cc3  6      
  cmpw $0x38, 0xffb8365(%rip)   #  76    0x67cc9  8      
  jne .L_67be0                  #  77    0x67cd1  6      
  nop                           #  78    0x67cd7  1      
  movq 0xffb8341(%rip), %rcx    #  79    0x67cd8  7      
  movzwl 0xffb8352(%rip), %esi  #  80    0x67cdf  7      
  xorl %edx, %edx               #  81    0x67ce6  2      
  addl $0x10020000, %ecx        #  82    0x67ce8  6      
  jmpq .L_67da0                 #  83    0x67cee  5      
  nop                           #  84    0x67cf3  1      
.L_67d80:                       #        0x67cf4  0      
  addl $0x1, %edx               #  85    0x67cf4  3      
  nop                           #  86    0x67cf7  1      
  nop                           #  87    0x67cf8  1      
.L_67da0:                       #        0x67cf9  0      
  cmpl %esi, %edx               #  88    0x67cf9  2      
  jge .L_67be0                  #  89    0x67cfb  6      
  movl %ecx, %eax               #  90    0x67d01  2      
  addl $0x38, %ecx              #  91    0x67d03  3      
  movl %eax, %eax               #  92    0x67d06  2      
  cmpl $0x7, (%r15,%rax,1)      #  93    0x67d08  5      
  jne .L_67d80                  #  94    0x67d0d  6      
  movl %eax, %eax               #  95    0x67d13  2      
  movq 0x30(%r15,%rax,1), %rdx  #  96    0x67d15  5      
  nop                           #  97    0x67d1a  1      
  cmpw $0x3, 0xffb82ed(%rip)    #  98    0x67d1b  8      
  movl %edx, 0xffced83(%rip)    #  99    0x67d23  6      
  movl %eax, %eax               #  100   0x67d29  2      
  movl 0x10(%r15,%rax,1), %edx  #  101   0x67d2b  5      
  movl %edx, 0xffced6a(%rip)    #  102   0x67d30  6      
  nop                           #  103   0x67d36  1      
  jne .L_67e00                  #  104   0x67d37  6      
  addl $0x10020000, %edx        #  105   0x67d3d  6      
  movl %edx, 0xffced57(%rip)    #  106   0x67d43  6      
  nop                           #  107   0x67d49  1      
  nop                           #  108   0x67d4a  1      
.L_67e00:                       #        0x67d4b  0      
  movl %eax, %eax               #  109   0x67d4b  2      
  movq 0x20(%r15,%rax,1), %rdx  #  110   0x67d4d  5      
  movl %eax, %eax               #  111   0x67d52  2      
  movq 0x28(%r15,%rax,1), %rax  #  112   0x67d54  5      
  subl %edx, %eax               #  113   0x67d59  2      
  movl %edx, 0xffced43(%rip)    #  114   0x67d5b  6      
  movl %eax, 0xffced41(%rip)    #  115   0x67d61  6      
  nop                           #  116   0x67d67  1      
  jmpq .L_67c20                 #  117   0x67d68  5      
  nop                           #  118   0x67d6d  1      
  nop                           #  119   0x67d6e  1      
                                                         
.size get_tls_info, .-get_tls_info

