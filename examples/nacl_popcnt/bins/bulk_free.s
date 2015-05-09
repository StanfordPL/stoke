  .text
  .globl bulk_free
  .type bulk_free, @function

#! file-offset 0x62020
#! rip-offset  0x62020
#! capacity    640 bytes

# Text                         #  Line  RIP      Bytes  
.bulk_free:                    #        0x62020  0      
  pushq %r13                   #  1     0x62020  3      
  pushq %r12                   #  2     0x62023  3      
  pushq %rbx                   #  3     0x62026  2      
  movl %edi, %ebx              #  4     0x62028  2      
  subl $0x10, %esp             #  5     0x6202a  3      
  addq %r15, %rsp              #  6     0x6202d  3      
  testb $0x2, 0xffd4a45(%rip)  #  7     0x62030  7      
  jne .L_621e0                 #  8     0x62037  6      
  nop                          #  9     0x6203d  1      
.L_62040:                      #        0x6203e  0      
  leal (%rbx,%rsi,4), %r13d    #  10    0x6203e  4      
  cmpl %r13d, %ebx             #  11    0x62042  3      
  jne .L_62100                 #  12    0x62045  6      
  jmpq .L_62140                #  13    0x6204b  5      
  nop                          #  14    0x62050  1      
.L_62060:                      #        0x62051  0      
  leal -0x8(%rax), %edi        #  15    0x62051  3      
  cmpl %edi, 0xffd4876(%rip)   #  16    0x62054  6      
  movl %edx, %edx              #  17    0x6205a  2      
  movl $0x0, (%r15,%rdx,1)     #  18    0x6205c  8      
  movl %edi, %edi              #  19    0x62064  2      
  movl 0x4(%r15,%rdi,1), %ecx  #  20    0x62066  5      
  ja .L_62280                  #  21    0x6206b  6      
  movl %ecx, %edx              #  22    0x62071  2      
  andl $0x3, %edx              #  23    0x62073  3      
  cmpl $0x1, %edx              #  24    0x62076  3      
  je .L_62280                  #  25    0x62079  6      
  movl %ecx, %esi              #  26    0x6207f  2      
  movl %ebx, %r12d             #  27    0x62081  3      
  andl $0xfffffff8, %esi       #  28    0x62084  6      
  cmpl %r12d, %r13d            #  29    0x6208a  3      
  je .L_620c0                  #  30    0x6208d  6      
  leal (%rsi,%rdi,1), %edx     #  31    0x62093  3      
  xchgw %ax, %ax               #  32    0x62096  3      
  leal 0x8(%rdx), %r8d         #  33    0x62099  4      
  movl %r12d, %r12d            #  34    0x6209d  3      
  cmpl %r8d, (%r15,%r12,1)     #  35    0x620a0  4      
  je .L_621a0                  #  36    0x620a4  6      
  nop                          #  37    0x620aa  1      
.L_620c0:                      #        0x620ab  0      
  nop                          #  38    0x620ab  1      
  nop                          #  39    0x620ac  1      
  callq .T_267                 #  40    0x620ad  5      
  cmpl %r12d, %r13d            #  41    0x620b2  3      
  je .L_62140                  #  42    0x620b5  6      
  nop                          #  43    0x620bb  1      
  nop                          #  44    0x620bc  1      
.L_62100:                      #        0x620bd  0      
  addl $0x4, %ebx              #  45    0x620bd  3      
  leal -0x4(%rbx), %edx        #  46    0x620c0  3      
  movl %edx, %edx              #  47    0x620c3  2      
  movl (%r15,%rdx,1), %eax     #  48    0x620c5  4      
  testq %rax, %rax             #  49    0x620c9  3      
  jne .L_62060                 #  50    0x620cc  6      
  movl %ebx, %r12d             #  51    0x620d2  3      
  cmpl %r12d, %r13d            #  52    0x620d5  3      
  nop                          #  53    0x620d8  1      
  jne .L_62100                 #  54    0x620d9  6      
  nop                          #  55    0x620df  1      
  nop                          #  56    0x620e0  1      
