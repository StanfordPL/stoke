  .text
  .globl _wcrtomb_r
  .type _wcrtomb_r, @function

#! file-offset 0x77340
#! rip-offset  0x77340
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
._wcrtomb_r:                   #        0x77340  0      
  movq %r12, -0x18(%rsp)       #  1     0x77340  5      
  movl %edi, %r12d             #  2     0x77345  3      
  movq %rbx, -0x20(%rsp)       #  3     0x77348  5      
  leal 0x114(%r12), %eax       #  4     0x7734d  8      
  movl %ecx, %ebx              #  5     0x77355  2      
  movq %r14, -0x8(%rsp)        #  6     0x77357  5      
  nop                          #  7     0x7735c  1      
  movq %r13, -0x10(%rsp)       #  8     0x7735d  5      
  movl %esi, %r14d             #  9     0x77362  3      
  subl $0x48, %esp             #  10    0x77365  3      
  addq %r15, %rsp              #  11    0x77368  3      
  testq %rbx, %rbx             #  12    0x7736b  3      
  cmoveq %rax, %rbx            #  13    0x7736e  4      
  testq %r14, %r14             #  14    0x77372  3      
  je .L_77420                  #  15    0x77375  6      
  xchgw %ax, %ax               #  16    0x7737b  3      
  movl 0xffb960b(%rip), %r13d  #  17    0x7737e  7      
  movl %edx, 0x8(%rsp)         #  18    0x77385  4      
  nop                          #  19    0x77389  1      
  nop                          #  20    0x7738a  1      
  callq .__locale_charset      #  21    0x7738b  5      
  movl %ebx, %r8d              #  22    0x77390  3      
  movl %eax, %ecx              #  23    0x77393  2      
  movl 0x8(%rsp), %edx         #  24    0x77395  4      
  movl %r14d, %esi             #  25    0x77399  3      
  movl %r12d, %edi             #  26    0x7739c  3      
  nop                          #  27    0x7739f  1      
  andl $0xffffffe0, %r13d      #  28    0x773a0  7      
  addq %r15, %r13              #  29    0x773a7  3      
  callq %r13                   #  30    0x773aa  3      
.L_773c0:                      #        0x773ad  0      
  cmpl $0xffffffff, %eax       #  31    0x773ad  5      
  jne .L_773e0                 #  32    0x773b2  6      
  movl %ebx, %ebx              #  33    0x773b8  2      
  movl $0x0, (%r15,%rbx,1)     #  34    0x773ba  8      
  movl %r12d, %r12d            #  35    0x773c2  3      
  movl $0x54, (%r15,%r12,1)    #  36    0x773c5  8      
  nop                          #  37    0x773cd  1      
.L_773e0:                      #        0x773ce  0      
  movq 0x28(%rsp), %rbx        #  38    0x773ce  5      
  movq 0x30(%rsp), %r12        #  39    0x773d3  5      
  movq 0x38(%rsp), %r13        #  40    0x773d8  5      
  movq 0x40(%rsp), %r14        #  41    0x773dd  5      
  addl $0x48, %esp             #  42    0x773e2  3      
  addq %r15, %rsp              #  43    0x773e5  3      
  popq %r11                    #  44    0x773e8  3      
  nop                          #  45    0x773eb  1      
  andl $0xffffffe0, %r11d      #  46    0x773ec  7      
  addq %r15, %r11              #  47    0x773f3  3      
  jmpq %r11                    #  48    0x773f6  3      
  nop                          #  49    0x773f9  1      
  nop                          #  50    0x773fa  1      
.L_77420:                      #        0x773fb  0      
  movl 0xffb958e(%rip), %r13d  #  51    0x773fb  7      
  nop                          #  52    0x77402  1      
  nop                          #  53    0x77403  1      
  callq .__locale_charset      #  54    0x77404  5      
  leal 0x10(%rsp), %esi        #  55    0x77409  4      
  movl %eax, %ecx              #  56    0x7740d  2      
  movl %ebx, %r8d              #  57    0x7740f  3      
  xorl %edx, %edx              #  58    0x77412  2      
  movl %r12d, %edi             #  59    0x77414  3      
  nop                          #  60    0x77417  1      
  andl $0xffffffe0, %r13d      #  61    0x77418  7      
  addq %r15, %r13              #  62    0x7741f  3      
  callq %r13                   #  63    0x77422  3      
  jmpq .L_773c0                #  64    0x77425  5      
  nop                          #  65    0x7742a  1      
  nop                          #  66    0x7742b  1      
  nop                          #  67    0x7742c  1      
  nop                          #  68    0x7742d  1      
  nop                          #  69    0x7742e  1      
  nop                          #  70    0x7742f  1      
  nop                          #  71    0x77430  1      
  nop                          #  72    0x77431  1      
  nop                          #  73    0x77432  1      
  nop                          #  74    0x77433  1      
  nop                          #  75    0x77434  1      
  nop                          #  76    0x77435  1      
  nop                          #  77    0x77436  1      
  nop                          #  78    0x77437  1      
  nop                          #  79    0x77438  1      
  nop                          #  80    0x77439  1      
  nop                          #  81    0x7743a  1      
  nop                          #  82    0x7743b  1      
  nop                          #  83    0x7743c  1      
  nop                          #  84    0x7743d  1      
  nop                          #  85    0x7743e  1      
  nop                          #  86    0x7743f  1      
  nop                          #  87    0x77440  1      
  nop                          #  88    0x77441  1      
  nop                          #  89    0x77442  1      
  nop                          #  90    0x77443  1      
  nop                          #  91    0x77444  1      
                                                        
.size _wcrtomb_r, .-_wcrtomb_r

