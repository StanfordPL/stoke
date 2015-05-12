  .text
  .globl d_print_subexpr
  .type d_print_subexpr, @function

#! file-offset 0x58b00
#! rip-offset  0x58b00
#! capacity    512 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_subexpr:                 #        0x58b00  0      
  movq %r12, -0x8(%rsp)           #  1     0x58b00  5      
  movl %esi, %r12d                #  2     0x58b05  3      
  movq %rbx, -0x10(%rsp)          #  3     0x58b08  5      
  subl $0x18, %esp                #  4     0x58b0d  3      
  addq %r15, %rsp                 #  5     0x58b10  3      
  movl %r12d, %r12d               #  6     0x58b13  3      
  movl (%r15,%r12,1), %eax        #  7     0x58b16  4      
  movl %edi, %ebx                 #  8     0x58b1a  2      
  cmpl $0x6, %eax                 #  9     0x58b1c  3      
  nop                             #  10    0x58b1f  1      
  je .L_58b40                     #  11    0x58b20  6      
  testl %eax, %eax                #  12    0x58b26  2      
  jne .L_58b60                    #  13    0x58b28  6      
  nop                             #  14    0x58b2e  1      
  nop                             #  15    0x58b2f  1      
.L_58b40:                         #        0x58b30  0      
  movl %r12d, %esi                #  16    0x58b30  3      
  movl %ebx, %edi                 #  17    0x58b33  2      
  movq 0x10(%rsp), %r12           #  18    0x58b35  5      
  movq 0x8(%rsp), %rbx            #  19    0x58b3a  5      
  addl $0x18, %esp                #  20    0x58b3f  3      
  addq %r15, %rsp                 #  21    0x58b42  3      
  jmpq .d_print_comp              #  22    0x58b45  5      
  nop                             #  23    0x58b4a  1      
.L_58b60:                         #        0x58b4b  0      
  movl %ebx, %ebx                 #  24    0x58b4b  2      
  movl 0x104(%r15,%rbx,1), %eax   #  25    0x58b4d  8      
  cmpl $0xff, %eax                #  26    0x58b55  3      
  leal 0x1(%rax), %edx            #  27    0x58b58  3      
  je .L_58c40                     #  28    0x58b5b  6      
  nop                             #  29    0x58b61  1      
.L_58b80:                         #        0x58b62  0      
  cltq                            #  30    0x58b62  2      
  movl %ebx, %ebx                 #  31    0x58b64  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  32    0x58b66  8      
  movl %ebx, %ebx                 #  33    0x58b6e  2      
  movb $0x28, 0x108(%r15,%rbx,1)  #  34    0x58b70  9      
  leaq (%rbx,%rax,1), %rax        #  35    0x58b79  4      
  movl %r12d, %esi                #  36    0x58b7d  3      
  movl %ebx, %edi                 #  37    0x58b80  2      
  movl %eax, %eax                 #  38    0x58b82  2      
  movb $0x28, 0x4(%r15,%rax,1)    #  39    0x58b84  6      
  nop                             #  40    0x58b8a  1      
  nop                             #  41    0x58b8b  1      
  callq .d_print_comp             #  42    0x58b8c  5      
  movl %ebx, %ebx                 #  43    0x58b91  2      
  movl 0x104(%r15,%rbx,1), %eax   #  44    0x58b93  8      
  cmpl $0xff, %eax                #  45    0x58b9b  3      
  leal 0x1(%rax), %edx            #  46    0x58b9e  3      
  je .L_58ca0                     #  47    0x58ba1  6      
  nop                             #  48    0x58ba7  1      
.L_58be0:                         #        0x58ba8  0      
  cltq                            #  49    0x58ba8  2      
  movl %ebx, %ebx                 #  50    0x58baa  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  51    0x58bac  8      
  movl %ebx, %ebx                 #  52    0x58bb4  2      
  movb $0x29, 0x108(%r15,%rbx,1)  #  53    0x58bb6  9      
  leaq (%rbx,%rax,1), %rax        #  54    0x58bbf  4      
  nop                             #  55    0x58bc3  1      
  movl %eax, %eax                 #  56    0x58bc4  2      
  movb $0x29, 0x4(%r15,%rax,1)    #  57    0x58bc6  6      
  movq 0x8(%rsp), %rbx            #  58    0x58bcc  5      
  movq 0x10(%rsp), %r12           #  59    0x58bd1  5      
  addl $0x18, %esp                #  60    0x58bd6  3      
  addq %r15, %rsp                 #  61    0x58bd9  3      
  popq %r11                       #  62    0x58bdc  3      
  nop                             #  63    0x58bdf  1      
  andl $0xffffffe0, %r11d         #  64    0x58be0  7      
  addq %r15, %r11                 #  65    0x58be7  3      
  jmpq %r11                       #  66    0x58bea  3      
  nop                             #  67    0x58bed  1      
  nop                             #  68    0x58bee  1      
.L_58c40:                         #        0x58bef  0      
  movl %ebx, %ebx                 #  69    0x58bef  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  70    0x58bf1  8      
  movl %ebx, %ebx                 #  71    0x58bf9  2      
  movl 0x110(%r15,%rbx,1), %edx   #  72    0x58bfb  8      
  leal 0x4(%rbx), %edi            #  73    0x58c03  3      
  nop                             #  74    0x58c06  1      
  movl %ebx, %ebx                 #  75    0x58c07  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  76    0x58c09  9      
  movl $0xff, %esi                #  77    0x58c12  5      
  nop                             #  78    0x58c17  1      
  andl $0xffffffe0, %eax          #  79    0x58c18  5      
  addq %r15, %rax                 #  80    0x58c1d  3      
  callq %rax                      #  81    0x58c20  2      
  movl %ebx, %ebx                 #  82    0x58c22  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  83    0x58c24  12     
  movl $0x1, %edx                 #  84    0x58c30  5      
  xorl %eax, %eax                 #  85    0x58c35  2      
  jmpq .L_58b80                   #  86    0x58c37  5      
  nop                             #  87    0x58c3c  1      
.L_58ca0:                         #        0x58c3d  0      
  movl %ebx, %ebx                 #  88    0x58c3d  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  89    0x58c3f  8      
  movl %ebx, %ebx                 #  90    0x58c47  2      
  movl 0x110(%r15,%rbx,1), %edx   #  91    0x58c49  8      
  leal 0x4(%rbx), %edi            #  92    0x58c51  3      
  nop                             #  93    0x58c54  1      
  movl %ebx, %ebx                 #  94    0x58c55  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  95    0x58c57  9      
  movl $0xff, %esi                #  96    0x58c60  5      
  nop                             #  97    0x58c65  1      
  andl $0xffffffe0, %eax          #  98    0x58c66  5      
  addq %r15, %rax                 #  99    0x58c6b  3      
  callq %rax                      #  100   0x58c6e  2      
  movl %ebx, %ebx                 #  101   0x58c70  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  102   0x58c72  12     
  movl $0x1, %edx                 #  103   0x58c7e  5      
  xorl %eax, %eax                 #  104   0x58c83  2      
  jmpq .L_58be0                   #  105   0x58c85  5      
  nop                             #  106   0x58c8a  1      
  nop                             #  107   0x58c8b  1      
  nop                             #  108   0x58c8c  1      
  nop                             #  109   0x58c8d  1      
  nop                             #  110   0x58c8e  1      
  nop                             #  111   0x58c8f  1      
                                                           
.size d_print_subexpr, .-d_print_subexpr

