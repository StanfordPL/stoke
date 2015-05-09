  .text
  .globl _strtol_r
  .type _strtol_r, @function

#! file-offset 0x809a0
#! rip-offset  0x809a0
#! capacity    768 bytes

# Text                            #  Line  RIP      Bytes  
._strtol_r:                       #        0x809a0  0      
  pushq %r14                      #  1     0x809a0  3      
  movl 0xffb021a(%rip), %r8d      #  2     0x809a3  7      
  movl %edi, %edi                 #  3     0x809aa  2      
  movl %esi, %esi                 #  4     0x809ac  2      
  movl %edx, %r10d                #  5     0x809ae  3      
  pushq %r13                      #  6     0x809b1  3      
  pushq %r12                      #  7     0x809b4  3      
  pushq %rbx                      #  8     0x809b7  2      
  movq %rdi, -0x8(%rsp)           #  9     0x809b9  5      
  movq %rsi, -0x10(%rsp)          #  10    0x809be  5      
  nop                             #  11    0x809c3  1      
.L_809c0:                         #        0x809c4  0      
  movl %esi, %esi                 #  12    0x809c4  2      
  movzbl (%r15,%rsi,1), %edi      #  13    0x809c6  5      
  addl $0x1, %esi                 #  14    0x809cb  3      
  leal (%rdi,%r8,1), %eax         #  15    0x809ce  4      
  movl %eax, %eax                 #  16    0x809d2  2      
  testb $0x8, 0x1(%r15,%rax,1)    #  17    0x809d4  6      
  jne .L_809c0                    #  18    0x809da  6      
  cmpl $0x2d, %edi                #  19    0x809e0  3      
  nop                             #  20    0x809e3  1      
  je .L_80be0                     #  21    0x809e4  6      
  cmpl $0x2b, %edi                #  22    0x809ea  3      
  movl $0x0, -0x14(%rsp)          #  23    0x809ed  8      
  je .L_80c20                     #  24    0x809f5  6      
  nop                             #  25    0x809fb  1      
.L_80a00:                         #        0x809fc  0      
  testl %ecx, %ecx                #  26    0x809fc  2      
  sete %al                        #  27    0x809fe  3      
  cmpl $0x10, %ecx                #  28    0x80a01  3      
  je .L_80b80                     #  29    0x80a04  6      
  testb %al, %al                  #  30    0x80a0a  2      
  movl %ecx, %r9d                 #  31    0x80a0c  3      
  jne .L_80b80                    #  32    0x80a0f  6      
  nop                             #  33    0x80a15  1      
.L_80a20:                         #        0x80a16  0      
  cmpl $0x1, -0x14(%rsp)          #  34    0x80a16  5      
  movl $0x37, %r14d               #  35    0x80a1b  6      
  movl $0x57, %r13d               #  36    0x80a21  6      
  sbbl %eax, %eax                 #  37    0x80a27  2      
  xorl %edx, %edx                 #  38    0x80a29  2      
  xorl %r12d, %r12d               #  39    0x80a2b  3      
  subl $0x80000000, %eax          #  40    0x80a2e  5      
  xorl %ebx, %ebx                 #  41    0x80a33  2      
  nop                             #  42    0x80a35  1      
  divl %r9d                       #  43    0x80a36  3      
  jmpq .L_80ae0                   #  44    0x80a39  5      
  nop                             #  45    0x80a3e  1      
  nop                             #  46    0x80a3f  1      
.L_80a60:                         #        0x80a40  0      
  subl $0x30, %edi                #  47    0x80a40  3      
  cmpl %edi, %ecx                 #  48    0x80a43  2      
  jle .L_80b20                    #  49    0x80a45  6      
  nop                             #  50    0x80a4b  1      
  nop                             #  51    0x80a4c  1      
