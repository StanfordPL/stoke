  .text
  .globl _strtol_r
  .type _strtol_r, @function

#! file-offset 0x80a40
#! rip-offset  0x80a40
#! capacity    768 bytes

# Text                            #  Line  RIP      Bytes  
._strtol_r:                       #        0x80a40  0      
  pushq %r14                      #  1     0x80a40  3      
  movl 0xffb017a(%rip), %r8d      #  2     0x80a43  7      
  movl %edi, %edi                 #  3     0x80a4a  2      
  movl %esi, %esi                 #  4     0x80a4c  2      
  movl %edx, %r10d                #  5     0x80a4e  3      
  pushq %r13                      #  6     0x80a51  3      
  pushq %r12                      #  7     0x80a54  3      
  pushq %rbx                      #  8     0x80a57  2      
  movq %rdi, -0x8(%rsp)           #  9     0x80a59  5      
  movq %rsi, -0x10(%rsp)          #  10    0x80a5e  5      
  nop                             #  11    0x80a63  1      
.L_80a60:                         #        0x80a64  0      
  movl %esi, %esi                 #  12    0x80a64  2      
  movzbl (%r15,%rsi,1), %edi      #  13    0x80a66  5      
  addl $0x1, %esi                 #  14    0x80a6b  3      
  leal (%rdi,%r8,1), %eax         #  15    0x80a6e  4      
  movl %eax, %eax                 #  16    0x80a72  2      
  testb $0x8, 0x1(%r15,%rax,1)    #  17    0x80a74  6      
  jne .L_80a60                    #  18    0x80a7a  6      
  cmpl $0x2d, %edi                #  19    0x80a80  3      
  nop                             #  20    0x80a83  1      
  je .L_80c80                     #  21    0x80a84  6      
  cmpl $0x2b, %edi                #  22    0x80a8a  3      
  movl $0x0, -0x14(%rsp)          #  23    0x80a8d  8      
  je .L_80cc0                     #  24    0x80a95  6      
  nop                             #  25    0x80a9b  1      
.L_80aa0:                         #        0x80a9c  0      
  testl %ecx, %ecx                #  26    0x80a9c  2      
  sete %al                        #  27    0x80a9e  3      
  cmpl $0x10, %ecx                #  28    0x80aa1  3      
  je .L_80c20                     #  29    0x80aa4  6      
  testb %al, %al                  #  30    0x80aaa  2      
  movl %ecx, %r9d                 #  31    0x80aac  3      
  jne .L_80c20                    #  32    0x80aaf  6      
  nop                             #  33    0x80ab5  1      
.L_80ac0:                         #        0x80ab6  0      
  cmpl $0x1, -0x14(%rsp)          #  34    0x80ab6  5      
  movl $0x37, %r14d               #  35    0x80abb  6      
  movl $0x57, %r13d               #  36    0x80ac1  6      
  sbbl %eax, %eax                 #  37    0x80ac7  2      
  xorl %edx, %edx                 #  38    0x80ac9  2      
  xorl %r12d, %r12d               #  39    0x80acb  3      
  subl $0x80000000, %eax          #  40    0x80ace  5      
  xorl %ebx, %ebx                 #  41    0x80ad3  2      
  nop                             #  42    0x80ad5  1      
  divl %r9d                       #  43    0x80ad6  3      
  jmpq .L_80b80                   #  44    0x80ad9  5      
  nop                             #  45    0x80ade  1      
  nop                             #  46    0x80adf  1      
.L_80b00:                         #        0x80ae0  0      
  subl $0x30, %edi                #  47    0x80ae0  3      
  cmpl %edi, %ecx                 #  48    0x80ae3  2      
  jle .L_80bc0                    #  49    0x80ae5  6      
  nop                             #  50    0x80aeb  1      
  nop                             #  51    0x80aec  1      
