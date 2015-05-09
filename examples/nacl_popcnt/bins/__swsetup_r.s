  .text
  .globl __swsetup_r
  .type __swsetup_r, @function

#! file-offset 0x77a60
#! rip-offset  0x77a60
#! capacity    832 bytes

# Text                           #  Line  RIP      Bytes  
.__swsetup_r:                    #        0x77a60  0      
  pushq %r12                     #  1     0x77a60  3      
  movl %edi, %r12d               #  2     0x77a63  3      
  pushq %rbx                     #  3     0x77a66  2      
  movl %esi, %ebx                #  4     0x77a68  2      
  subl $0x8, %esp                #  5     0x77a6a  3      
  addq %r15, %rsp                #  6     0x77a6d  3      
  nop                            #  7     0x77a70  1      
  callq .__nacl_read_tp          #  8     0x77a71  5      
  leaq -0x480(%rax), %rax        #  9     0x77a76  7      
  movl %eax, %eax                #  10    0x77a7d  2      
  movl (%r15,%rax,1), %edi       #  11    0x77a7f  4      
  testq %rdi, %rdi               #  12    0x77a83  3      
  je .L_77ac0                    #  13    0x77a86  6      
  movl %edi, %edi                #  14    0x77a8c  2      
  movl 0x38(%r15,%rdi,1), %esi   #  15    0x77a8e  5      
  testl %esi, %esi               #  16    0x77a93  2      
  nop                            #  17    0x77a95  1      
  je .L_77d00                    #  18    0x77a96  6      
  nop                            #  19    0x77a9c  1      
  nop                            #  20    0x77a9d  1      
.L_77ac0:                        #        0x77a9e  0      
  movl %ebx, %ebx                #  21    0x77a9e  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  22    0x77aa0  6      
  movswl %ax, %ecx               #  23    0x77aa6  3      
  movl %eax, %edx                #  24    0x77aa9  2      
  testb $0x8, %cl                #  25    0x77aab  3      
  jne .L_77bc0                   #  26    0x77aae  6      
  testb $0x10, %cl               #  27    0x77ab4  3      
  je .L_77d80                    #  28    0x77ab7  6      
  nop                            #  29    0x77abd  1      
  andl $0x4, %ecx                #  30    0x77abe  3      
  je .L_77ba0                    #  31    0x77ac1  6      
  movl %ebx, %ebx                #  32    0x77ac7  2      
  movl 0x30(%r15,%rbx,1), %esi   #  33    0x77ac9  5      
  testq %rsi, %rsi               #  34    0x77ace  3      
  je .L_77b60                    #  35    0x77ad1  6      
  leal 0x40(%rbx), %edx          #  36    0x77ad7  3      
  cmpl %esi, %edx                #  37    0x77ada  2      
  je .L_77b40                    #  38    0x77adc  6      
  movl %r12d, %edi               #  39    0x77ae2  3      
  nop                            #  40    0x77ae5  1      
  nop                            #  41    0x77ae6  1      
  nop                            #  42    0x77ae7  1      
  callq ._free_r                 #  43    0x77ae8  5      
  movl %ebx, %ebx                #  44    0x77aed  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  45    0x77aef  6      
  nop                            #  46    0x77af5  1      
  nop                            #  47    0x77af6  1      
.L_77b40:                        #        0x77af7  0      
  movl %ebx, %ebx                #  48    0x77af7  2      
  movl $0x0, 0x30(%r15,%rbx,1)   #  49    0x77af9  9      
  nop                            #  50    0x77b02  1      
  nop                            #  51    0x77b03  1      
.L_77b60:                        #        0x77b04  0      
  movl %eax, %edx                #  52    0x77b04  2      
  movl %ebx, %ebx                #  53    0x77b06  2      
  movl 0x10(%r15,%rbx,1), %eax   #  54    0x77b08  5      
  movl %ebx, %ebx                #  55    0x77b0d  2      
  movl $0x0, 0x4(%r15,%rbx,1)    #  56    0x77b0f  9      
  andl $0xffffffdb, %edx         #  57    0x77b18  6      
  movl %ebx, %ebx                #  58    0x77b1e  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  59    0x77b20  6      
  nop                            #  60    0x77b26  1      
  movl %ebx, %ebx                #  61    0x77b27  2      
  movl %eax, (%r15,%rbx,1)       #  62    0x77b29  4      
  nop                            #  63    0x77b2d  1      
  nop                            #  64    0x77b2e  1      
.L_77ba0:                        #        0x77b2f  0      
  orl $0x8, %edx                 #  65    0x77b2f  3      
  movl %ebx, %ebx                #  66    0x77b32  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  67    0x77b34  6      
  nop                            #  68    0x77b3a  1      
  nop                            #  69    0x77b3b  1      
.L_77bc0:                        #        0x77b3c  0      
  movl %ebx, %ebx                #  70    0x77b3c  2      
  movl 0x10(%r15,%rbx,1), %ecx   #  71    0x77b3e  5      
  testl %ecx, %ecx               #  72    0x77b43  2      
  je .L_77d40                    #  73    0x77b45  6      
  xchgw %ax, %ax                 #  74    0x77b4b  3      
  nop                            #  75    0x77b4e  1      
.L_77be0:                        #        0x77b4f  0      
  movl %ebx, %ebx                #  76    0x77b4f  2      
  movswl 0xc(%r15,%rbx,1), %edx  #  77    0x77b51  6      
  nop                            #  78    0x77b57  1      
  nop                            #  79    0x77b58  1      
