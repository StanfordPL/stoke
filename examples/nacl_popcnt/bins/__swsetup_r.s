  .text
  .globl __swsetup_r
  .type __swsetup_r, @function

#! file-offset 0x77b00
#! rip-offset  0x77b00
#! capacity    832 bytes

# Text                           #  Line  RIP      Bytes  
.__swsetup_r:                    #        0x77b00  0      
  pushq %r12                     #  1     0x77b00  3      
  movl %edi, %r12d               #  2     0x77b03  3      
  pushq %rbx                     #  3     0x77b06  2      
  movl %esi, %ebx                #  4     0x77b08  2      
  subl $0x8, %esp                #  5     0x77b0a  3      
  addq %r15, %rsp                #  6     0x77b0d  3      
  nop                            #  7     0x77b10  1      
  callq .__nacl_read_tp          #  8     0x77b11  5      
  leaq -0x480(%rax), %rax        #  9     0x77b16  7      
  movl %eax, %eax                #  10    0x77b1d  2      
  movl (%r15,%rax,1), %edi       #  11    0x77b1f  4      
  testq %rdi, %rdi               #  12    0x77b23  3      
  je .L_77b60                    #  13    0x77b26  6      
  movl %edi, %edi                #  14    0x77b2c  2      
  movl 0x38(%r15,%rdi,1), %esi   #  15    0x77b2e  5      
  testl %esi, %esi               #  16    0x77b33  2      
  nop                            #  17    0x77b35  1      
  je .L_77da0                    #  18    0x77b36  6      
  nop                            #  19    0x77b3c  1      
  nop                            #  20    0x77b3d  1      
.L_77b60:                        #        0x77b3e  0      
  movl %ebx, %ebx                #  21    0x77b3e  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  22    0x77b40  6      
  movswl %ax, %ecx               #  23    0x77b46  3      
  movl %eax, %edx                #  24    0x77b49  2      
  testb $0x8, %cl                #  25    0x77b4b  3      
  jne .L_77c60                   #  26    0x77b4e  6      
  testb $0x10, %cl               #  27    0x77b54  3      
  je .L_77e20                    #  28    0x77b57  6      
  nop                            #  29    0x77b5d  1      
  andl $0x4, %ecx                #  30    0x77b5e  3      
  je .L_77c40                    #  31    0x77b61  6      
  movl %ebx, %ebx                #  32    0x77b67  2      
  movl 0x30(%r15,%rbx,1), %esi   #  33    0x77b69  5      
  testq %rsi, %rsi               #  34    0x77b6e  3      
  je .L_77c00                    #  35    0x77b71  6      
  leal 0x40(%rbx), %edx          #  36    0x77b77  3      
  cmpl %esi, %edx                #  37    0x77b7a  2      
  je .L_77be0                    #  38    0x77b7c  6      
  movl %r12d, %edi               #  39    0x77b82  3      
  nop                            #  40    0x77b85  1      
  nop                            #  41    0x77b86  1      
  nop                            #  42    0x77b87  1      
  callq ._free_r                 #  43    0x77b88  5      
  movl %ebx, %ebx                #  44    0x77b8d  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  45    0x77b8f  6      
  nop                            #  46    0x77b95  1      
  nop                            #  47    0x77b96  1      
.L_77be0:                        #        0x77b97  0      
  movl %ebx, %ebx                #  48    0x77b97  2      
  movl $0x0, 0x30(%r15,%rbx,1)   #  49    0x77b99  9      
  nop                            #  50    0x77ba2  1      
  nop                            #  51    0x77ba3  1      
.L_77c00:                        #        0x77ba4  0      
  movl %eax, %edx                #  52    0x77ba4  2      
  movl %ebx, %ebx                #  53    0x77ba6  2      
  movl 0x10(%r15,%rbx,1), %eax   #  54    0x77ba8  5      
  movl %ebx, %ebx                #  55    0x77bad  2      
  movl $0x0, 0x4(%r15,%rbx,1)    #  56    0x77baf  9      
  andl $0xffffffdb, %edx         #  57    0x77bb8  6      
  movl %ebx, %ebx                #  58    0x77bbe  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  59    0x77bc0  6      
  nop                            #  60    0x77bc6  1      
  movl %ebx, %ebx                #  61    0x77bc7  2      
  movl %eax, (%r15,%rbx,1)       #  62    0x77bc9  4      
  nop                            #  63    0x77bcd  1      
  nop                            #  64    0x77bce  1      
.L_77c40:                        #        0x77bcf  0      
  orl $0x8, %edx                 #  65    0x77bcf  3      
  movl %ebx, %ebx                #  66    0x77bd2  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  67    0x77bd4  6      
  nop                            #  68    0x77bda  1      
  nop                            #  69    0x77bdb  1      
.L_77c60:                        #        0x77bdc  0      
  movl %ebx, %ebx                #  70    0x77bdc  2      
  movl 0x10(%r15,%rbx,1), %ecx   #  71    0x77bde  5      
  testl %ecx, %ecx               #  72    0x77be3  2      
  je .L_77de0                    #  73    0x77be5  6      
  xchgw %ax, %ax                 #  74    0x77beb  3      
  nop                            #  75    0x77bee  1      
.L_77c80:                        #        0x77bef  0      
  movl %ebx, %ebx                #  76    0x77bef  2      
  movswl 0xc(%r15,%rbx,1), %edx  #  77    0x77bf1  6      
  nop                            #  78    0x77bf7  1      
  nop                            #  79    0x77bf8  1      
