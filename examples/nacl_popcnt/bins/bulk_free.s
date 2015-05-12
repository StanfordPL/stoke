  .text
  .globl bulk_free
  .type bulk_free, @function

#! file-offset 0x62040
#! rip-offset  0x62040
#! capacity    640 bytes

# Text                         #  Line  RIP      Bytes  
.bulk_free:                    #        0x62040  0      
  pushq %r13                   #  1     0x62040  3      
  pushq %r12                   #  2     0x62043  3      
  pushq %rbx                   #  3     0x62046  2      
  movl %edi, %ebx              #  4     0x62048  2      
  subl $0x10, %esp             #  5     0x6204a  3      
  addq %r15, %rsp              #  6     0x6204d  3      
  testb $0x2, 0xffd4a25(%rip)  #  7     0x62050  7      
  jne .L_62200                 #  8     0x62057  6      
  nop                          #  9     0x6205d  1      
.L_62060:                      #        0x6205e  0      
  leal (%rbx,%rsi,4), %r13d    #  10    0x6205e  4      
  cmpl %r13d, %ebx             #  11    0x62062  3      
  jne .L_62120                 #  12    0x62065  6      
  jmpq .L_62160                #  13    0x6206b  5      
  nop                          #  14    0x62070  1      
.L_62080:                      #        0x62071  0      
  leal -0x8(%rax), %edi        #  15    0x62071  3      
  cmpl %edi, 0xffd4856(%rip)   #  16    0x62074  6      
  movl %edx, %edx              #  17    0x6207a  2      
  movl $0x0, (%r15,%rdx,1)     #  18    0x6207c  8      
  movl %edi, %edi              #  19    0x62084  2      
  movl 0x4(%r15,%rdi,1), %ecx  #  20    0x62086  5      
  ja .L_622a0                  #  21    0x6208b  6      
  movl %ecx, %edx              #  22    0x62091  2      
  andl $0x3, %edx              #  23    0x62093  3      
  cmpl $0x1, %edx              #  24    0x62096  3      
  je .L_622a0                  #  25    0x62099  6      
  movl %ecx, %esi              #  26    0x6209f  2      
  movl %ebx, %r12d             #  27    0x620a1  3      
  andl $0xfffffff8, %esi       #  28    0x620a4  6      
  cmpl %r12d, %r13d            #  29    0x620aa  3      
  je .L_620e0                  #  30    0x620ad  6      
  leal (%rsi,%rdi,1), %edx     #  31    0x620b3  3      
  xchgw %ax, %ax               #  32    0x620b6  3      
  leal 0x8(%rdx), %r8d         #  33    0x620b9  4      
  movl %r12d, %r12d            #  34    0x620bd  3      
  cmpl %r8d, (%r15,%r12,1)     #  35    0x620c0  4      
  je .L_621c0                  #  36    0x620c4  6      
  nop                          #  37    0x620ca  1      
.L_620e0:                      #        0x620cb  0      
  nop                          #  38    0x620cb  1      
  nop                          #  39    0x620cc  1      
  callq .T_267                 #  40    0x620cd  5      
  cmpl %r12d, %r13d            #  41    0x620d2  3      
  je .L_62160                  #  42    0x620d5  6      
  nop                          #  43    0x620db  1      
  nop                          #  44    0x620dc  1      
.L_62120:                      #        0x620dd  0      
  addl $0x4, %ebx              #  45    0x620dd  3      
  leal -0x4(%rbx), %edx        #  46    0x620e0  3      
  movl %edx, %edx              #  47    0x620e3  2      
  movl (%r15,%rdx,1), %eax     #  48    0x620e5  4      
  testq %rax, %rax             #  49    0x620e9  3      
  jne .L_62080                 #  50    0x620ec  6      
  movl %ebx, %r12d             #  51    0x620f2  3      
  cmpl %r12d, %r13d            #  52    0x620f5  3      
  nop                          #  53    0x620f8  1      
  jne .L_62120                 #  54    0x620f9  6      
  nop                          #  55    0x620ff  1      
  nop                          #  56    0x62100  1      
