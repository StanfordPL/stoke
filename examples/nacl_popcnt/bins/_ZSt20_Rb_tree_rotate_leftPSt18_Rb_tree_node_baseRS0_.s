  .text
  .globl _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_
  .type _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_, @function

#! file-offset 0x42f40
#! rip-offset  0x42f40
#! capacity    224 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_:  #        0x42f40  0      
  movl %edi, %edi                                        #  1     0x42f40  2      
  movl %esi, %esi                                        #  2     0x42f42  2      
  movl %edi, %edi                                        #  3     0x42f44  2      
  movl 0xc(%r15,%rdi,1), %eax                            #  4     0x42f46  5      
  movl %eax, %eax                                        #  5     0x42f4b  2      
  movl 0x8(%r15,%rax,1), %edx                            #  6     0x42f4d  5      
  movl %edi, %edi                                        #  7     0x42f52  2      
  movl %edx, 0xc(%r15,%rdi,1)                            #  8     0x42f54  5      
  movl %edx, %edx                                        #  9     0x42f59  2      
  testq %rdx, %rdx                                       #  10    0x42f5b  3      
  xchgw %ax, %ax                                         #  11    0x42f5e  3      
  je .L_42f80                                            #  12    0x42f61  6      
  movl %edx, %edx                                        #  13    0x42f67  2      
  movl %edi, 0x4(%r15,%rdx,1)                            #  14    0x42f69  5      
  nop                                                    #  15    0x42f6e  1      
  nop                                                    #  16    0x42f6f  1      
.L_42f80:                                                #        0x42f70  0      
  movl %edi, %edi                                        #  17    0x42f70  2      
  movl 0x4(%r15,%rdi,1), %edx                            #  18    0x42f72  5      
  movl %eax, %eax                                        #  19    0x42f77  2      
  movl %edx, 0x4(%r15,%rax,1)                            #  20    0x42f79  5      
  movl %esi, %esi                                        #  21    0x42f7e  2      
  cmpl %edi, (%r15,%rsi,1)                               #  22    0x42f80  4      
  je .L_42fe0                                            #  23    0x42f84  6      
  movl %edi, %edi                                        #  24    0x42f8a  2      
  movl 0x4(%r15,%rdi,1), %edx                            #  25    0x42f8c  5      
  nop                                                    #  26    0x42f91  1      
  movl %edx, %edx                                        #  27    0x42f92  2      
  cmpl %edi, 0x8(%r15,%rdx,1)                            #  28    0x42f94  5      
  je .L_43000                                            #  29    0x42f99  6      
  movl %edx, %edx                                        #  30    0x42f9f  2      
  movl %eax, 0xc(%r15,%rdx,1)                            #  31    0x42fa1  5      
  nop                                                    #  32    0x42fa6  1      
  nop                                                    #  33    0x42fa7  1      
.L_42fc0:                                                #        0x42fa8  0      
  movl %eax, %eax                                        #  34    0x42fa8  2      
  movl %edi, 0x8(%r15,%rax,1)                            #  35    0x42faa  5      
  movl %edi, %edi                                        #  36    0x42faf  2      
  movl %eax, 0x4(%r15,%rdi,1)                            #  37    0x42fb1  5      
  popq %r11                                              #  38    0x42fb6  3      
  andl $0xffffffe0, %r11d                                #  39    0x42fb9  7      
  addq %r15, %r11                                        #  40    0x42fc0  3      
  jmpq %r11                                              #  41    0x42fc3  3      
  nop                                                    #  42    0x42fc6  1      
.L_42fe0:                                                #        0x42fc7  0      
  movl %esi, %esi                                        #  43    0x42fc7  2      
  movl %eax, (%r15,%rsi,1)                               #  44    0x42fc9  4      
  movl %eax, %eax                                        #  45    0x42fcd  2      
  movl %edi, 0x8(%r15,%rax,1)                            #  46    0x42fcf  5      
  popq %r11                                              #  47    0x42fd4  3      
  movl %edi, %edi                                        #  48    0x42fd7  2      
  movl %eax, 0x4(%r15,%rdi,1)                            #  49    0x42fd9  5      
  andl $0xffffffe0, %r11d                                #  50    0x42fde  7      
  addq %r15, %r11                                        #  51    0x42fe5  3      
  jmpq %r11                                              #  52    0x42fe8  3      
.L_43000:                                                #        0x42feb  0      
  movl %edx, %edx                                        #  53    0x42feb  2      
  movl %eax, 0x8(%r15,%rdx,1)                            #  54    0x42fed  5      
  jmpq .L_42fc0                                          #  55    0x42ff2  5      
  nop                                                    #  56    0x42ff7  1      
  nop                                                    #  57    0x42ff8  1      
  nop                                                    #  58    0x42ff9  1      
  nop                                                    #  59    0x42ffa  1      
  nop                                                    #  60    0x42ffb  1      
  nop                                                    #  61    0x42ffc  1      
  nop                                                    #  62    0x42ffd  1      
  nop                                                    #  63    0x42ffe  1      
  nop                                                    #  64    0x42fff  1      
  nop                                                    #  65    0x43000  1      
  nop                                                    #  66    0x43001  1      
  nop                                                    #  67    0x43002  1      
  nop                                                    #  68    0x43003  1      
  nop                                                    #  69    0x43004  1      
  nop                                                    #  70    0x43005  1      
  nop                                                    #  71    0x43006  1      
  nop                                                    #  72    0x43007  1      
  nop                                                    #  73    0x43008  1      
  nop                                                    #  74    0x43009  1      
  nop                                                    #  75    0x4300a  1      
  nop                                                    #  76    0x4300b  1      
  nop                                                    #  77    0x4300c  1      
  nop                                                    #  78    0x4300d  1      
                                                                                  
.size _ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_, .-_ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_

