  .text
  .globl memmove
  .type memmove, @function

#! file-offset 0x69fe0
#! rip-offset  0x69fe0
#! capacity    448 bytes

# Text                        #  Line  RIP      Bytes  
.memmove:                     #        0x69fe0  0      
  movl %edi, %eax             #  1     0x69fe0  2      
  movl %esi, %esi             #  2     0x69fe2  2      
  cmpl %esi, %eax             #  3     0x69fe4  2      
  movq %rax, %r8              #  4     0x69fe6  3      
  movq %rsi, %rcx             #  5     0x69fe9  3      
  jbe .L_6a060                #  6     0x69fec  6      
  leal (%rdx,%rsi,1), %r9d    #  7     0x69ff2  4      
  cmpl %r9d, %eax             #  8     0x69ff6  3      
  jae .L_6a060                #  9     0x69ff9  6      
  testl %edx, %edx            #  10    0x69fff  2      
  je .L_6a180                 #  11    0x6a001  6      
  nop                         #  12    0x6a007  1      
  leal (%rdx,%rax,1), %ecx    #  13    0x6a008  3      
  nop                         #  14    0x6a00b  1      
  nop                         #  15    0x6a00c  1      
.L_6a020:                     #        0x6a00d  0      
  subl $0x1, %r9d             #  16    0x6a00d  4      
  subl $0x1, %ecx             #  17    0x6a011  3      
  subl $0x1, %edx             #  18    0x6a014  3      
  movl %r9d, %r9d             #  19    0x6a017  3      
  movzbl (%r15,%r9,1), %esi   #  20    0x6a01a  5      
  movl %ecx, %ecx             #  21    0x6a01f  2      
  movb %sil, (%r15,%rcx,1)    #  22    0x6a021  4      
  jne .L_6a020                #  23    0x6a025  6      
  popq %r11                   #  24    0x6a02b  3      
  nop                         #  25    0x6a02e  1      
  andl $0xffffffe0, %r11d     #  26    0x6a02f  7      
  addq %r15, %r11             #  27    0x6a036  3      
  jmpq %r11                   #  28    0x6a039  3      
  nop                         #  29    0x6a03c  1      
  nop                         #  30    0x6a03d  1      
.L_6a060:                     #        0x6a03e  0      
  cmpl $0xf, %edx             #  31    0x6a03e  3      
  jbe .L_6a140                #  32    0x6a041  6      
  movl %esi, %edi             #  33    0x6a047  2      
  orl %eax, %edi              #  34    0x6a049  2      
  andl $0x3, %edi             #  35    0x6a04b  3      
  jne .L_6a160                #  36    0x6a04e  6      
  movq %rax, %r9              #  37    0x6a054  3      
  movl %edx, %r10d            #  38    0x6a057  3      
  movq %rsi, %r8              #  39    0x6a05a  3      
  nop                         #  40    0x6a05d  1      
.L_6a080:                     #        0x6a05e  0      
  movl %r8d, %r8d             #  41    0x6a05e  3      
  movl (%r15,%r8,1), %ecx     #  42    0x6a061  4      
  subl $0x10, %r10d           #  43    0x6a065  4      
  movl %r9d, %r9d             #  44    0x6a069  3      
  movl %ecx, (%r15,%r9,1)     #  45    0x6a06c  4      
  movl %r8d, %r8d             #  46    0x6a070  3      
  movl 0x4(%r15,%r8,1), %ecx  #  47    0x6a073  5      
  nop                         #  48    0x6a078  1      
  movl %r9d, %r9d             #  49    0x6a079  3      
  movl %ecx, 0x4(%r15,%r9,1)  #  50    0x6a07c  5      
  movl %r8d, %r8d             #  51    0x6a081  3      
  movl 0x8(%r15,%r8,1), %ecx  #  52    0x6a084  5      
  movl %r9d, %r9d             #  53    0x6a089  3      
  movl %ecx, 0x8(%r15,%r9,1)  #  54    0x6a08c  5      
  movl %r8d, %r8d             #  55    0x6a091  3      
  movl 0xc(%r15,%r8,1), %ecx  #  56    0x6a094  5      
  addl $0x10, %r8d            #  57    0x6a099  4      
  movl %r9d, %r9d             #  58    0x6a09d  3      
  movl %ecx, 0xc(%r15,%r9,1)  #  59    0x6a0a0  5      
  addl $0x10, %r9d            #  60    0x6a0a5  4      
  cmpl $0xf, %r10d            #  61    0x6a0a9  4      
  ja .L_6a080                 #  62    0x6a0ad  6      
  leal -0x10(%rdx), %ecx      #  63    0x6a0b3  3      
  movl %ecx, %edx             #  64    0x6a0b6  2      
  andl $0xfffffff0, %ecx      #  65    0x6a0b8  6      
  xchgw %ax, %ax              #  66    0x6a0be  3      
  addl $0x10, %ecx            #  67    0x6a0c1  3      
  andl $0xf, %edx             #  68    0x6a0c4  3      
  leal (%rcx,%rax,1), %r8d    #  69    0x6a0c7  4      
  addl %esi, %ecx             #  70    0x6a0cb  2      
  cmpl $0x3, %edx             #  71    0x6a0cd  3      
  jbe .L_6a140                #  72    0x6a0d0  6      
  movq %r8, %rdi              #  73    0x6a0d6  3      
  movl %edx, %r10d            #  74    0x6a0d9  3      
  movq %rcx, %r9              #  75    0x6a0dc  3      
  nop                         #  76    0x6a0df  1      