.L_77c00:                        #        0x77b59  0      
  testb $0x1, %dl                #  80    0x77b59  3      
  jne .L_77c80                   #  81    0x77b5c  6      
  xorl %eax, %eax                #  82    0x77b62  2      
  andl $0x2, %edx                #  83    0x77b64  3      
  jne .L_77c20                   #  84    0x77b67  6      
  movl %ebx, %ebx                #  85    0x77b6d  2      
  movl 0x14(%r15,%rbx,1), %eax   #  86    0x77b6f  5      
  nop                            #  87    0x77b74  1      
.L_77c20:                        #        0x77b75  0      
  movl %ebx, %ebx                #  88    0x77b75  2      
  movl %eax, 0x8(%r15,%rbx,1)    #  89    0x77b77  5      
  movl %ebx, %ebx                #  90    0x77b7c  2      
  movl 0x10(%r15,%rbx,1), %eax   #  91    0x77b7e  5      
  testl %eax, %eax               #  92    0x77b83  2      
  je .L_77cc0                    #  93    0x77b85  6      
  nop                            #  94    0x77b8b  1      
.L_77c40:                        #        0x77b8c  0      
  xorl %eax, %eax                #  95    0x77b8c  2      
  nop                            #  96    0x77b8e  1      
  nop                            #  97    0x77b8f  1      
.L_77c60:                        #        0x77b90  0      
  addl $0x8, %esp                #  98    0x77b90  3      
  addq %r15, %rsp                #  99    0x77b93  3      
  popq %rbx                      #  100   0x77b96  2      
  popq %r12                      #  101   0x77b98  3      
  popq %r11                      #  102   0x77b9b  3      
  andl $0xffffffe0, %r11d        #  103   0x77b9e  7      
  addq %r15, %r11                #  104   0x77ba5  3      
  jmpq %r11                      #  105   0x77ba8  3      
  nop                            #  106   0x77bab  1      
.L_77c80:                        #        0x77bac  0      
  movl %ebx, %ebx                #  107   0x77bac  2      
  movl 0x14(%r15,%rbx,1), %eax   #  108   0x77bae  5      
  movl %ebx, %ebx                #  109   0x77bb3  2      
  movl $0x0, 0x8(%r15,%rbx,1)    #  110   0x77bb5  9      
  negl %eax                      #  111   0x77bbe  2      
  movl %ebx, %ebx                #  112   0x77bc0  2      
  movl %eax, 0x18(%r15,%rbx,1)   #  113   0x77bc2  5      
  nop                            #  114   0x77bc7  1      
  movl %ebx, %ebx                #  115   0x77bc8  2      
  movl 0x10(%r15,%rbx,1), %eax   #  116   0x77bca  5      
  testl %eax, %eax               #  117   0x77bcf  2      
  jne .L_77c40                   #  118   0x77bd1  6      
  nop                            #  119   0x77bd7  1      
  nop                            #  120   0x77bd8  1      
.L_77cc0:                        #        0x77bd9  0      
  movl %ebx, %ebx                #  121   0x77bd9  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  122   0x77bdb  6      
  testb %al, %al                 #  123   0x77be1  2      
  jns .L_77c40                   #  124   0x77be3  6      
  orl $0x40, %eax                #  125   0x77be9  3      
  movl %ebx, %ebx                #  126   0x77bec  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  127   0x77bee  6      
  movl $0xffffffff, %eax         #  128   0x77bf4  5      
  jmpq .L_77c60                  #  129   0x77bf9  5      
  nop                            #  130   0x77bfe  1      
  nop                            #  131   0x77bff  1      
.L_77d00:                        #        0x77c00  0      
  nop                            #  132   0x77c00  1      
  nop                            #  133   0x77c01  1      
  callq .__sinit                 #  134   0x77c02  5      
  jmpq .L_77ac0                  #  135   0x77c07  5      
  nop                            #  136   0x77c0c  1      
  nop                            #  137   0x77c0d  1      
.L_77d40:                        #        0x77c0e  0      
  movswl %dx, %edx               #  138   0x77c0e  3      
  movl %edx, %eax                #  139   0x77c11  2      
  andl $0x280, %eax              #  140   0x77c13  5      
  cmpl $0x200, %eax              #  141   0x77c18  5      
  je .L_77c00                    #  142   0x77c1d  6      
  movl %ebx, %esi                #  143   0x77c23  2      
  movl %r12d, %edi               #  144   0x77c25  3      
  nop                            #  145   0x77c28  1      
  callq .__smakebuf_r            #  146   0x77c29  5      
  jmpq .L_77be0                  #  147   0x77c2e  5      
  nop                            #  148   0x77c33  1      
  nop                            #  149   0x77c34  1      
.L_77d80:                        #        0x77c35  0      
  movl %r12d, %r12d              #  150   0x77c35  3      
  movl $0x9, (%r15,%r12,1)       #  151   0x77c38  8      
  movl %ebx, %ebx                #  152   0x77c40  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  153   0x77c42  7      
  movl $0xffffffff, %eax         #  154   0x77c49  5      
  jmpq .L_77c60                  #  155   0x77c4e  5      
  nop                            #  156   0x77c53  1      
  nop                            #  157   0x77c54  1      
                                                          
.size __swsetup_r, .-__swsetup_r

