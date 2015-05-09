  .text
  .globl _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_
  .type _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_, @function

#! file-offset 0x42ea0
#! rip-offset  0x42ea0
#! capacity    224 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_:  #        0x42ea0  0      
  movl %edi, %edi                                        #  1     0x42ea0  2      
  movl %esi, %esi                                        #  2     0x42ea2  2      
  movl %edi, %edi                                        #  3     0x42ea4  2      
  movl 0xc(%r15,%rdi,1), %eax                            #  4     0x42ea6  5      
  movl %eax, %eax                                        #  5     0x42eab  2      
  movl 0x8(%r15,%rax,1), %edx                            #  6     0x42ead  5      
  movl %edi, %edi                                        #  7     0x42eb2  2      
  movl %edx, 0xc(%r15,%rdi,1)                            #  8     0x42eb4  5      
  movl %edx, %edx                                        #  9     0x42eb9  2      
  testq %rdx, %rdx                                       #  10    0x42ebb  3      
  xchgw %ax, %ax                                         #  11    0x42ebe  3      
  je .L_42ee0                                            #  12    0x42ec1  6      
  movl %edx, %edx                                        #  13    0x42ec7  2      
  movl %edi, 0x4(%r15,%rdx,1)                            #  14    0x42ec9  5      
  nop                                                    #  15    0x42ece  1      
  nop                                                    #  16    0x42ecf  1      
.L_42ee0:                                                #        0x42ed0  0      
  movl %edi, %edi                                        #  17    0x42ed0  2      
  movl 0x4(%r15,%rdi,1), %edx                            #  18    0x42ed2  5      
  movl %eax, %eax                                        #  19    0x42ed7  2      
  movl %edx, 0x4(%r15,%rax,1)                            #  20    0x42ed9  5      
  movl %esi, %esi                                        #  21    0x42ede  2      
  cmpl %edi, (%r15,%rsi,1)                               #  22    0x42ee0  4      
  je .L_42f40                                            #  23    0x42ee4  6      
  movl %edi, %edi                                        #  24    0x42eea  2      
  movl 0x4(%r15,%rdi,1), %edx                            #  25    0x42eec  5      
  nop                                                    #  26    0x42ef1  1      
  movl %edx, %edx                                        #  27    0x42ef2  2      
  cmpl %edi, 0x8(%r15,%rdx,1)                            #  28    0x42ef4  5      
  je .L_42f60                                            #  29    0x42ef9  6      
  movl %edx, %edx                                        #  30    0x42eff  2      
  movl %eax, 0xc(%r15,%rdx,1)                            #  31    0x42f01  5      
  nop                                                    #  32    0x42f06  1      
  nop                                                    #  33    0x42f07  1      
.L_42f20:                                                #        0x42f08  0      
  movl %eax, %eax                                        #  34    0x42f08  2      
  movl %edi, 0x8(%r15,%rax,1)                            #  35    0x42f0a  5      
  movl %edi, %edi                                        #  36    0x42f0f  2      
  movl %eax, 0x4(%r15,%rdi,1)                            #  37    0x42f11  5      
  popq %r11                                              #  38    0x42f16  3      
  andl $0xffffffe0, %r11d                                #  39    0x42f19  7      
  addq %r15, %r11                                        #  40    0x42f20  3      
  jmpq %r11                                              #  41    0x42f23  3      
  nop                                                    #  42    0x42f26  1      
.L_42f40:                                                #        0x42f27  0      
  movl %esi, %esi                                        #  43    0x42f27  2      
  movl %eax, (%r15,%rsi,1)                               #  44    0x42f29  4      
  movl %eax, %eax                                        #  45    0x42f2d  2      
  movl %edi, 0x8(%r15,%rax,1)                            #  46    0x42f2f  5      
  popq %r11                                              #  47    0x42f34  3      
  movl %edi, %edi                                        #  48    0x42f37  2      
  movl %eax, 0x4(%r15,%rdi,1)                            #  49    0x42f39  5      
  andl $0xffffffe0, %r11d                                #  50    0x42f3e  7      
  addq %r15, %r11                                        #  51    0x42f45  3      
  jmpq %r11                                              #  52    0x42f48  3      
.L_42f60:                                                #        0x42f4b  0      
  movl %edx, %edx                                        #  53    0x42f4b  2      
  movl %eax, 0x8(%r15,%rdx,1)                            #  54    0x42f4d  5      
  jmpq .L_42f20                                          #  55    0x42f52  5      
  nop                                                    #  56    0x42f57  1      
  nop                                                    #  57    0x42f58  1      
  nop                                                    #  58    0x42f59  1      
  nop                                                    #  59    0x42f5a  1      
  nop                                                    #  60    0x42f5b  1      
  nop                                                    #  61    0x42f5c  1      
  nop                                                    #  62    0x42f5d  1      
  nop                                                    #  63    0x42f5e  1      
  nop                                                    #  64    0x42f5f  1      
  nop                                                    #  65    0x42f60  1      
  nop                                                    #  66    0x42f61  1      
  nop                                                    #  67    0x42f62  1      
  nop                                                    #  68    0x42f63  1      
  nop                                                    #  69    0x42f64  1      
  nop                                                    #  70    0x42f65  1      
  nop                                                    #  71    0x42f66  1      
  nop                                                    #  72    0x42f67  1      
  nop                                                    #  73    0x42f68  1      
  nop                                                    #  74    0x42f69  1      
  nop                                                    #  75    0x42f6a  1      
  nop                                                    #  76    0x42f6b  1      
  nop                                                    #  77    0x42f6c  1      
  nop                                                    #  78    0x42f6d  1      
                                                                                  
.size _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_, .-_ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_

