  .text
  .globl _strtol_r
  .type _strtol_r, @function

#! file-offset 0x809c0
#! rip-offset  0x809c0
#! capacity    768 bytes

# Text                            #  Line  RIP      Bytes  
._strtol_r:                       #        0x809c0  0      
  pushq %r14                      #  1     0x809c0  3      
  movl 0xffb01fa(%rip), %r8d      #  2     0x809c3  7      
  movl %edi, %edi                 #  3     0x809ca  2      
  movl %esi, %esi                 #  4     0x809cc  2      
  movl %edx, %r10d                #  5     0x809ce  3      
  pushq %r13                      #  6     0x809d1  3      
  pushq %r12                      #  7     0x809d4  3      
  pushq %rbx                      #  8     0x809d7  2      
  movq %rdi, -0x8(%rsp)           #  9     0x809d9  5      
  movq %rsi, -0x10(%rsp)          #  10    0x809de  5      
  nop                             #  11    0x809e3  1      
.L_809e0:                         #        0x809e4  0      
  movl %esi, %esi                 #  12    0x809e4  2      
  movzbl (%r15,%rsi,1), %edi      #  13    0x809e6  5      
  addl $0x1, %esi                 #  14    0x809eb  3      
  leal (%rdi,%r8,1), %eax         #  15    0x809ee  4      
  movl %eax, %eax                 #  16    0x809f2  2      
  testb $0x8, 0x1(%r15,%rax,1)    #  17    0x809f4  6      
  jne .L_809e0                    #  18    0x809fa  6      
  cmpl $0x2d, %edi                #  19    0x80a00  3      
  nop                             #  20    0x80a03  1      
  je .L_80c00                     #  21    0x80a04  6      
  cmpl $0x2b, %edi                #  22    0x80a0a  3      
  movl $0x0, -0x14(%rsp)          #  23    0x80a0d  8      
  je .L_80c40                     #  24    0x80a15  6      
  nop                             #  25    0x80a1b  1      
.L_80a20:                         #        0x80a1c  0      
  testl %ecx, %ecx                #  26    0x80a1c  2      
  sete %al                        #  27    0x80a1e  3      
  cmpl $0x10, %ecx                #  28    0x80a21  3      
  je .L_80ba0                     #  29    0x80a24  6      
  testb %al, %al                  #  30    0x80a2a  2      
  movl %ecx, %r9d                 #  31    0x80a2c  3      
  jne .L_80ba0                    #  32    0x80a2f  6      
  nop                             #  33    0x80a35  1      
.L_80a40:                         #        0x80a36  0      
  cmpl $0x1, -0x14(%rsp)          #  34    0x80a36  5      
  movl $0x37, %r14d               #  35    0x80a3b  6      
  movl $0x57, %r13d               #  36    0x80a41  6      
  sbbl %eax, %eax                 #  37    0x80a47  2      
  xorl %edx, %edx                 #  38    0x80a49  2      
  xorl %r12d, %r12d               #  39    0x80a4b  3      
  subl $0x80000000, %eax          #  40    0x80a4e  5      
  xorl %ebx, %ebx                 #  41    0x80a53  2      
  nop                             #  42    0x80a55  1      
  divl %r9d                       #  43    0x80a56  3      
  jmpq .L_80b00                   #  44    0x80a59  5      
  nop                             #  45    0x80a5e  1      
  nop                             #  46    0x80a5f  1      
.L_80a80:                         #        0x80a60  0      
  subl $0x30, %edi                #  47    0x80a60  3      
  cmpl %edi, %ecx                 #  48    0x80a63  2      
  jle .L_80b40                    #  49    0x80a65  6      
  nop                             #  50    0x80a6b  1      
  nop                             #  51    0x80a6c  1      
