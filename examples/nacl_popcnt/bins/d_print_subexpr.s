  .text
  .globl d_print_subexpr
  .type d_print_subexpr, @function

#! file-offset 0x58ae0
#! rip-offset  0x58ae0
#! capacity    512 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_subexpr:                 #        0x58ae0  0      
  movq %r12, -0x8(%rsp)           #  1     0x58ae0  5      
  movl %esi, %r12d                #  2     0x58ae5  3      
  movq %rbx, -0x10(%rsp)          #  3     0x58ae8  5      
  subl $0x18, %esp                #  4     0x58aed  3      
  addq %r15, %rsp                 #  5     0x58af0  3      
  movl %r12d, %r12d               #  6     0x58af3  3      
  movl (%r15,%r12,1), %eax        #  7     0x58af6  4      
  movl %edi, %ebx                 #  8     0x58afa  2      
  cmpl $0x6, %eax                 #  9     0x58afc  3      
  nop                             #  10    0x58aff  1      
  je .L_58b20                     #  11    0x58b00  6      
  testl %eax, %eax                #  12    0x58b06  2      
  jne .L_58b40                    #  13    0x58b08  6      
  nop                             #  14    0x58b0e  1      
  nop                             #  15    0x58b0f  1      
.L_58b20:                         #        0x58b10  0      
  movl %r12d, %esi                #  16    0x58b10  3      
  movl %ebx, %edi                 #  17    0x58b13  2      
  movq 0x10(%rsp), %r12           #  18    0x58b15  5      
  movq 0x8(%rsp), %rbx            #  19    0x58b1a  5      
  addl $0x18, %esp                #  20    0x58b1f  3      
  addq %r15, %rsp                 #  21    0x58b22  3      
  jmpq .d_print_comp              #  22    0x58b25  5      
  nop                             #  23    0x58b2a  1      
.L_58b40:                         #        0x58b2b  0      
  movl %ebx, %ebx                 #  24    0x58b2b  2      
  movl 0x104(%r15,%rbx,1), %eax   #  25    0x58b2d  8      
  cmpl $0xff, %eax                #  26    0x58b35  3      
  leal 0x1(%rax), %edx            #  27    0x58b38  3      
  je .L_58c20                     #  28    0x58b3b  6      
  nop                             #  29    0x58b41  1      
.L_58b60:                         #        0x58b42  0      
  cltq                            #  30    0x58b42  2      
  movl %ebx, %ebx                 #  31    0x58b44  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  32    0x58b46  8      
  movl %ebx, %ebx                 #  33    0x58b4e  2      
  movb $0x28, 0x108(%r15,%rbx,1)  #  34    0x58b50  9      
  leaq (%rbx,%rax,1), %rax        #  35    0x58b59  4      
  movl %r12d, %esi                #  36    0x58b5d  3      
  movl %ebx, %edi                 #  37    0x58b60  2      
  movl %eax, %eax                 #  38    0x58b62  2      
  movb $0x28, 0x4(%r15,%rax,1)    #  39    0x58b64  6      
  nop                             #  40    0x58b6a  1      
  nop                             #  41    0x58b6b  1      
  callq .d_print_comp             #  42    0x58b6c  5      
  movl %ebx, %ebx                 #  43    0x58b71  2      
  movl 0x104(%r15,%rbx,1), %eax   #  44    0x58b73  8      
  cmpl $0xff, %eax                #  45    0x58b7b  3      
  leal 0x1(%rax), %edx            #  46    0x58b7e  3      
  je .L_58c80                     #  47    0x58b81  6      
  nop                             #  48    0x58b87  1      
.L_58bc0:                         #        0x58b88  0      
  cltq                            #  49    0x58b88  2      
  movl %ebx, %ebx                 #  50    0x58b8a  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  51    0x58b8c  8      
  movl %ebx, %ebx                 #  52    0x58b94  2      
  movb $0x29, 0x108(%r15,%rbx,1)  #  53    0x58b96  9      
  leaq (%rbx,%rax,1), %rax        #  54    0x58b9f  4      
  nop                             #  55    0x58ba3  1      
  movl %eax, %eax                 #  56    0x58ba4  2      
  movb $0x29, 0x4(%r15,%rax,1)    #  57    0x58ba6  6      
  movq 0x8(%rsp), %rbx            #  58    0x58bac  5      
  movq 0x10(%rsp), %r12           #  59    0x58bb1  5      
  addl $0x18, %esp                #  60    0x58bb6  3      
  addq %r15, %rsp                 #  61    0x58bb9  3      
  popq %r11                       #  62    0x58bbc  3      
  nop                             #  63    0x58bbf  1      
  andl $0xffffffe0, %r11d         #  64    0x58bc0  7      
  addq %r15, %r11                 #  65    0x58bc7  3      
  jmpq %r11                       #  66    0x58bca  3      
  nop                             #  67    0x58bcd  1      
  nop                             #  68    0x58bce  1      
.L_58c20:                         #        0x58bcf  0      
  movl %ebx, %ebx                 #  69    0x58bcf  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  70    0x58bd1  8      
  movl %ebx, %ebx                 #  71    0x58bd9  2      
  movl 0x110(%r15,%rbx,1), %edx   #  72    0x58bdb  8      
  leal 0x4(%rbx), %edi            #  73    0x58be3  3      
  nop                             #  74    0x58be6  1      
  movl %ebx, %ebx                 #  75    0x58be7  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  76    0x58be9  9      
  movl $0xff, %esi                #  77    0x58bf2  5      
  nop                             #  78    0x58bf7  1      
  andl $0xffffffe0, %eax          #  79    0x58bf8  5      
  addq %r15, %rax                 #  80    0x58bfd  3      
  callq %rax                      #  81    0x58c00  2      
  movl %ebx, %ebx                 #  82    0x58c02  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  83    0x58c04  12     
  movl $0x1, %edx                 #  84    0x58c10  5      
  xorl %eax, %eax                 #  85    0x58c15  2      
  jmpq .L_58b60                   #  86    0x58c17  5      
  nop                             #  87    0x58c1c  1      
.L_58c80:                         #        0x58c1d  0      
  movl %ebx, %ebx                 #  88    0x58c1d  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  89    0x58c1f  8      
  movl %ebx, %ebx                 #  90    0x58c27  2      
  movl 0x110(%r15,%rbx,1), %edx   #  91    0x58c29  8      
  leal 0x4(%rbx), %edi            #  92    0x58c31  3      
  nop                             #  93    0x58c34  1      
  movl %ebx, %ebx                 #  94    0x58c35  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  95    0x58c37  9      
  movl $0xff, %esi                #  96    0x58c40  5      
  nop                             #  97    0x58c45  1      
  andl $0xffffffe0, %eax          #  98    0x58c46  5      
  addq %r15, %rax                 #  99    0x58c4b  3      
  callq %rax                      #  100   0x58c4e  2      
  movl %ebx, %ebx                 #  101   0x58c50  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  102   0x58c52  12     
  movl $0x1, %edx                 #  103   0x58c5e  5      
  xorl %eax, %eax                 #  104   0x58c63  2      
  jmpq .L_58bc0                   #  105   0x58c65  5      
  nop                             #  106   0x58c6a  1      
  nop                             #  107   0x58c6b  1      
  nop                             #  108   0x58c6c  1      
  nop                             #  109   0x58c6d  1      
  nop                             #  110   0x58c6e  1      
  nop                             #  111   0x58c6f  1      
                                                           
.size d_print_subexpr, .-d_print_subexpr

