  .text
  .globl d_exprlist
  .type d_exprlist, @function

#! file-offset 0x543c0
#! rip-offset  0x543c0
#! capacity    384 bytes

# Text                         #  Line  RIP      Bytes  
.d_exprlist:                   #        0x543c0  0      
  pushq %r12                   #  1     0x543c0  3      
  pushq %rbx                   #  2     0x543c3  2      
  movl %edi, %ebx              #  3     0x543c5  2      
  subl $0x18, %esp             #  4     0x543c7  3      
  addq %r15, %rsp              #  5     0x543ca  3      
  movl %ebx, %ebx              #  6     0x543cd  2      
  movl 0xc(%r15,%rbx,1), %eax  #  7     0x543cf  5      
  movl $0x0, 0xc(%rsp)         #  8     0x543d4  8      
  nop                          #  9     0x543dc  1      
  movl %eax, %eax              #  10    0x543dd  2      
  cmpb $0x45, (%r15,%rax,1)    #  11    0x543df  5      
  jne .L_54440                 #  12    0x543e4  6      
  addl $0x1, %eax              #  13    0x543ea  3      
  movl %ebx, %edi              #  14    0x543ed  2      
  xorl %ecx, %ecx              #  15    0x543ef  2      
  movl %ebx, %ebx              #  16    0x543f1  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  17    0x543f3  5      
  xorl %edx, %edx              #  18    0x543f8  2      
  movl $0x29, %esi             #  19    0x543fa  5      
  xchgw %ax, %ax               #  20    0x543ff  3      
  nop                          #  21    0x54402  1      
  nop                          #  22    0x54403  1      
  callq .d_make_comp           #  23    0x54404  5      
  addl $0x18, %esp             #  24    0x54409  3      
  addq %r15, %rsp              #  25    0x5440c  3      
  movl %eax, %eax              #  26    0x5440f  2      
  popq %rbx                    #  27    0x54411  2      
  popq %r12                    #  28    0x54413  3      
  popq %r11                    #  29    0x54416  3      
  andl $0xffffffe0, %r11d      #  30    0x54419  7      
  addq %r15, %r11              #  31    0x54420  3      
  jmpq %r11                    #  32    0x54423  3      
  nop                          #  33    0x54426  1      
.L_54440:                      #        0x54427  0      
  leal 0xc(%rsp), %r12d        #  34    0x54427  5      
  jmpq .L_54480                #  35    0x5442c  5      
  nop                          #  36    0x54431  1      
  nop                          #  37    0x54432  1      
.L_54460:                      #        0x54433  0      
  leal 0x8(%rax), %r12d        #  38    0x54433  4      
  nop                          #  39    0x54437  1      
  nop                          #  40    0x54438  1      
.L_54480:                      #        0x54439  0      
  movl %ebx, %edi              #  41    0x54439  2      
  nop                          #  42    0x5443b  1      
  nop                          #  43    0x5443c  1      
  callq .d_expression          #  44    0x5443d  5      
  movl %eax, %edx              #  45    0x54442  2      
  testq %rdx, %rdx             #  46    0x54444  3      
  je .L_54520                  #  47    0x54447  6      
  xorl %ecx, %ecx              #  48    0x5444d  2      
  movl $0x29, %esi             #  49    0x5444f  5      
  movl %ebx, %edi              #  50    0x54454  2      
  nop                          #  51    0x54456  1      
  callq .d_make_comp           #  52    0x54457  5      
  movl %eax, %eax              #  53    0x5445c  2      
  testq %rax, %rax             #  54    0x5445e  3      
  movl %r12d, %r12d            #  55    0x54461  3      
  movl %eax, (%r15,%r12,1)     #  56    0x54464  4      
  je .L_54520                  #  57    0x54468  6      
  movl %ebx, %ebx              #  58    0x5446e  2      
  movl 0xc(%r15,%rbx,1), %edx  #  59    0x54470  5      
  movl %edx, %edx              #  60    0x54475  2      
  cmpb $0x45, (%r15,%rdx,1)    #  61    0x54477  5      
  nop                          #  62    0x5447c  1      
  jne .L_54460                 #  63    0x5447d  6      
  addl $0x1, %edx              #  64    0x54483  3      
  movl 0xc(%rsp), %eax         #  65    0x54486  4      
  movl %ebx, %ebx              #  66    0x5448a  2      
  movl %edx, 0xc(%r15,%rbx,1)  #  67    0x5448c  5      
  addl $0x18, %esp             #  68    0x54491  3      
  addq %r15, %rsp              #  69    0x54494  3      
  popq %rbx                    #  70    0x54497  2      
  popq %r12                    #  71    0x54499  3      
  popq %r11                    #  72    0x5449c  3      
  nop                          #  73    0x5449f  1      
  andl $0xffffffe0, %r11d      #  74    0x544a0  7      
  addq %r15, %r11              #  75    0x544a7  3      
  jmpq %r11                    #  76    0x544aa  3      
  nop                          #  77    0x544ad  1      
  nop                          #  78    0x544ae  1      
.L_54520:                      #        0x544af  0      
  addl $0x18, %esp             #  79    0x544af  3      
  addq %r15, %rsp              #  80    0x544b2  3      
  xorl %eax, %eax              #  81    0x544b5  2      
  popq %rbx                    #  82    0x544b7  2      
  popq %r12                    #  83    0x544b9  3      
  popq %r11                    #  84    0x544bc  3      
  andl $0xffffffe0, %r11d      #  85    0x544bf  7      
  addq %r15, %r11              #  86    0x544c6  3      
  jmpq %r11                    #  87    0x544c9  3      
  nop                          #  88    0x544cc  1      
                                                        
.size d_exprlist, .-d_exprlist

