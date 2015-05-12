  .text
  .globl __swsetup_r
  .type __swsetup_r, @function

#! file-offset 0x77a80
#! rip-offset  0x77a80
#! capacity    832 bytes

# Text                           #  Line  RIP      Bytes  
.__swsetup_r:                    #        0x77a80  0      
  pushq %r12                     #  1     0x77a80  3      
  movl %edi, %r12d               #  2     0x77a83  3      
  pushq %rbx                     #  3     0x77a86  2      
  movl %esi, %ebx                #  4     0x77a88  2      
  subl $0x8, %esp                #  5     0x77a8a  3      
  addq %r15, %rsp                #  6     0x77a8d  3      
  nop                            #  7     0x77a90  1      
  callq .__nacl_read_tp          #  8     0x77a91  5      
  leaq -0x480(%rax), %rax        #  9     0x77a96  7      
  movl %eax, %eax                #  10    0x77a9d  2      
  movl (%r15,%rax,1), %edi       #  11    0x77a9f  4      
  testq %rdi, %rdi               #  12    0x77aa3  3      
  je .L_77ae0                    #  13    0x77aa6  6      
  movl %edi, %edi                #  14    0x77aac  2      
  movl 0x38(%r15,%rdi,1), %esi   #  15    0x77aae  5      
  testl %esi, %esi               #  16    0x77ab3  2      
  nop                            #  17    0x77ab5  1      
  je .L_77d20                    #  18    0x77ab6  6      
  nop                            #  19    0x77abc  1      
  nop                            #  20    0x77abd  1      
.L_77ae0:                        #        0x77abe  0      
  movl %ebx, %ebx                #  21    0x77abe  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  22    0x77ac0  6      
  movswl %ax, %ecx               #  23    0x77ac6  3      
  movl %eax, %edx                #  24    0x77ac9  2      
  testb $0x8, %cl                #  25    0x77acb  3      
  jne .L_77be0                   #  26    0x77ace  6      
  testb $0x10, %cl               #  27    0x77ad4  3      
  je .L_77da0                    #  28    0x77ad7  6      
  nop                            #  29    0x77add  1      
  andl $0x4, %ecx                #  30    0x77ade  3      
  je .L_77bc0                    #  31    0x77ae1  6      
  movl %ebx, %ebx                #  32    0x77ae7  2      
  movl 0x30(%r15,%rbx,1), %esi   #  33    0x77ae9  5      
  testq %rsi, %rsi               #  34    0x77aee  3      
  je .L_77b80                    #  35    0x77af1  6      
  leal 0x40(%rbx), %edx          #  36    0x77af7  3      
  cmpl %esi, %edx                #  37    0x77afa  2      
  je .L_77b60                    #  38    0x77afc  6      
  movl %r12d, %edi               #  39    0x77b02  3      
  nop                            #  40    0x77b05  1      
  nop                            #  41    0x77b06  1      
  nop                            #  42    0x77b07  1      
  callq ._free_r                 #  43    0x77b08  5      
  movl %ebx, %ebx                #  44    0x77b0d  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  45    0x77b0f  6      
  nop                            #  46    0x77b15  1      
  nop                            #  47    0x77b16  1      
.L_77b60:                        #        0x77b17  0      
  movl %ebx, %ebx                #  48    0x77b17  2      
  movl $0x0, 0x30(%r15,%rbx,1)   #  49    0x77b19  9      
  nop                            #  50    0x77b22  1      
  nop                            #  51    0x77b23  1      
.L_77b80:                        #        0x77b24  0      
  movl %eax, %edx                #  52    0x77b24  2      
  movl %ebx, %ebx                #  53    0x77b26  2      
  movl 0x10(%r15,%rbx,1), %eax   #  54    0x77b28  5      
  movl %ebx, %ebx                #  55    0x77b2d  2      
  movl $0x0, 0x4(%r15,%rbx,1)    #  56    0x77b2f  9      
  andl $0xffffffdb, %edx         #  57    0x77b38  6      
  movl %ebx, %ebx                #  58    0x77b3e  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  59    0x77b40  6      
  nop                            #  60    0x77b46  1      
  movl %ebx, %ebx                #  61    0x77b47  2      
  movl %eax, (%r15,%rbx,1)       #  62    0x77b49  4      
  nop                            #  63    0x77b4d  1      
  nop                            #  64    0x77b4e  1      
.L_77bc0:                        #        0x77b4f  0      
  orl $0x8, %edx                 #  65    0x77b4f  3      
  movl %ebx, %ebx                #  66    0x77b52  2      
  movw %dx, 0xc(%r15,%rbx,1)     #  67    0x77b54  6      
  nop                            #  68    0x77b5a  1      
  nop                            #  69    0x77b5b  1      
.L_77be0:                        #        0x77b5c  0      
  movl %ebx, %ebx                #  70    0x77b5c  2      
  movl 0x10(%r15,%rbx,1), %ecx   #  71    0x77b5e  5      
  testl %ecx, %ecx               #  72    0x77b63  2      
  je .L_77d60                    #  73    0x77b65  6      
  xchgw %ax, %ax                 #  74    0x77b6b  3      
  nop                            #  75    0x77b6e  1      
.L_77c00:                        #        0x77b6f  0      
  movl %ebx, %ebx                #  76    0x77b6f  2      
  movswl 0xc(%r15,%rbx,1), %edx  #  77    0x77b71  6      
  nop                            #  78    0x77b77  1      
  nop                            #  79    0x77b78  1      