.L_80aa0:                         #        0x80a6d  0      
  cmpl %eax, %ebx                 #  52    0x80a6d  2      
  ja .L_80be0                     #  53    0x80a6f  6      
  testl %r12d, %r12d              #  54    0x80a75  3      
  js .L_80be0                     #  55    0x80a78  6      
  cmpl %edx, %edi                 #  56    0x80a7e  2      
  jle .L_80ac0                    #  57    0x80a80  6      
  cmpl %eax, %ebx                 #  58    0x80a86  2      
  je .L_80be0                     #  59    0x80a88  6      
  nop                             #  60    0x80a8e  1      
.L_80ac0:                         #        0x80a8f  0      
  imull %r9d, %ebx                #  61    0x80a8f  4      
  movl $0x1, %r12d                #  62    0x80a93  6      
  leal (%rdi,%rbx,1), %ebx        #  63    0x80a99  3      
  nop                             #  64    0x80a9c  1      
  nop                             #  65    0x80a9d  1      
.L_80ae0:                         #        0x80a9e  0      
  movl %esi, %esi                 #  66    0x80a9e  2      
  movzbl (%r15,%rsi,1), %edi      #  67    0x80aa0  5      
  addl $0x1, %esi                 #  68    0x80aa5  3      
  nop                             #  69    0x80aa8  1      
  nop                             #  70    0x80aa9  1      
.L_80b00:                         #        0x80aaa  0      
  leal (%rdi,%r8,1), %r11d        #  71    0x80aaa  4      
  movl %r11d, %r11d               #  72    0x80aae  3      
  movsbl 0x1(%r15,%r11,1), %r11d  #  73    0x80ab1  6      
  testb $0x4, %r11b               #  74    0x80ab7  4      
  jne .L_80a80                    #  75    0x80abb  6      
  andl $0x3, %r11d                #  76    0x80ac1  4      
  nop                             #  77    0x80ac5  1      
  je .L_80b40                     #  78    0x80ac6  6      
  cmpl $0x1, %r11d                #  79    0x80acc  4      
  movl %r13d, %r11d               #  80    0x80ad0  3      
  cmovel %r14d, %r11d             #  81    0x80ad3  4      
  subl %r11d, %edi                #  82    0x80ad7  3      
  cmpl %edi, %ecx                 #  83    0x80ada  2      
  jg .L_80aa0                     #  84    0x80adc  6      
  nop                             #  85    0x80ae2  1      
.L_80b40:                         #        0x80ae3  0      
  cmpl $0xffffffff, %r12d         #  86    0x80ae3  7      
  je .L_80c20                     #  87    0x80aea  6      
  movl -0x14(%rsp), %edx          #  88    0x80af0  4      
  movl %ebx, %eax                 #  89    0x80af4  2      
  negl %eax                       #  90    0x80af6  2      
  testl %edx, %edx                #  91    0x80af8  2      
  cmovel %ebx, %eax               #  92    0x80afa  3      
  nop                             #  93    0x80afd  1      
.L_80b60:                         #        0x80afe  0      
  testq %r10, %r10                #  94    0x80afe  3      
  je .L_80b80                     #  95    0x80b01  6      
  subl $0x1, %esi                 #  96    0x80b07  3      
  testl %r12d, %r12d              #  97    0x80b0a  3      
  cmoveq -0x10(%rsp), %rsi        #  98    0x80b0d  6      
  movl %r10d, %r10d               #  99    0x80b13  3      
  movl %esi, (%r15,%r10,1)        #  100   0x80b16  4      
  nop                             #  101   0x80b1a  1      
.L_80b80:                         #        0x80b1b  0      
  popq %rbx                       #  102   0x80b1b  2      
  popq %r12                       #  103   0x80b1d  3      
  popq %r13                       #  104   0x80b20  3      
  popq %r14                       #  105   0x80b23  3      
  popq %r11                       #  106   0x80b26  3      
  andl $0xffffffe0, %r11d         #  107   0x80b29  7      
  addq %r15, %r11                 #  108   0x80b30  3      
  jmpq %r11                       #  109   0x80b33  3      
  nop                             #  110   0x80b36  1      
