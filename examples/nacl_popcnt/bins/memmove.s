  .text
  .globl memmove
  .type memmove, @function

#! file-offset 0x6a060
#! rip-offset  0x6a060
#! capacity    448 bytes

# Text                        #  Line  RIP      Bytes  
.memmove:                     #        0x6a060  0      
  movl %edi, %eax             #  1     0x6a060  2      
  movl %esi, %esi             #  2     0x6a062  2      
  cmpl %esi, %eax             #  3     0x6a064  2      
  movq %rax, %r8              #  4     0x6a066  3      
  movq %rsi, %rcx             #  5     0x6a069  3      
  jbe .L_6a0e0                #  6     0x6a06c  6      
  leal (%rdx,%rsi,1), %r9d    #  7     0x6a072  4      
  cmpl %r9d, %eax             #  8     0x6a076  3      
  jae .L_6a0e0                #  9     0x6a079  6      
  testl %edx, %edx            #  10    0x6a07f  2      
  je .L_6a200                 #  11    0x6a081  6      
  nop                         #  12    0x6a087  1      
  leal (%rdx,%rax,1), %ecx    #  13    0x6a088  3      
  nop                         #  14    0x6a08b  1      
  nop                         #  15    0x6a08c  1      
.L_6a0a0:                     #        0x6a08d  0      
  subl $0x1, %r9d             #  16    0x6a08d  4      
  subl $0x1, %ecx             #  17    0x6a091  3      
  subl $0x1, %edx             #  18    0x6a094  3      
  movl %r9d, %r9d             #  19    0x6a097  3      
  movzbl (%r15,%r9,1), %esi   #  20    0x6a09a  5      
  movl %ecx, %ecx             #  21    0x6a09f  2      
  movb %sil, (%r15,%rcx,1)    #  22    0x6a0a1  4      
  jne .L_6a0a0                #  23    0x6a0a5  6      
  popq %r11                   #  24    0x6a0ab  3      
  nop                         #  25    0x6a0ae  1      
  andl $0xffffffe0, %r11d     #  26    0x6a0af  7      
  addq %r15, %r11             #  27    0x6a0b6  3      
  jmpq %r11                   #  28    0x6a0b9  3      
  nop                         #  29    0x6a0bc  1      
  nop                         #  30    0x6a0bd  1      
.L_6a0e0:                     #        0x6a0be  0      
  cmpl $0xf, %edx             #  31    0x6a0be  3      
  jbe .L_6a1c0                #  32    0x6a0c1  6      
  movl %esi, %edi             #  33    0x6a0c7  2      
  orl %eax, %edi              #  34    0x6a0c9  2      
  andl $0x3, %edi             #  35    0x6a0cb  3      
  jne .L_6a1e0                #  36    0x6a0ce  6      
  movq %rax, %r9              #  37    0x6a0d4  3      
  movl %edx, %r10d            #  38    0x6a0d7  3      
  movq %rsi, %r8              #  39    0x6a0da  3      
  nop                         #  40    0x6a0dd  1      
.L_6a100:                     #        0x6a0de  0      
  movl %r8d, %r8d             #  41    0x6a0de  3      
  movl (%r15,%r8,1), %ecx     #  42    0x6a0e1  4      
  subl $0x10, %r10d           #  43    0x6a0e5  4      
  movl %r9d, %r9d             #  44    0x6a0e9  3      
  movl %ecx, (%r15,%r9,1)     #  45    0x6a0ec  4      
  movl %r8d, %r8d             #  46    0x6a0f0  3      
  movl 0x4(%r15,%r8,1), %ecx  #  47    0x6a0f3  5      
  nop                         #  48    0x6a0f8  1      
  movl %r9d, %r9d             #  49    0x6a0f9  3      
  movl %ecx, 0x4(%r15,%r9,1)  #  50    0x6a0fc  5      
  movl %r8d, %r8d             #  51    0x6a101  3      
  movl 0x8(%r15,%r8,1), %ecx  #  52    0x6a104  5      
  movl %r9d, %r9d             #  53    0x6a109  3      
  movl %ecx, 0x8(%r15,%r9,1)  #  54    0x6a10c  5      
  movl %r8d, %r8d             #  55    0x6a111  3      
  movl 0xc(%r15,%r8,1), %ecx  #  56    0x6a114  5      
  addl $0x10, %r8d            #  57    0x6a119  4      
  movl %r9d, %r9d             #  58    0x6a11d  3      
  movl %ecx, 0xc(%r15,%r9,1)  #  59    0x6a120  5      
  addl $0x10, %r9d            #  60    0x6a125  4      
  cmpl $0xf, %r10d            #  61    0x6a129  4      
  ja .L_6a100                 #  62    0x6a12d  6      
  leal -0x10(%rdx), %ecx      #  63    0x6a133  3      
  movl %ecx, %edx             #  64    0x6a136  2      
  andl $0xfffffff0, %ecx      #  65    0x6a138  6      
  xchgw %ax, %ax              #  66    0x6a13e  3      
  addl $0x10, %ecx            #  67    0x6a141  3      
  andl $0xf, %edx             #  68    0x6a144  3      
  leal (%rcx,%rax,1), %r8d    #  69    0x6a147  4      
  addl %esi, %ecx             #  70    0x6a14b  2      
  cmpl $0x3, %edx             #  71    0x6a14d  3      
  jbe .L_6a1c0                #  72    0x6a150  6      
  movq %r8, %rdi              #  73    0x6a156  3      
  movl %edx, %r10d            #  74    0x6a159  3      
  movq %rcx, %r9              #  75    0x6a15c  3      
  nop                         #  76    0x6a15f  1      