.L_80a80:                         #        0x80a4d  0      
  cmpl %eax, %ebx                 #  52    0x80a4d  2      
  ja .L_80bc0                     #  53    0x80a4f  6      
  testl %r12d, %r12d              #  54    0x80a55  3      
  js .L_80bc0                     #  55    0x80a58  6      
  cmpl %edx, %edi                 #  56    0x80a5e  2      
  jle .L_80aa0                    #  57    0x80a60  6      
  cmpl %eax, %ebx                 #  58    0x80a66  2      
  je .L_80bc0                     #  59    0x80a68  6      
  nop                             #  60    0x80a6e  1      
.L_80aa0:                         #        0x80a6f  0      
  imull %r9d, %ebx                #  61    0x80a6f  4      
  movl $0x1, %r12d                #  62    0x80a73  6      
  leal (%rdi,%rbx,1), %ebx        #  63    0x80a79  3      
  nop                             #  64    0x80a7c  1      
  nop                             #  65    0x80a7d  1      
.L_80ac0:                         #        0x80a7e  0      
  movl %esi, %esi                 #  66    0x80a7e  2      
  movzbl (%r15,%rsi,1), %edi      #  67    0x80a80  5      
  addl $0x1, %esi                 #  68    0x80a85  3      
  nop                             #  69    0x80a88  1      
  nop                             #  70    0x80a89  1      
.L_80ae0:                         #        0x80a8a  0      
  leal (%rdi,%r8,1), %r11d        #  71    0x80a8a  4      
  movl %r11d, %r11d               #  72    0x80a8e  3      
  movsbl 0x1(%r15,%r11,1), %r11d  #  73    0x80a91  6      
  testb $0x4, %r11b               #  74    0x80a97  4      
  jne .L_80a60                    #  75    0x80a9b  6      
  andl $0x3, %r11d                #  76    0x80aa1  4      
  nop                             #  77    0x80aa5  1      
  je .L_80b20                     #  78    0x80aa6  6      
  cmpl $0x1, %r11d                #  79    0x80aac  4      
  movl %r13d, %r11d               #  80    0x80ab0  3      
  cmovel %r14d, %r11d             #  81    0x80ab3  4      
  subl %r11d, %edi                #  82    0x80ab7  3      
  cmpl %edi, %ecx                 #  83    0x80aba  2      
  jg .L_80a80                     #  84    0x80abc  6      
  nop                             #  85    0x80ac2  1      
.L_80b20:                         #        0x80ac3  0      
  cmpl $0xffffffff, %r12d         #  86    0x80ac3  7      
  je .L_80c00                     #  87    0x80aca  6      
  movl -0x14(%rsp), %edx          #  88    0x80ad0  4      
  movl %ebx, %eax                 #  89    0x80ad4  2      
  negl %eax                       #  90    0x80ad6  2      
  testl %edx, %edx                #  91    0x80ad8  2      
  cmovel %ebx, %eax               #  92    0x80ada  3      
  nop                             #  93    0x80add  1      
.L_80b40:                         #        0x80ade  0      
  testq %r10, %r10                #  94    0x80ade  3      
  je .L_80b60                     #  95    0x80ae1  6      
  subl $0x1, %esi                 #  96    0x80ae7  3      
  testl %r12d, %r12d              #  97    0x80aea  3      
  cmoveq -0x10(%rsp), %rsi        #  98    0x80aed  6      
  movl %r10d, %r10d               #  99    0x80af3  3      
  movl %esi, (%r15,%r10,1)        #  100   0x80af6  4      
  nop                             #  101   0x80afa  1      
.L_80b60:                         #        0x80afb  0      
  popq %rbx                       #  102   0x80afb  2      
  popq %r12                       #  103   0x80afd  3      
  popq %r13                       #  104   0x80b00  3      
  popq %r14                       #  105   0x80b03  3      
  popq %r11                       #  106   0x80b06  3      
  andl $0xffffffe0, %r11d         #  107   0x80b09  7      
  addq %r15, %r11                 #  108   0x80b10  3      
  jmpq %r11                       #  109   0x80b13  3      
  nop                             #  110   0x80b16  1      