.L_77ca0:                        #        0x77bf9  0      
  testb $0x1, %dl                #  80    0x77bf9  3      
  jne .L_77d20                   #  81    0x77bfc  6      
  xorl %eax, %eax                #  82    0x77c02  2      
  andl $0x2, %edx                #  83    0x77c04  3      
  jne .L_77cc0                   #  84    0x77c07  6      
  movl %ebx, %ebx                #  85    0x77c0d  2      
  movl 0x14(%r15,%rbx,1), %eax   #  86    0x77c0f  5      
  nop                            #  87    0x77c14  1      
.L_77cc0:                        #        0x77c15  0      
  movl %ebx, %ebx                #  88    0x77c15  2      
  movl %eax, 0x8(%r15,%rbx,1)    #  89    0x77c17  5      
  movl %ebx, %ebx                #  90    0x77c1c  2      
  movl 0x10(%r15,%rbx,1), %eax   #  91    0x77c1e  5      
  testl %eax, %eax               #  92    0x77c23  2      
  je .L_77d60                    #  93    0x77c25  6      
  nop                            #  94    0x77c2b  1      
.L_77ce0:                        #        0x77c2c  0      
  xorl %eax, %eax                #  95    0x77c2c  2      
  nop                            #  96    0x77c2e  1      
  nop                            #  97    0x77c2f  1      
.L_77d00:                        #        0x77c30  0      
  addl $0x8, %esp                #  98    0x77c30  3      
  addq %r15, %rsp                #  99    0x77c33  3      
  popq %rbx                      #  100   0x77c36  2      
  popq %r12                      #  101   0x77c38  3      
  popq %r11                      #  102   0x77c3b  3      
  andl $0xffffffe0, %r11d        #  103   0x77c3e  7      
  addq %r15, %r11                #  104   0x77c45  3      
  jmpq %r11                      #  105   0x77c48  3      
  nop                            #  106   0x77c4b  1      
.L_77d20:                        #        0x77c4c  0      
  movl %ebx, %ebx                #  107   0x77c4c  2      
  movl 0x14(%r15,%rbx,1), %eax   #  108   0x77c4e  5      
  movl %ebx, %ebx                #  109   0x77c53  2      
  movl $0x0, 0x8(%r15,%rbx,1)    #  110   0x77c55  9      
  negl %eax                      #  111   0x77c5e  2      
  movl %ebx, %ebx                #  112   0x77c60  2      
  movl %eax, 0x18(%r15,%rbx,1)   #  113   0x77c62  5      
  nop                            #  114   0x77c67  1      
  movl %ebx, %ebx                #  115   0x77c68  2      
  movl 0x10(%r15,%rbx,1), %eax   #  116   0x77c6a  5      
  testl %eax, %eax               #  117   0x77c6f  2      
  jne .L_77ce0                   #  118   0x77c71  6      
  nop                            #  119   0x77c77  1      
  nop                            #  120   0x77c78  1      
.L_77d60:                        #        0x77c79  0      
  movl %ebx, %ebx                #  121   0x77c79  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  122   0x77c7b  6      
  testb %al, %al                 #  123   0x77c81  2      
  jns .L_77ce0                   #  124   0x77c83  6      
  orl $0x40, %eax                #  125   0x77c89  3      
  movl %ebx, %ebx                #  126   0x77c8c  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  127   0x77c8e  6      
  movl $0xffffffff, %eax         #  128   0x77c94  5      
  jmpq .L_77d00                  #  129   0x77c99  5      
  nop                            #  130   0x77c9e  1      
  nop                            #  131   0x77c9f  1      
.L_77da0:                        #        0x77ca0  0      
  nop                            #  132   0x77ca0  1      
  nop                            #  133   0x77ca1  1      
  callq .__sinit                 #  134   0x77ca2  5      
  jmpq .L_77b60                  #  135   0x77ca7  5      
  nop                            #  136   0x77cac  1      
  nop                            #  137   0x77cad  1      
.L_77de0:                        #        0x77cae  0      
  movswl %dx, %edx               #  138   0x77cae  3      
  movl %edx, %eax                #  139   0x77cb1  2      
  andl $0x280, %eax              #  140   0x77cb3  5      
  cmpl $0x200, %eax              #  141   0x77cb8  5      
  je .L_77ca0                    #  142   0x77cbd  6      
  movl %ebx, %esi                #  143   0x77cc3  2      
  movl %r12d, %edi               #  144   0x77cc5  3      
  nop                            #  145   0x77cc8  1      
  callq .__smakebuf_r            #  146   0x77cc9  5      
  jmpq .L_77c80                  #  147   0x77cce  5      
  nop                            #  148   0x77cd3  1      
  nop                            #  149   0x77cd4  1      
.L_77e20:                        #        0x77cd5  0      
  movl %r12d, %r12d              #  150   0x77cd5  3      
  movl $0x9, (%r15,%r12,1)       #  151   0x77cd8  8      
  movl %ebx, %ebx                #  152   0x77ce0  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  153   0x77ce2  7      
  movl $0xffffffff, %eax         #  154   0x77ce9  5      
  jmpq .L_77d00                  #  155   0x77cee  5      
  nop                            #  156   0x77cf3  1      
  nop                            #  157   0x77cf4  1      
                                                          
.size __swsetup_r, .-__swsetup_r

