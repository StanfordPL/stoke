  .text
  .globl d_print_subexpr
  .type d_print_subexpr, @function

#! file-offset 0x58b80
#! rip-offset  0x58b80
#! capacity    512 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_subexpr:                 #        0x58b80  0      
  movq %r12, -0x8(%rsp)           #  1     0x58b80  5      
  movl %esi, %r12d                #  2     0x58b85  3      
  movq %rbx, -0x10(%rsp)          #  3     0x58b88  5      
  subl $0x18, %esp                #  4     0x58b8d  3      
  addq %r15, %rsp                 #  5     0x58b90  3      
  movl %r12d, %r12d               #  6     0x58b93  3      
  movl (%r15,%r12,1), %eax        #  7     0x58b96  4      
  movl %edi, %ebx                 #  8     0x58b9a  2      
  cmpl $0x6, %eax                 #  9     0x58b9c  3      
  nop                             #  10    0x58b9f  1      
  je .L_58bc0                     #  11    0x58ba0  6      
  testl %eax, %eax                #  12    0x58ba6  2      
  jne .L_58be0                    #  13    0x58ba8  6      
  nop                             #  14    0x58bae  1      
  nop                             #  15    0x58baf  1      
.L_58bc0:                         #        0x58bb0  0      
  movl %r12d, %esi                #  16    0x58bb0  3      
  movl %ebx, %edi                 #  17    0x58bb3  2      
  movq 0x10(%rsp), %r12           #  18    0x58bb5  5      
  movq 0x8(%rsp), %rbx            #  19    0x58bba  5      
  addl $0x18, %esp                #  20    0x58bbf  3      
  addq %r15, %rsp                 #  21    0x58bc2  3      
  jmpq .d_print_comp              #  22    0x58bc5  5      
  nop                             #  23    0x58bca  1      
.L_58be0:                         #        0x58bcb  0      
  movl %ebx, %ebx                 #  24    0x58bcb  2      
  movl 0x104(%r15,%rbx,1), %eax   #  25    0x58bcd  8      
  cmpl $0xff, %eax                #  26    0x58bd5  3      
  leal 0x1(%rax), %edx            #  27    0x58bd8  3      
  je .L_58cc0                     #  28    0x58bdb  6      
  nop                             #  29    0x58be1  1      
.L_58c00:                         #        0x58be2  0      
  cltq                            #  30    0x58be2  2      
  movl %ebx, %ebx                 #  31    0x58be4  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  32    0x58be6  8      
  movl %ebx, %ebx                 #  33    0x58bee  2      
  movb $0x28, 0x108(%r15,%rbx,1)  #  34    0x58bf0  9      
  leaq (%rbx,%rax,1), %rax        #  35    0x58bf9  4      
  movl %r12d, %esi                #  36    0x58bfd  3      
  movl %ebx, %edi                 #  37    0x58c00  2      
  movl %eax, %eax                 #  38    0x58c02  2      
  movb $0x28, 0x4(%r15,%rax,1)    #  39    0x58c04  6      
  nop                             #  40    0x58c0a  1      
  nop                             #  41    0x58c0b  1      
  callq .d_print_comp             #  42    0x58c0c  5      
  movl %ebx, %ebx                 #  43    0x58c11  2      
  movl 0x104(%r15,%rbx,1), %eax   #  44    0x58c13  8      
  cmpl $0xff, %eax                #  45    0x58c1b  3      
  leal 0x1(%rax), %edx            #  46    0x58c1e  3      
  je .L_58d20                     #  47    0x58c21  6      
  nop                             #  48    0x58c27  1      
.L_58c60:                         #        0x58c28  0      
  cltq                            #  49    0x58c28  2      
  movl %ebx, %ebx                 #  50    0x58c2a  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  51    0x58c2c  8      
  movl %ebx, %ebx                 #  52    0x58c34  2      
  movb $0x29, 0x108(%r15,%rbx,1)  #  53    0x58c36  9      
  leaq (%rbx,%rax,1), %rax        #  54    0x58c3f  4      
  nop                             #  55    0x58c43  1      
  movl %eax, %eax                 #  56    0x58c44  2      
  movb $0x29, 0x4(%r15,%rax,1)    #  57    0x58c46  6      
  movq 0x8(%rsp), %rbx            #  58    0x58c4c  5      
  movq 0x10(%rsp), %r12           #  59    0x58c51  5      
  addl $0x18, %esp                #  60    0x58c56  3      
  addq %r15, %rsp                 #  61    0x58c59  3      
  popq %r11                       #  62    0x58c5c  3      
  nop                             #  63    0x58c5f  1      
  andl $0xffffffe0, %r11d         #  64    0x58c60  7      
  addq %r15, %r11                 #  65    0x58c67  3      
  jmpq %r11                       #  66    0x58c6a  3      
  nop                             #  67    0x58c6d  1      
  nop                             #  68    0x58c6e  1      
.L_58cc0:                         #        0x58c6f  0      
  movl %ebx, %ebx                 #  69    0x58c6f  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  70    0x58c71  8      
  movl %ebx, %ebx                 #  71    0x58c79  2      
  movl 0x110(%r15,%rbx,1), %edx   #  72    0x58c7b  8      
  leal 0x4(%rbx), %edi            #  73    0x58c83  3      
  nop                             #  74    0x58c86  1      
  movl %ebx, %ebx                 #  75    0x58c87  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  76    0x58c89  9      
  movl $0xff, %esi                #  77    0x58c92  5      
  nop                             #  78    0x58c97  1      
  andl $0xffffffe0, %eax          #  79    0x58c98  5      
  addq %r15, %rax                 #  80    0x58c9d  3      
  callq %rax                      #  81    0x58ca0  2      
  movl %ebx, %ebx                 #  82    0x58ca2  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  83    0x58ca4  12     
  movl $0x1, %edx                 #  84    0x58cb0  5      
  xorl %eax, %eax                 #  85    0x58cb5  2      
  jmpq .L_58c00                   #  86    0x58cb7  5      
  nop                             #  87    0x58cbc  1      
.L_58d20:                         #        0x58cbd  0      
  movl %ebx, %ebx                 #  88    0x58cbd  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  89    0x58cbf  8      
  movl %ebx, %ebx                 #  90    0x58cc7  2      
  movl 0x110(%r15,%rbx,1), %edx   #  91    0x58cc9  8      
  leal 0x4(%rbx), %edi            #  92    0x58cd1  3      
  nop                             #  93    0x58cd4  1      
  movl %ebx, %ebx                 #  94    0x58cd5  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  95    0x58cd7  9      
  movl $0xff, %esi                #  96    0x58ce0  5      
  nop                             #  97    0x58ce5  1      
  andl $0xffffffe0, %eax          #  98    0x58ce6  5      
  addq %r15, %rax                 #  99    0x58ceb  3      
  callq %rax                      #  100   0x58cee  2      
  movl %ebx, %ebx                 #  101   0x58cf0  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  102   0x58cf2  12     
  movl $0x1, %edx                 #  103   0x58cfe  5      
  xorl %eax, %eax                 #  104   0x58d03  2      
  jmpq .L_58c60                   #  105   0x58d05  5      
  nop                             #  106   0x58d0a  1      
  nop                             #  107   0x58d0b  1      
  nop                             #  108   0x58d0c  1      
  nop                             #  109   0x58d0d  1      
  nop                             #  110   0x58d0e  1      
  nop                             #  111   0x58d0f  1      
                                                           
.size d_print_subexpr, .-d_print_subexpr