.L_77c20:                        #        0x77b79  0      
  testb $0x1, %dl                #  80    0x77b79  3      
  jne .L_77ca0                   #  81    0x77b7c  6      
  xorl %eax, %eax                #  82    0x77b82  2      
  andl $0x2, %edx                #  83    0x77b84  3      
  jne .L_77c40                   #  84    0x77b87  6      
  movl %ebx, %ebx                #  85    0x77b8d  2      
  movl 0x14(%r15,%rbx,1), %eax   #  86    0x77b8f  5      
  nop                            #  87    0x77b94  1      
.L_77c40:                        #        0x77b95  0      
  movl %ebx, %ebx                #  88    0x77b95  2      
  movl %eax, 0x8(%r15,%rbx,1)    #  89    0x77b97  5      
  movl %ebx, %ebx                #  90    0x77b9c  2      
  movl 0x10(%r15,%rbx,1), %eax   #  91    0x77b9e  5      
  testl %eax, %eax               #  92    0x77ba3  2      
  je .L_77ce0                    #  93    0x77ba5  6      
  nop                            #  94    0x77bab  1      
.L_77c60:                        #        0x77bac  0      
  xorl %eax, %eax                #  95    0x77bac  2      
  nop                            #  96    0x77bae  1      
  nop                            #  97    0x77baf  1      
.L_77c80:                        #        0x77bb0  0      
  addl $0x8, %esp                #  98    0x77bb0  3      
  addq %r15, %rsp                #  99    0x77bb3  3      
  popq %rbx                      #  100   0x77bb6  2      
  popq %r12                      #  101   0x77bb8  3      
  popq %r11                      #  102   0x77bbb  3      
  andl $0xffffffe0, %r11d        #  103   0x77bbe  7      
  addq %r15, %r11                #  104   0x77bc5  3      
  jmpq %r11                      #  105   0x77bc8  3      
  nop                            #  106   0x77bcb  1      
.L_77ca0:                        #        0x77bcc  0      
  movl %ebx, %ebx                #  107   0x77bcc  2      
  movl 0x14(%r15,%rbx,1), %eax   #  108   0x77bce  5      
  movl %ebx, %ebx                #  109   0x77bd3  2      
  movl $0x0, 0x8(%r15,%rbx,1)    #  110   0x77bd5  9      
  negl %eax                      #  111   0x77bde  2      
  movl %ebx, %ebx                #  112   0x77be0  2      
  movl %eax, 0x18(%r15,%rbx,1)   #  113   0x77be2  5      
  nop                            #  114   0x77be7  1      
  movl %ebx, %ebx                #  115   0x77be8  2      
  movl 0x10(%r15,%rbx,1), %eax   #  116   0x77bea  5      
  testl %eax, %eax               #  117   0x77bef  2      
  jne .L_77c60                   #  118   0x77bf1  6      
  nop                            #  119   0x77bf7  1      
  nop                            #  120   0x77bf8  1      
.L_77ce0:                        #        0x77bf9  0      
  movl %ebx, %ebx                #  121   0x77bf9  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  122   0x77bfb  6      
  testb %al, %al                 #  123   0x77c01  2      
  jns .L_77c60                   #  124   0x77c03  6      
  orl $0x40, %eax                #  125   0x77c09  3      
  movl %ebx, %ebx                #  126   0x77c0c  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  127   0x77c0e  6      
  movl $0xffffffff, %eax         #  128   0x77c14  5      
  jmpq .L_77c80                  #  129   0x77c19  5      
  nop                            #  130   0x77c1e  1      
  nop                            #  131   0x77c1f  1      
.L_77d20:                        #        0x77c20  0      
  nop                            #  132   0x77c20  1      
  nop                            #  133   0x77c21  1      
  callq .__sinit                 #  134   0x77c22  5      
  jmpq .L_77ae0                  #  135   0x77c27  5      
  nop                            #  136   0x77c2c  1      
  nop                            #  137   0x77c2d  1      
.L_77d60:                        #        0x77c2e  0      
  movswl %dx, %edx               #  138   0x77c2e  3      
  movl %edx, %eax                #  139   0x77c31  2      
  andl $0x280, %eax              #  140   0x77c33  5      
  cmpl $0x200, %eax              #  141   0x77c38  5      
  je .L_77c20                    #  142   0x77c3d  6      
  movl %ebx, %esi                #  143   0x77c43  2      
  movl %r12d, %edi               #  144   0x77c45  3      
  nop                            #  145   0x77c48  1      
  callq .__smakebuf_r            #  146   0x77c49  5      
  jmpq .L_77c00                  #  147   0x77c4e  5      
  nop                            #  148   0x77c53  1      
  nop                            #  149   0x77c54  1      
.L_77da0:                        #        0x77c55  0      
  movl %r12d, %r12d              #  150   0x77c55  3      
  movl $0x9, (%r15,%r12,1)       #  151   0x77c58  8      
  movl %ebx, %ebx                #  152   0x77c60  2      
  orw $0x40, 0xc(%r15,%rbx,1)    #  153   0x77c62  7      
  movl $0xffffffff, %eax         #  154   0x77c69  5      
  jmpq .L_77c80                  #  155   0x77c6e  5      
  nop                            #  156   0x77c73  1      
  nop                            #  157   0x77c74  1      
                                                          
.size __swsetup_r, .-__swsetup_r

