  .text
  .globl get_tls_info
  .type get_tls_info, @function

#! file-offset 0x67b00
#! rip-offset  0x67b00
#! capacity    672 bytes

# Text                          #  Line  RIP      Bytes  
.get_tls_info:                  #        0x67b00  0      
  movl 0xffcefa6(%rip), %eax    #  1     0x67b00  6      
  testl %eax, %eax              #  2     0x67b06  2      
  jne .L_67b80                  #  3     0x67b08  6      
  movl $0x10020000, %eax        #  4     0x67b0e  5      
  testl %eax, %eax              #  5     0x67b13  2      
  jne .L_67ba0                  #  6     0x67b15  6      
  nop                           #  7     0x67b1b  1      
.L_67b20:                       #        0x67b1c  0      
  testl %eax, %eax              #  8     0x67b1c  2      
  jne .L_67ca0                  #  9     0x67b1e  6      
  nop                           #  10    0x67b24  1      
  nop                           #  11    0x67b25  1      
.L_67b40:                       #        0x67b26  0      
  movl -0x67b2c(%rip), %eax     #  12    0x67b26  6      
  movl $0x0, 0xffcef6a(%rip)    #  13    0x67b2c  10     
  movl %eax, 0xffcef70(%rip)    #  14    0x67b36  6      
  movl $0x0, %eax               #  15    0x67b3c  5      
  subl $0x0, %eax               #  16    0x67b41  3      
  movl %eax, 0xffcef5a(%rip)    #  17    0x67b44  6      
  movl $0x0, %eax               #  18    0x67b4a  5      
  subl $0x0, %eax               #  19    0x67b4f  3      
  movl %eax, 0xffcef50(%rip)    #  20    0x67b52  6      
  nop                           #  21    0x67b58  1      
.L_67b80:                       #        0x67b59  0      
  popq %r11                     #  22    0x67b59  3      
  movl $0x10036aa0, %eax        #  23    0x67b5c  5      
  andl $0xffffffe0, %r11d       #  24    0x67b61  7      
  addq %r15, %r11               #  25    0x67b68  3      
  jmpq %r11                     #  26    0x67b6b  3      
  nop                           #  27    0x67b6e  1      
.L_67ba0:                       #        0x67b6f  0      
  cmpb $0x1, 0xffb848e(%rip)    #  28    0x67b6f  7      
  jne .L_67b20                  #  29    0x67b76  6      
  cmpw $0x20, 0xffb84a6(%rip)   #  30    0x67b7c  8      
  jne .L_67b20                  #  31    0x67b84  6      
  nop                           #  32    0x67b8a  1      
  movl 0xffb848b(%rip), %esi    #  33    0x67b8b  6      
  movzwl 0xffb8494(%rip), %edi  #  34    0x67b91  7      
  xorl %ecx, %ecx               #  35    0x67b98  2      
  addl %eax, %esi               #  36    0x67b9a  2      
  jmpq .L_67c00                 #  37    0x67b9c  5      
  nop                           #  38    0x67ba1  1      
.L_67be0:                       #        0x67ba2  0      
  addl $0x1, %ecx               #  39    0x67ba2  3      
  nop                           #  40    0x67ba5  1      
  nop                           #  41    0x67ba6  1      
.L_67c00:                       #        0x67ba7  0      
  cmpl %edi, %ecx               #  42    0x67ba7  2      
  jge .L_67b20                  #  43    0x67ba9  6      
  movl %esi, %edx               #  44    0x67baf  2      
  addl $0x20, %esi              #  45    0x67bb1  3      
  movl %edx, %edx               #  46    0x67bb4  2      
  cmpl $0x7, (%r15,%rdx,1)      #  47    0x67bb6  5      
  jne .L_67be0                  #  48    0x67bbb  6      
  movl %edx, %edx               #  49    0x67bc1  2      
  movl 0x1c(%r15,%rdx,1), %eax  #  50    0x67bc3  5      
  nop                           #  51    0x67bc8  1      
  cmpw $0x3, 0xffb843f(%rip)    #  52    0x67bc9  8      
  movl %eax, 0xffceed5(%rip)    #  53    0x67bd1  6      
  movl %edx, %edx               #  54    0x67bd7  2      
  movl 0x8(%r15,%rdx,1), %eax   #  55    0x67bd9  5      
  movl %eax, 0xffceebc(%rip)    #  56    0x67bde  6      
  nop                           #  57    0x67be4  1      
  jne .L_67c60                  #  58    0x67be5  6      
  addl $0x10020000, %eax        #  59    0x67beb  5      
  movl %eax, 0xffceeaa(%rip)    #  60    0x67bf0  6      
  nop                           #  61    0x67bf6  1      
  nop                           #  62    0x67bf7  1      
