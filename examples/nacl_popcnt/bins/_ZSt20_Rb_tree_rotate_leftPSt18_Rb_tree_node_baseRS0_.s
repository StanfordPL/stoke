  .text
  .globl _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_
  .type _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_, @function

#! file-offset 0x42ec0
#! rip-offset  0x42ec0
#! capacity    224 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_:  #        0x42ec0  0      
  movl %edi, %edi                                        #  1     0x42ec0  2      
  movl %esi, %esi                                        #  2     0x42ec2  2      
  movl %edi, %edi                                        #  3     0x42ec4  2      
  movl 0xc(%r15,%rdi,1), %eax                            #  4     0x42ec6  5      
  movl %eax, %eax                                        #  5     0x42ecb  2      
  movl 0x8(%r15,%rax,1), %edx                            #  6     0x42ecd  5      
  movl %edi, %edi                                        #  7     0x42ed2  2      
  movl %edx, 0xc(%r15,%rdi,1)                            #  8     0x42ed4  5      
  movl %edx, %edx                                        #  9     0x42ed9  2      
  testq %rdx, %rdx                                       #  10    0x42edb  3      
  xchgw %ax, %ax                                         #  11    0x42ede  3      
  je .L_42f00                                            #  12    0x42ee1  6      
  movl %edx, %edx                                        #  13    0x42ee7  2      
  movl %edi, 0x4(%r15,%rdx,1)                            #  14    0x42ee9  5      
  nop                                                    #  15    0x42eee  1      
  nop                                                    #  16    0x42eef  1      
.L_42f00:                                                #        0x42ef0  0      
  movl %edi, %edi                                        #  17    0x42ef0  2      
  movl 0x4(%r15,%rdi,1), %edx                            #  18    0x42ef2  5      
  movl %eax, %eax                                        #  19    0x42ef7  2      
  movl %edx, 0x4(%r15,%rax,1)                            #  20    0x42ef9  5      
  movl %esi, %esi                                        #  21    0x42efe  2      
  cmpl %edi, (%r15,%rsi,1)                               #  22    0x42f00  4      
  je .L_42f60                                            #  23    0x42f04  6      
  movl %edi, %edi                                        #  24    0x42f0a  2      
  movl 0x4(%r15,%rdi,1), %edx                            #  25    0x42f0c  5      
  nop                                                    #  26    0x42f11  1      
  movl %edx, %edx                                        #  27    0x42f12  2      
  cmpl %edi, 0x8(%r15,%rdx,1)                            #  28    0x42f14  5      
  je .L_42f80                                            #  29    0x42f19  6      
  movl %edx, %edx                                        #  30    0x42f1f  2      
  movl %eax, 0xc(%r15,%rdx,1)                            #  31    0x42f21  5      
  nop                                                    #  32    0x42f26  1      
  nop                                                    #  33    0x42f27  1      
.L_42f40:                                                #        0x42f28  0      
  movl %eax, %eax                                        #  34    0x42f28  2      
  movl %edi, 0x8(%r15,%rax,1)                            #  35    0x42f2a  5      
  movl %edi, %edi                                        #  36    0x42f2f  2      
  movl %eax, 0x4(%r15,%rdi,1)                            #  37    0x42f31  5      
  popq %r11                                              #  38    0x42f36  3      
  andl $0xffffffe0, %r11d                                #  39    0x42f39  7      
  addq %r15, %r11                                        #  40    0x42f40  3      
  jmpq %r11                                              #  41    0x42f43  3      
  nop                                                    #  42    0x42f46  1      
.L_42f60:                                                #        0x42f47  0      
  movl %esi, %esi                                        #  43    0x42f47  2      
  movl %eax, (%r15,%rsi,1)                               #  44    0x42f49  4      
  movl %eax, %eax                                        #  45    0x42f4d  2      
  movl %edi, 0x8(%r15,%rax,1)                            #  46    0x42f4f  5      
  popq %r11                                              #  47    0x42f54  3      
  movl %edi, %edi                                        #  48    0x42f57  2      
  movl %eax, 0x4(%r15,%rdi,1)                            #  49    0x42f59  5      
  andl $0xffffffe0, %r11d                                #  50    0x42f5e  7      
  addq %r15, %r11                                        #  51    0x42f65  3      
  jmpq %r11                                              #  52    0x42f68  3      
.L_42f80:                                                #        0x42f6b  0      
  movl %edx, %edx                                        #  53    0x42f6b  2      
  movl %eax, 0x8(%r15,%rdx,1)                            #  54    0x42f6d  5      
  jmpq .L_42f40                                          #  55    0x42f72  5      
  nop                                                    #  56    0x42f77  1      
  nop                                                    #  57    0x42f78  1      
  nop                                                    #  58    0x42f79  1      
  nop                                                    #  59    0x42f7a  1      
  nop                                                    #  60    0x42f7b  1      
  nop                                                    #  61    0x42f7c  1      
  nop                                                    #  62    0x42f7d  1      
  nop                                                    #  63    0x42f7e  1      
  nop                                                    #  64    0x42f7f  1      
  nop                                                    #  65    0x42f80  1      
  nop                                                    #  66    0x42f81  1      
  nop                                                    #  67    0x42f82  1      
  nop                                                    #  68    0x42f83  1      
  nop                                                    #  69    0x42f84  1      
  nop                                                    #  70    0x42f85  1      
  nop                                                    #  71    0x42f86  1      
  nop                                                    #  72    0x42f87  1      
  nop                                                    #  73    0x42f88  1      
  nop                                                    #  74    0x42f89  1      
  nop                                                    #  75    0x42f8a  1      
  nop                                                    #  76    0x42f8b  1      
  nop                                                    #  77    0x42f8c  1      
  nop                                                    #  78    0x42f8d  1      
                                                                                  
.size _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_, .-_ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_