.L_80ba0:                         #        0x80b37  0      
  cmpl $0x30, %edi                #  111   0x80b37  3      
  je .L_80c60                     #  112   0x80b3a  6      
  nop                             #  113   0x80b40  1      
  nop                             #  114   0x80b41  1      
.L_80bc0:                         #        0x80b42  0      
  testb %al, %al                  #  115   0x80b42  2      
  je .L_80ca0                     #  116   0x80b44  6      
  cmpl $0x30, %edi                #  117   0x80b4a  3      
  setne %cl                       #  118   0x80b4d  3      
  movzbl %cl, %r9d                #  119   0x80b50  4      
  leal 0x8(%r9,%r9,1), %r9d       #  120   0x80b54  5      
  movl %r9d, %ecx                 #  121   0x80b59  3      
  jmpq .L_80a40                   #  122   0x80b5c  5      
  nop                             #  123   0x80b61  1      
.L_80be0:                         #        0x80b62  0      
  movl $0xffffffff, %r12d         #  124   0x80b62  6      
  jmpq .L_80ae0                   #  125   0x80b68  5      
  nop                             #  126   0x80b6d  1      
  nop                             #  127   0x80b6e  1      
.L_80c00:                         #        0x80b6f  0      
  movl %esi, %esi                 #  128   0x80b6f  2      
  movzbl (%r15,%rsi,1), %edi      #  129   0x80b71  5      
  addl $0x1, %esi                 #  130   0x80b76  3      
  movl $0x1, -0x14(%rsp)          #  131   0x80b79  8      
  jmpq .L_80a20                   #  132   0x80b81  5      
  nop                             #  133   0x80b86  1      
.L_80c20:                         #        0x80b87  0      
  cmpl $0x1, -0x14(%rsp)          #  134   0x80b87  5      
  movq -0x8(%rsp), %rdx           #  135   0x80b8c  5      
  movl %edx, %edx                 #  136   0x80b91  2      
  movl $0x22, (%r15,%rdx,1)       #  137   0x80b93  8      
  sbbl %eax, %eax                 #  138   0x80b9b  2      
  subl $0x80000000, %eax          #  139   0x80b9d  5      
  jmpq .L_80b60                   #  140   0x80ba2  5      
.L_80c40:                         #        0x80ba7  0      
  movl %esi, %esi                 #  141   0x80ba7  2      
  movzbl (%r15,%rsi,1), %edi      #  142   0x80ba9  5      
  addl $0x1, %esi                 #  143   0x80bae  3      
  jmpq .L_80a20                   #  144   0x80bb1  5      
  xchgw %ax, %ax                  #  145   0x80bb6  3      
  nop                             #  146   0x80bb9  1      
.L_80c60:                         #        0x80bba  0      
  movl %esi, %esi                 #  147   0x80bba  2      
  movzbl (%r15,%rsi,1), %edx      #  148   0x80bbc  5      
  cmpb $0x58, %dl                 #  149   0x80bc1  3      
  je .L_80c80                     #  150   0x80bc4  6      
  cmpb $0x78, %dl                 #  151   0x80bca  3      
  jne .L_80bc0                    #  152   0x80bcd  6      
  nop                             #  153   0x80bd3  1      
.L_80c80:                         #        0x80bd4  0      
  movl %esi, %esi                 #  154   0x80bd4  2      
  movzbl 0x1(%r15,%rsi,1), %edi   #  155   0x80bd6  6      
  movl $0x10, %r9d                #  156   0x80bdc  6      
  addl $0x2, %esi                 #  157   0x80be2  3      
  movl $0x10, %ecx                #  158   0x80be5  5      
  jmpq .L_80a40                   #  159   0x80bea  5      
  nop                             #  160   0x80bef  1      
.L_80ca0:                         #        0x80bf0  0      
  movl %ecx, %r9d                 #  161   0x80bf0  3      
  jmpq .L_80a40                   #  162   0x80bf3  5      
  nop                             #  163   0x80bf8  1      
  nop                             #  164   0x80bf9  1      
                                                           
.size _strtol_r, .-_strtol_r