.L_6a180:                     #        0x6a160  0      
  movl %r9d, %r9d             #  77    0x6a160  3      
  movl (%r15,%r9,1), %r11d    #  78    0x6a163  4      
  subl $0x4, %r10d            #  79    0x6a167  4      
  addl $0x4, %r9d             #  80    0x6a16b  4      
  movl %edi, %edi             #  81    0x6a16f  2      
  movl %r11d, (%r15,%rdi,1)   #  82    0x6a171  4      
  addl $0x4, %edi             #  83    0x6a175  3      
  cmpl $0x3, %r10d            #  84    0x6a178  4      
  nop                         #  85    0x6a17c  1      
  ja .L_6a180                 #  86    0x6a17d  6      
  subl $0x4, %edx             #  87    0x6a183  3      
  movl %edx, %esi             #  88    0x6a186  2      
  andl $0x3, %edx             #  89    0x6a188  3      
  shrl $0x2, %esi             #  90    0x6a18b  3      
  leal 0x4(,%rsi,4), %esi     #  91    0x6a18e  7      
  leal (%rsi,%r8,1), %r8d     #  92    0x6a195  4      
  leal (%rsi,%rcx,1), %ecx    #  93    0x6a199  3      
  nop                         #  94    0x6a19c  1      
.L_6a1c0:                     #        0x6a19d  0      
  testl %edx, %edx            #  95    0x6a19d  2      
  je .L_6a200                 #  96    0x6a19f  6      
  nop                         #  97    0x6a1a5  1      
  nop                         #  98    0x6a1a6  1      
.L_6a1e0:                     #        0x6a1a7  0      
  movl %ecx, %ecx             #  99    0x6a1a7  2      
  movzbl (%r15,%rcx,1), %esi  #  100   0x6a1a9  5      
  addl $0x1, %ecx             #  101   0x6a1ae  3      
  movl %r8d, %r8d             #  102   0x6a1b1  3      
  movb %sil, (%r15,%r8,1)     #  103   0x6a1b4  4      
  addl $0x1, %r8d             #  104   0x6a1b8  4      
  subl $0x1, %edx             #  105   0x6a1bc  3      
  jne .L_6a1e0                #  106   0x6a1bf  6      
  nop                         #  107   0x6a1c5  1      
.L_6a200:                     #        0x6a1c6  0      
  popq %r11                   #  108   0x6a1c6  3      
  andl $0xffffffe0, %r11d     #  109   0x6a1c9  7      
  addq %r15, %r11             #  110   0x6a1d0  3      
  jmpq %r11                   #  111   0x6a1d3  3      
  nop                         #  112   0x6a1d6  1      
  nop                         #  113   0x6a1d7  1      
  nop                         #  114   0x6a1d8  1      
  nop                         #  115   0x6a1d9  1      
  nop                         #  116   0x6a1da  1      
  nop                         #  117   0x6a1db  1      
  nop                         #  118   0x6a1dc  1      
  nop                         #  119   0x6a1dd  1      
  nop                         #  120   0x6a1de  1      
  nop                         #  121   0x6a1df  1      
  nop                         #  122   0x6a1e0  1      
  nop                         #  123   0x6a1e1  1      
  nop                         #  124   0x6a1e2  1      
  nop                         #  125   0x6a1e3  1      
  nop                         #  126   0x6a1e4  1      
  nop                         #  127   0x6a1e5  1      
  nop                         #  128   0x6a1e6  1      
  nop                         #  129   0x6a1e7  1      
  nop                         #  130   0x6a1e8  1      
  nop                         #  131   0x6a1e9  1      
                                                       
.size memmove, .-memmove