.L_62140:                      #        0x620e1  0      
  movl 0xffd47e5(%rip), %eax   #  57    0x620e1  6      
  cmpl 0xffd47ef(%rip), %eax   #  58    0x620e7  6      
  ja .L_62240                  #  59    0x620ed  6      
  nop                          #  60    0x620f3  1      
.L_62160:                      #        0x620f4  0      
  testb $0x2, 0xffd4981(%rip)  #  61    0x620f4  7      
  je .L_62180                  #  62    0x620fb  6      
  mfence                       #  63    0x62101  3      
  movl $0x0, 0xffd4972(%rip)   #  64    0x62104  10     
  nop                          #  65    0x6210e  1      
.L_62180:                      #        0x6210f  0      
  addl $0x10, %esp             #  66    0x6210f  3      
  addq %r15, %rsp              #  67    0x62112  3      
  xorl %eax, %eax              #  68    0x62115  2      
  popq %rbx                    #  69    0x62117  2      
  popq %r12                    #  70    0x62119  3      
  popq %r13                    #  71    0x6211c  3      
  popq %r11                    #  72    0x6211f  3      
  andl $0xffffffe0, %r11d      #  73    0x62122  7      
  addq %r15, %r11              #  74    0x62129  3      
  jmpq %r11                    #  75    0x6212c  3      
  nop                          #  76    0x6212f  1      
.L_621a0:                      #        0x62130  0      
  movl %edx, %edx              #  77    0x62130  2      
  movl 0x4(%r15,%rdx,1), %edx  #  78    0x62132  5      
  andl $0x1, %ecx              #  79    0x62137  3      
  movl %r12d, %r12d            #  80    0x6213a  3      
  movl %eax, (%r15,%r12,1)     #  81    0x6213d  4      
  orl $0x2, %ecx               #  82    0x62141  3      
  andl $0xfffffff8, %edx       #  83    0x62144  6      
  leal (%rdx,%rsi,1), %esi     #  84    0x6214a  3      
  orl %esi, %ecx               #  85    0x6214d  2      
  nop                          #  86    0x6214f  1      
  movl %edi, %edi              #  87    0x62150  2      
  movl %ecx, 0x4(%r15,%rdi,1)  #  88    0x62152  5      
  leal (%rsi,%rdi,1), %edi     #  89    0x62157  3      
  movl %edi, %edi              #  90    0x6215a  2      
  orl $0x1, 0x4(%r15,%rdi,1)   #  91    0x6215c  6      
  jmpq .L_62100                #  92    0x62162  5      
  nop                          #  93    0x62167  1      
.L_621e0:                      #        0x62168  0      
  movl $0x1, %eax              #  94    0x62168  5      
  xchgl %eax, 0xffd490d(%rip)  #  95    0x6216d  6      
  testl %eax, %eax             #  96    0x62173  2      
  je .L_62040                  #  97    0x62175  6      
  movl $0x10036a80, %edi       #  98    0x6217b  5      
  movl %esi, 0x8(%rsp)         #  99    0x62180  4      
  nop                          #  100   0x62184  1      
  nop                          #  101   0x62185  1      
  nop                          #  102   0x62186  1      
  callq .spin_acquire_lock     #  103   0x62187  5      
  testl %eax, %eax             #  104   0x6218c  2      
  movl 0x8(%rsp), %esi         #  105   0x6218e  4      
  je .L_62040                  #  106   0x62192  6      
  jmpq .L_62180                #  107   0x62198  5      
  nop                          #  108   0x6219d  1      
.L_62240:                      #        0x6219e  0      
  xorl %edi, %edi              #  109   0x6219e  2      
  nop                          #  110   0x621a0  1      
  nop                          #  111   0x621a1  1      
  callq .T_266                 #  112   0x621a2  5      
  jmpq .L_62160                #  113   0x621a7  5      
  nop                          #  114   0x621ac  1      
  nop                          #  115   0x621ad  1      
.L_62280:                      #        0x621ae  0      
  nop                          #  116   0x621ae  1      
  nop                          #  117   0x621af  1      
  callq .abort                 #  118   0x621b0  5      
                                                        
.size bulk_free, .-bulk_free