.L_80b20:                         #        0x80aed  0      
  cmpl %eax, %ebx                 #  52    0x80aed  2      
  ja .L_80c60                     #  53    0x80aef  6      
  testl %r12d, %r12d              #  54    0x80af5  3      
  js .L_80c60                     #  55    0x80af8  6      
  cmpl %edx, %edi                 #  56    0x80afe  2      
  jle .L_80b40                    #  57    0x80b00  6      
  cmpl %eax, %ebx                 #  58    0x80b06  2      
  je .L_80c60                     #  59    0x80b08  6      
  nop                             #  60    0x80b0e  1      
.L_80b40:                         #        0x80b0f  0      
  imull %r9d, %ebx                #  61    0x80b0f  4      
  movl $0x1, %r12d                #  62    0x80b13  6      
  leal (%rdi,%rbx,1), %ebx        #  63    0x80b19  3      
  nop                             #  64    0x80b1c  1      
  nop                             #  65    0x80b1d  1      
.L_80b60:                         #        0x80b1e  0      
  movl %esi, %esi                 #  66    0x80b1e  2      
  movzbl (%r15,%rsi,1), %edi      #  67    0x80b20  5      
  addl $0x1, %esi                 #  68    0x80b25  3      
  nop                             #  69    0x80b28  1      
  nop                             #  70    0x80b29  1      
.L_80b80:                         #        0x80b2a  0      
  leal (%rdi,%r8,1), %r11d        #  71    0x80b2a  4      
  movl %r11d, %r11d               #  72    0x80b2e  3      
  movsbl 0x1(%r15,%r11,1), %r11d  #  73    0x80b31  6      
  testb $0x4, %r11b               #  74    0x80b37  4      
  jne .L_80b00                    #  75    0x80b3b  6      
  andl $0x3, %r11d                #  76    0x80b41  4      
  nop                             #  77    0x80b45  1      
  je .L_80bc0                     #  78    0x80b46  6      
  cmpl $0x1, %r11d                #  79    0x80b4c  4      
  movl %r13d, %r11d               #  80    0x80b50  3      
  cmovel %r14d, %r11d             #  81    0x80b53  4      
  subl %r11d, %edi                #  82    0x80b57  3      
  cmpl %edi, %ecx                 #  83    0x80b5a  2      
  jg .L_80b20                     #  84    0x80b5c  6      
  nop                             #  85    0x80b62  1      
.L_80bc0:                         #        0x80b63  0      
  cmpl $0xffffffff, %r12d         #  86    0x80b63  7      
  je .L_80ca0                     #  87    0x80b6a  6      
  movl -0x14(%rsp), %edx          #  88    0x80b70  4      
  movl %ebx, %eax                 #  89    0x80b74  2      
  negl %eax                       #  90    0x80b76  2      
  testl %edx, %edx                #  91    0x80b78  2      
  cmovel %ebx, %eax               #  92    0x80b7a  3      
  nop                             #  93    0x80b7d  1      
.L_80be0:                         #        0x80b7e  0      
  testq %r10, %r10                #  94    0x80b7e  3      
  je .L_80c00                     #  95    0x80b81  6      
  subl $0x1, %esi                 #  96    0x80b87  3      
  testl %r12d, %r12d              #  97    0x80b8a  3      
  cmoveq -0x10(%rsp), %rsi        #  98    0x80b8d  6      
  movl %r10d, %r10d               #  99    0x80b93  3      
  movl %esi, (%r15,%r10,1)        #  100   0x80b96  4      
  nop                             #  101   0x80b9a  1      
.L_80c00:                         #        0x80b9b  0      
  popq %rbx                       #  102   0x80b9b  2      
  popq %r12                       #  103   0x80b9d  3      
  popq %r13                       #  104   0x80ba0  3      
  popq %r14                       #  105   0x80ba3  3      
  popq %r11                       #  106   0x80ba6  3      
  andl $0xffffffe0, %r11d         #  107   0x80ba9  7      
  addq %r15, %r11                 #  108   0x80bb0  3      
  jmpq %r11                       #  109   0x80bb3  3      
  nop                             #  110   0x80bb6  1      