.L_6a100:                     #        0x6a0e0  0      
  movl %r9d, %r9d             #  77    0x6a0e0  3      
  movl (%r15,%r9,1), %r11d    #  78    0x6a0e3  4      
  subl $0x4, %r10d            #  79    0x6a0e7  4      
  addl $0x4, %r9d             #  80    0x6a0eb  4      
  movl %edi, %edi             #  81    0x6a0ef  2      
  movl %r11d, (%r15,%rdi,1)   #  82    0x6a0f1  4      
  addl $0x4, %edi             #  83    0x6a0f5  3      
  cmpl $0x3, %r10d            #  84    0x6a0f8  4      
  nop                         #  85    0x6a0fc  1      
  ja .L_6a100                 #  86    0x6a0fd  6      
  subl $0x4, %edx             #  87    0x6a103  3      
  movl %edx, %esi             #  88    0x6a106  2      
  andl $0x3, %edx             #  89    0x6a108  3      
  shrl $0x2, %esi             #  90    0x6a10b  3      
  leal 0x4(,%rsi,4), %esi     #  91    0x6a10e  7      
  leal (%rsi,%r8,1), %r8d     #  92    0x6a115  4      
  leal (%rsi,%rcx,1), %ecx    #  93    0x6a119  3      
  nop                         #  94    0x6a11c  1      
.L_6a140:                     #        0x6a11d  0      
  testl %edx, %edx            #  95    0x6a11d  2      
  je .L_6a180                 #  96    0x6a11f  6      
  nop                         #  97    0x6a125  1      
  nop                         #  98    0x6a126  1      
.L_6a160:                     #        0x6a127  0      
  movl %ecx, %ecx             #  99    0x6a127  2      
  movzbl (%r15,%rcx,1), %esi  #  100   0x6a129  5      
  addl $0x1, %ecx             #  101   0x6a12e  3      
  movl %r8d, %r8d             #  102   0x6a131  3      
  movb %sil, (%r15,%r8,1)     #  103   0x6a134  4      
  addl $0x1, %r8d             #  104   0x6a138  4      
  subl $0x1, %edx             #  105   0x6a13c  3      
  jne .L_6a160                #  106   0x6a13f  6      
  nop                         #  107   0x6a145  1      
.L_6a180:                     #        0x6a146  0      
  popq %r11                   #  108   0x6a146  3      
  andl $0xffffffe0, %r11d     #  109   0x6a149  7      
  addq %r15, %r11             #  110   0x6a150  3      
  jmpq %r11                   #  111   0x6a153  3      
  nop                         #  112   0x6a156  1      
  nop                         #  113   0x6a157  1      
  nop                         #  114   0x6a158  1      
  nop                         #  115   0x6a159  1      
  nop                         #  116   0x6a15a  1      
  nop                         #  117   0x6a15b  1      
  nop                         #  118   0x6a15c  1      
  nop                         #  119   0x6a15d  1      
  nop                         #  120   0x6a15e  1      
  nop                         #  121   0x6a15f  1      
  nop                         #  122   0x6a160  1      
  nop                         #  123   0x6a161  1      
  nop                         #  124   0x6a162  1      
  nop                         #  125   0x6a163  1      
  nop                         #  126   0x6a164  1      
  nop                         #  127   0x6a165  1      
  nop                         #  128   0x6a166  1      
  nop                         #  129   0x6a167  1      
  nop                         #  130   0x6a168  1      
  nop                         #  131   0x6a169  1      
                                                       
.size memmove, .-memmove