.L_67c60:                       #        0x67bf8  0      
  movl %edx, %edx               #  63    0x67bf8  2      
  movl 0x10(%r15,%rdx,1), %ecx  #  64    0x67bfa  5      
  movl %ecx, 0xffcee9f(%rip)    #  65    0x67bff  6      
  movl %edx, %edx               #  66    0x67c05  2      
  movl 0x14(%r15,%rdx,1), %eax  #  67    0x67c07  5      
  subl %ecx, %eax               #  68    0x67c0c  2      
  movl %eax, 0xffcee94(%rip)    #  69    0x67c0e  6      
  nop                           #  70    0x67c14  1      
  jmpq .L_67b80                 #  71    0x67c15  5      
  nop                           #  72    0x67c1a  1      
  nop                           #  73    0x67c1b  1      
.L_67ca0:                       #        0x67c1c  0      
  cmpb $0x2, 0xffb83e1(%rip)    #  74    0x67c1c  7      
  jne .L_67b40                  #  75    0x67c23  6      
  cmpw $0x38, 0xffb8405(%rip)   #  76    0x67c29  8      
  jne .L_67b40                  #  77    0x67c31  6      
  nop                           #  78    0x67c37  1      
  movq 0xffb83e1(%rip), %rcx    #  79    0x67c38  7      
  movzwl 0xffb83f2(%rip), %esi  #  80    0x67c3f  7      
  xorl %edx, %edx               #  81    0x67c46  2      
  addl $0x10020000, %ecx        #  82    0x67c48  6      
  jmpq .L_67d00                 #  83    0x67c4e  5      
  nop                           #  84    0x67c53  1      
.L_67ce0:                       #        0x67c54  0      
  addl $0x1, %edx               #  85    0x67c54  3      
  nop                           #  86    0x67c57  1      
  nop                           #  87    0x67c58  1      
.L_67d00:                       #        0x67c59  0      
  cmpl %esi, %edx               #  88    0x67c59  2      
  jge .L_67b40                  #  89    0x67c5b  6      
  movl %ecx, %eax               #  90    0x67c61  2      
  addl $0x38, %ecx              #  91    0x67c63  3      
  movl %eax, %eax               #  92    0x67c66  2      
  cmpl $0x7, (%r15,%rax,1)      #  93    0x67c68  5      
  jne .L_67ce0                  #  94    0x67c6d  6      
  movl %eax, %eax               #  95    0x67c73  2      
  movq 0x30(%r15,%rax,1), %rdx  #  96    0x67c75  5      
  nop                           #  97    0x67c7a  1      
  cmpw $0x3, 0xffb838d(%rip)    #  98    0x67c7b  8      
  movl %edx, 0xffcee23(%rip)    #  99    0x67c83  6      
  movl %eax, %eax               #  100   0x67c89  2      
  movl 0x10(%r15,%rax,1), %edx  #  101   0x67c8b  5      
  movl %edx, 0xffcee0a(%rip)    #  102   0x67c90  6      
  nop                           #  103   0x67c96  1      
  jne .L_67d60                  #  104   0x67c97  6      
  addl $0x10020000, %edx        #  105   0x67c9d  6      
  movl %edx, 0xffcedf7(%rip)    #  106   0x67ca3  6      
  nop                           #  107   0x67ca9  1      
  nop                           #  108   0x67caa  1      
.L_67d60:                       #        0x67cab  0      
  movl %eax, %eax               #  109   0x67cab  2      
  movq 0x20(%r15,%rax,1), %rdx  #  110   0x67cad  5      
  movl %eax, %eax               #  111   0x67cb2  2      
  movq 0x28(%r15,%rax,1), %rax  #  112   0x67cb4  5      
  subl %edx, %eax               #  113   0x67cb9  2      
  movl %edx, 0xffcede3(%rip)    #  114   0x67cbb  6      
  movl %eax, 0xffcede1(%rip)    #  115   0x67cc1  6      
  nop                           #  116   0x67cc7  1      
  jmpq .L_67b80                 #  117   0x67cc8  5      
  nop                           #  118   0x67ccd  1      
  nop                           #  119   0x67cce  1      
                                                         
.size get_tls_info, .-get_tls_info