.L_62160:                      #        0x62101  0      
  movl 0xffd47c5(%rip), %eax   #  57    0x62101  6      
  cmpl 0xffd47cf(%rip), %eax   #  58    0x62107  6      
  ja .L_62260                  #  59    0x6210d  6      
  nop                          #  60    0x62113  1      
.L_62180:                      #        0x62114  0      
  testb $0x2, 0xffd4961(%rip)  #  61    0x62114  7      
  je .L_621a0                  #  62    0x6211b  6      
  mfence                       #  63    0x62121  3      
  movl $0x0, 0xffd4952(%rip)   #  64    0x62124  10     
  nop                          #  65    0x6212e  1      
.L_621a0:                      #        0x6212f  0      
  addl $0x10, %esp             #  66    0x6212f  3      
  addq %r15, %rsp              #  67    0x62132  3      
  xorl %eax, %eax              #  68    0x62135  2      
  popq %rbx                    #  69    0x62137  2      
  popq %r12                    #  70    0x62139  3      
  popq %r13                    #  71    0x6213c  3      
  popq %r11                    #  72    0x6213f  3      
  andl $0xffffffe0, %r11d      #  73    0x62142  7      
  addq %r15, %r11              #  74    0x62149  3      
  jmpq %r11                    #  75    0x6214c  3      
  nop                          #  76    0x6214f  1      
.L_621c0:                      #        0x62150  0      
  movl %edx, %edx              #  77    0x62150  2      
  movl 0x4(%r15,%rdx,1), %edx  #  78    0x62152  5      
  andl $0x1, %ecx              #  79    0x62157  3      
  movl %r12d, %r12d            #  80    0x6215a  3      
  movl %eax, (%r15,%r12,1)     #  81    0x6215d  4      
  orl $0x2, %ecx               #  82    0x62161  3      
  andl $0xfffffff8, %edx       #  83    0x62164  6      
  leal (%rdx,%rsi,1), %esi     #  84    0x6216a  3      
  orl %esi, %ecx               #  85    0x6216d  2      
  nop                          #  86    0x6216f  1      
  movl %edi, %edi              #  87    0x62170  2      
  movl %ecx, 0x4(%r15,%rdi,1)  #  88    0x62172  5      
  leal (%rsi,%rdi,1), %edi     #  89    0x62177  3      
  movl %edi, %edi              #  90    0x6217a  2      
  orl $0x1, 0x4(%r15,%rdi,1)   #  91    0x6217c  6      
  jmpq .L_62120                #  92    0x62182  5      
  nop                          #  93    0x62187  1      
.L_62200:                      #        0x62188  0      
  movl $0x1, %eax              #  94    0x62188  5      
  xchgl %eax, 0xffd48ed(%rip)  #  95    0x6218d  6      
  testl %eax, %eax             #  96    0x62193  2      
  je .L_62060                  #  97    0x62195  6      
  movl $0x10036a80, %edi       #  98    0x6219b  5      
  movl %esi, 0x8(%rsp)         #  99    0x621a0  4      
  nop                          #  100   0x621a4  1      
  nop                          #  101   0x621a5  1      
  nop                          #  102   0x621a6  1      
  callq .spin_acquire_lock     #  103   0x621a7  5      
  testl %eax, %eax             #  104   0x621ac  2      
  movl 0x8(%rsp), %esi         #  105   0x621ae  4      
  je .L_62060                  #  106   0x621b2  6      
  jmpq .L_621a0                #  107   0x621b8  5      
  nop                          #  108   0x621bd  1      
.L_62260:                      #        0x621be  0      
  xorl %edi, %edi              #  109   0x621be  2      
  nop                          #  110   0x621c0  1      
  nop                          #  111   0x621c1  1      
  callq .T_266                 #  112   0x621c2  5      
  jmpq .L_62180                #  113   0x621c7  5      
  nop                          #  114   0x621cc  1      
  nop                          #  115   0x621cd  1      
.L_622a0:                      #        0x621ce  0      
  nop                          #  116   0x621ce  1      
  nop                          #  117   0x621cf  1      
  callq .abort                 #  118   0x621d0  5      
                                                        
.size bulk_free, .-bulk_free