.L_80b80:                         #        0x80b17  0      
  cmpl $0x30, %edi                #  111   0x80b17  3      
  je .L_80c40                     #  112   0x80b1a  6      
  nop                             #  113   0x80b20  1      
  nop                             #  114   0x80b21  1      
.L_80ba0:                         #        0x80b22  0      
  testb %al, %al                  #  115   0x80b22  2      
  je .L_80c80                     #  116   0x80b24  6      
  cmpl $0x30, %edi                #  117   0x80b2a  3      
  setne %cl                       #  118   0x80b2d  3      
  movzbl %cl, %r9d                #  119   0x80b30  4      
  leal 0x8(%r9,%r9,1), %r9d       #  120   0x80b34  5      
  movl %r9d, %ecx                 #  121   0x80b39  3      
  jmpq .L_80a20                   #  122   0x80b3c  5      
  nop                             #  123   0x80b41  1      
.L_80bc0:                         #        0x80b42  0      
  movl $0xffffffff, %r12d         #  124   0x80b42  6      
  jmpq .L_80ac0                   #  125   0x80b48  5      
  nop                             #  126   0x80b4d  1      
  nop                             #  127   0x80b4e  1      
.L_80be0:                         #        0x80b4f  0      
  movl %esi, %esi                 #  128   0x80b4f  2      
  movzbl (%r15,%rsi,1), %edi      #  129   0x80b51  5      
  addl $0x1, %esi                 #  130   0x80b56  3      
  movl $0x1, -0x14(%rsp)          #  131   0x80b59  8      
  jmpq .L_80a00                   #  132   0x80b61  5      
  nop                             #  133   0x80b66  1      
.L_80c00:                         #        0x80b67  0      
  cmpl $0x1, -0x14(%rsp)          #  134   0x80b67  5      
  movq -0x8(%rsp), %rdx           #  135   0x80b6c  5      
  movl %edx, %edx                 #  136   0x80b71  2      
  movl $0x22, (%r15,%rdx,1)       #  137   0x80b73  8      
  sbbl %eax, %eax                 #  138   0x80b7b  2      
  subl $0x80000000, %eax          #  139   0x80b7d  5      
  jmpq .L_80b40                   #  140   0x80b82  5      
.L_80c20:                         #        0x80b87  0      
  movl %esi, %esi                 #  141   0x80b87  2      
  movzbl (%r15,%rsi,1), %edi      #  142   0x80b89  5      
  addl $0x1, %esi                 #  143   0x80b8e  3      
  jmpq .L_80a00                   #  144   0x80b91  5      
  xchgw %ax, %ax                  #  145   0x80b96  3      
  nop                             #  146   0x80b99  1      
.L_80c40:                         #        0x80b9a  0      
  movl %esi, %esi                 #  147   0x80b9a  2      
  movzbl (%r15,%rsi,1), %edx      #  148   0x80b9c  5      
  cmpb $0x58, %dl                 #  149   0x80ba1  3      
  je .L_80c60                     #  150   0x80ba4  6      
  cmpb $0x78, %dl                 #  151   0x80baa  3      
  jne .L_80ba0                    #  152   0x80bad  6      
  nop                             #  153   0x80bb3  1      
.L_80c60:                         #        0x80bb4  0      
  movl %esi, %esi                 #  154   0x80bb4  2      
  movzbl 0x1(%r15,%rsi,1), %edi   #  155   0x80bb6  6      
  movl $0x10, %r9d                #  156   0x80bbc  6      
  addl $0x2, %esi                 #  157   0x80bc2  3      
  movl $0x10, %ecx                #  158   0x80bc5  5      
  jmpq .L_80a20                   #  159   0x80bca  5      
  nop                             #  160   0x80bcf  1      
.L_80c80:                         #        0x80bd0  0      
  movl %ecx, %r9d                 #  161   0x80bd0  3      
  jmpq .L_80a20                   #  162   0x80bd3  5      
  nop                             #  163   0x80bd8  1      
  nop                             #  164   0x80bd9  1      
                                                           
.size _strtol_r, .-_strtol_r

