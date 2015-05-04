  .text
  .globl bulk_free
  .type bulk_free, @function

#! file-offset 0x620c0
#! rip-offset  0x620c0
#! capacity    640 bytes

# Text                         #  Line  RIP      Bytes  
.bulk_free:                    #        0x620c0  0      
  pushq %r13                   #  1     0x620c0  3      
  pushq %r12                   #  2     0x620c3  3      
  pushq %rbx                   #  3     0x620c6  2      
  movl %edi, %ebx              #  4     0x620c8  2      
  subl $0x10, %esp             #  5     0x620ca  3      
  addq %r15, %rsp              #  6     0x620cd  3      
  testb $0x2, 0xffd49a5(%rip)  #  7     0x620d0  7      
  jne .L_62280                 #  8     0x620d7  6      
  nop                          #  9     0x620dd  1      
.L_620e0:                      #        0x620de  0      
  leal (%rbx,%rsi,4), %r13d    #  10    0x620de  4      
  cmpl %r13d, %ebx             #  11    0x620e2  3      
  jne .L_621a0                 #  12    0x620e5  6      
  jmpq .L_621e0                #  13    0x620eb  5      
  nop                          #  14    0x620f0  1      
.L_62100:                      #        0x620f1  0      
  leal -0x8(%rax), %edi        #  15    0x620f1  3      
  cmpl %edi, 0xffd47d6(%rip)   #  16    0x620f4  6      
  movl %edx, %edx              #  17    0x620fa  2      
  movl $0x0, (%r15,%rdx,1)     #  18    0x620fc  8      
  movl %edi, %edi              #  19    0x62104  2      
  movl 0x4(%r15,%rdi,1), %ecx  #  20    0x62106  5      
  ja .L_62320                  #  21    0x6210b  6      
  movl %ecx, %edx              #  22    0x62111  2      
  andl $0x3, %edx              #  23    0x62113  3      
  cmpl $0x1, %edx              #  24    0x62116  3      
  je .L_62320                  #  25    0x62119  6      
  movl %ecx, %esi              #  26    0x6211f  2      
  movl %ebx, %r12d             #  27    0x62121  3      
  andl $0xfffffff8, %esi       #  28    0x62124  6      
  cmpl %r12d, %r13d            #  29    0x6212a  3      
  je .L_62160                  #  30    0x6212d  6      
  leal (%rsi,%rdi,1), %edx     #  31    0x62133  3      
  xchgw %ax, %ax               #  32    0x62136  3      
  leal 0x8(%rdx), %r8d         #  33    0x62139  4      
  movl %r12d, %r12d            #  34    0x6213d  3      
  cmpl %r8d, (%r15,%r12,1)     #  35    0x62140  4      
  je .L_62240                  #  36    0x62144  6      
  nop                          #  37    0x6214a  1      
.L_62160:                      #        0x6214b  0      
  nop                          #  38    0x6214b  1      
  nop                          #  39    0x6214c  1      
  callq .T_267                 #  40    0x6214d  5      
  cmpl %r12d, %r13d            #  41    0x62152  3      
  je .L_621e0                  #  42    0x62155  6      
  nop                          #  43    0x6215b  1      
  nop                          #  44    0x6215c  1      
.L_621a0:                      #        0x6215d  0      
  addl $0x4, %ebx              #  45    0x6215d  3      
  leal -0x4(%rbx), %edx        #  46    0x62160  3      
  movl %edx, %edx              #  47    0x62163  2      
  movl (%r15,%rdx,1), %eax     #  48    0x62165  4      
  testq %rax, %rax             #  49    0x62169  3      
  jne .L_62100                 #  50    0x6216c  6      
  movl %ebx, %r12d             #  51    0x62172  3      
  cmpl %r12d, %r13d            #  52    0x62175  3      
  nop                          #  53    0x62178  1      
  jne .L_621a0                 #  54    0x62179  6      
  nop                          #  55    0x6217f  1      
  nop                          #  56    0x62180  1      