.L_80c20:                         #        0x80bb7  0      
  cmpl $0x30, %edi                #  111   0x80bb7  3      
  je .L_80ce0                     #  112   0x80bba  6      
  nop                             #  113   0x80bc0  1      
  nop                             #  114   0x80bc1  1      
.L_80c40:                         #        0x80bc2  0      
  testb %al, %al                  #  115   0x80bc2  2      
  je .L_80d20                     #  116   0x80bc4  6      
  cmpl $0x30, %edi                #  117   0x80bca  3      
  setne %cl                       #  118   0x80bcd  3      
  movzbl %cl, %r9d                #  119   0x80bd0  4      
  leal 0x8(%r9,%r9,1), %r9d       #  120   0x80bd4  5      
  movl %r9d, %ecx                 #  121   0x80bd9  3      
  jmpq .L_80ac0                   #  122   0x80bdc  5      
  nop                             #  123   0x80be1  1      
.L_80c60:                         #        0x80be2  0      
  movl $0xffffffff, %r12d         #  124   0x80be2  6      
  jmpq .L_80b60                   #  125   0x80be8  5      
  nop                             #  126   0x80bed  1      
  nop                             #  127   0x80bee  1      
.L_80c80:                         #        0x80bef  0      
  movl %esi, %esi                 #  128   0x80bef  2      
  movzbl (%r15,%rsi,1), %edi      #  129   0x80bf1  5      
  addl $0x1, %esi                 #  130   0x80bf6  3      
  movl $0x1, -0x14(%rsp)          #  131   0x80bf9  8      
  jmpq .L_80aa0                   #  132   0x80c01  5      
  nop                             #  133   0x80c06  1      
.L_80ca0:                         #        0x80c07  0      
  cmpl $0x1, -0x14(%rsp)          #  134   0x80c07  5      
  movq -0x8(%rsp), %rdx           #  135   0x80c0c  5      
  movl %edx, %edx                 #  136   0x80c11  2      
  movl $0x22, (%r15,%rdx,1)       #  137   0x80c13  8      
  sbbl %eax, %eax                 #  138   0x80c1b  2      
  subl $0x80000000, %eax          #  139   0x80c1d  5      
  jmpq .L_80be0                   #  140   0x80c22  5      
.L_80cc0:                         #        0x80c27  0      
  movl %esi, %esi                 #  141   0x80c27  2      
  movzbl (%r15,%rsi,1), %edi      #  142   0x80c29  5      
  addl $0x1, %esi                 #  143   0x80c2e  3      
  jmpq .L_80aa0                   #  144   0x80c31  5      
  xchgw %ax, %ax                  #  145   0x80c36  3      
  nop                             #  146   0x80c39  1      
.L_80ce0:                         #        0x80c3a  0      
  movl %esi, %esi                 #  147   0x80c3a  2      
  movzbl (%r15,%rsi,1), %edx      #  148   0x80c3c  5      
  cmpb $0x58, %dl                 #  149   0x80c41  3      
  je .L_80d00                     #  150   0x80c44  6      
  cmpb $0x78, %dl                 #  151   0x80c4a  3      
  jne .L_80c40                    #  152   0x80c4d  6      
  nop                             #  153   0x80c53  1      
.L_80d00:                         #        0x80c54  0      
  movl %esi, %esi                 #  154   0x80c54  2      
  movzbl 0x1(%r15,%rsi,1), %edi   #  155   0x80c56  6      
  movl $0x10, %r9d                #  156   0x80c5c  6      
  addl $0x2, %esi                 #  157   0x80c62  3      
  movl $0x10, %ecx                #  158   0x80c65  5      
  jmpq .L_80ac0                   #  159   0x80c6a  5      
  nop                             #  160   0x80c6f  1      
.L_80d20:                         #        0x80c70  0      
  movl %ecx, %r9d                 #  161   0x80c70  3      
  jmpq .L_80ac0                   #  162   0x80c73  5      
  nop                             #  163   0x80c78  1      
  nop                             #  164   0x80c79  1      
                                                           
.size _strtol_r, .-_strtol_r