.L_621e0:                      #        0x62181  0      
  movl 0xffd4745(%rip), %eax   #  57    0x62181  6      
  cmpl 0xffd474f(%rip), %eax   #  58    0x62187  6      
  ja .L_622e0                  #  59    0x6218d  6      
  nop                          #  60    0x62193  1      
.L_62200:                      #        0x62194  0      
  testb $0x2, 0xffd48e1(%rip)  #  61    0x62194  7      
  je .L_62220                  #  62    0x6219b  6      
  mfence                       #  63    0x621a1  3      
  movl $0x0, 0xffd48d2(%rip)   #  64    0x621a4  10     
  nop                          #  65    0x621ae  1      
.L_62220:                      #        0x621af  0      
  addl $0x10, %esp             #  66    0x621af  3      
  addq %r15, %rsp              #  67    0x621b2  3      
  xorl %eax, %eax              #  68    0x621b5  2      
  popq %rbx                    #  69    0x621b7  2      
  popq %r12                    #  70    0x621b9  3      
  popq %r13                    #  71    0x621bc  3      
  popq %r11                    #  72    0x621bf  3      
  andl $0xffffffe0, %r11d      #  73    0x621c2  7      
  addq %r15, %r11              #  74    0x621c9  3      
  jmpq %r11                    #  75    0x621cc  3      
  nop                          #  76    0x621cf  1      
.L_62240:                      #        0x621d0  0      
  movl %edx, %edx              #  77    0x621d0  2      
  movl 0x4(%r15,%rdx,1), %edx  #  78    0x621d2  5      
  andl $0x1, %ecx              #  79    0x621d7  3      
  movl %r12d, %r12d            #  80    0x621da  3      
  movl %eax, (%r15,%r12,1)     #  81    0x621dd  4      
  orl $0x2, %ecx               #  82    0x621e1  3      
  andl $0xfffffff8, %edx       #  83    0x621e4  6      
  leal (%rdx,%rsi,1), %esi     #  84    0x621ea  3      
  orl %esi, %ecx               #  85    0x621ed  2      
  nop                          #  86    0x621ef  1      
  movl %edi, %edi              #  87    0x621f0  2      
  movl %ecx, 0x4(%r15,%rdi,1)  #  88    0x621f2  5      
  leal (%rsi,%rdi,1), %edi     #  89    0x621f7  3      
  movl %edi, %edi              #  90    0x621fa  2      
  orl $0x1, 0x4(%r15,%rdi,1)   #  91    0x621fc  6      
  jmpq .L_621a0                #  92    0x62202  5      
  nop                          #  93    0x62207  1      
.L_62280:                      #        0x62208  0      
  movl $0x1, %eax              #  94    0x62208  5      
  xchgl %eax, 0xffd486d(%rip)  #  95    0x6220d  6      
  testl %eax, %eax             #  96    0x62213  2      
  je .L_620e0                  #  97    0x62215  6      
  movl $0x10036a80, %edi       #  98    0x6221b  5      
  movl %esi, 0x8(%rsp)         #  99    0x62220  4      
  nop                          #  100   0x62224  1      
  nop                          #  101   0x62225  1      
  nop                          #  102   0x62226  1      
  callq .spin_acquire_lock     #  103   0x62227  5      
  testl %eax, %eax             #  104   0x6222c  2      
  movl 0x8(%rsp), %esi         #  105   0x6222e  4      
  je .L_620e0                  #  106   0x62232  6      
  jmpq .L_62220                #  107   0x62238  5      
  nop                          #  108   0x6223d  1      
.L_622e0:                      #        0x6223e  0      
  xorl %edi, %edi              #  109   0x6223e  2      
  nop                          #  110   0x62240  1      
  nop                          #  111   0x62241  1      
  callq .T_266                 #  112   0x62242  5      
  jmpq .L_62200                #  113   0x62247  5      
  nop                          #  114   0x6224c  1      
  nop                          #  115   0x6224d  1      
.L_62320:                      #        0x6224e  0      
  nop                          #  116   0x6224e  1      
  nop                          #  117   0x6224f  1      
  callq .abort                 #  118   0x62250  5      
                                                        
.size bulk_free, .-bulk_free

