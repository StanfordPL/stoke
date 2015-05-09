  .text
  .globl memmove
  .type memmove, @function

#! file-offset 0x69fc0
#! rip-offset  0x69fc0
#! capacity    448 bytes

# Text                        #  Line  RIP      Bytes  
.memmove:                     #        0x69fc0  0      
  movl %edi, %eax             #  1     0x69fc0  2      
  movl %esi, %esi             #  2     0x69fc2  2      
  cmpl %esi, %eax             #  3     0x69fc4  2      
  movq %rax, %r8              #  4     0x69fc6  3      
  movq %rsi, %rcx             #  5     0x69fc9  3      
  jbe .L_6a040                #  6     0x69fcc  6      
  leal (%rdx,%rsi,1), %r9d    #  7     0x69fd2  4      
  cmpl %r9d, %eax             #  8     0x69fd6  3      
  jae .L_6a040                #  9     0x69fd9  6      
  testl %edx, %edx            #  10    0x69fdf  2      
  je .L_6a160                 #  11    0x69fe1  6      
  nop                         #  12    0x69fe7  1      
  leal (%rdx,%rax,1), %ecx    #  13    0x69fe8  3      
  nop                         #  14    0x69feb  1      
  nop                         #  15    0x69fec  1      
.L_6a000:                     #        0x69fed  0      
  subl $0x1, %r9d             #  16    0x69fed  4      
  subl $0x1, %ecx             #  17    0x69ff1  3      
  subl $0x1, %edx             #  18    0x69ff4  3      
  movl %r9d, %r9d             #  19    0x69ff7  3      
  movzbl (%r15,%r9,1), %esi   #  20    0x69ffa  5      
  movl %ecx, %ecx             #  21    0x69fff  2      
  movb %sil, (%r15,%rcx,1)    #  22    0x6a001  4      
  jne .L_6a000                #  23    0x6a005  6      
  popq %r11                   #  24    0x6a00b  3      
  nop                         #  25    0x6a00e  1      
  andl $0xffffffe0, %r11d     #  26    0x6a00f  7      
  addq %r15, %r11             #  27    0x6a016  3      
  jmpq %r11                   #  28    0x6a019  3      
  nop                         #  29    0x6a01c  1      
  nop                         #  30    0x6a01d  1      
.L_6a040:                     #        0x6a01e  0      
  cmpl $0xf, %edx             #  31    0x6a01e  3      
  jbe .L_6a120                #  32    0x6a021  6      
  movl %esi, %edi             #  33    0x6a027  2      
  orl %eax, %edi              #  34    0x6a029  2      
  andl $0x3, %edi             #  35    0x6a02b  3      
  jne .L_6a140                #  36    0x6a02e  6      
  movq %rax, %r9              #  37    0x6a034  3      
  movl %edx, %r10d            #  38    0x6a037  3      
  movq %rsi, %r8              #  39    0x6a03a  3      
  nop                         #  40    0x6a03d  1      
.L_6a060:                     #        0x6a03e  0      
  movl %r8d, %r8d             #  41    0x6a03e  3      
  movl (%r15,%r8,1), %ecx     #  42    0x6a041  4      
  subl $0x10, %r10d           #  43    0x6a045  4      
  movl %r9d, %r9d             #  44    0x6a049  3      
  movl %ecx, (%r15,%r9,1)     #  45    0x6a04c  4      
  movl %r8d, %r8d             #  46    0x6a050  3      
  movl 0x4(%r15,%r8,1), %ecx  #  47    0x6a053  5      
  nop                         #  48    0x6a058  1      
  movl %r9d, %r9d             #  49    0x6a059  3      
  movl %ecx, 0x4(%r15,%r9,1)  #  50    0x6a05c  5      
  movl %r8d, %r8d             #  51    0x6a061  3      
  movl 0x8(%r15,%r8,1), %ecx  #  52    0x6a064  5      
  movl %r9d, %r9d             #  53    0x6a069  3      
  movl %ecx, 0x8(%r15,%r9,1)  #  54    0x6a06c  5      
  movl %r8d, %r8d             #  55    0x6a071  3      
  movl 0xc(%r15,%r8,1), %ecx  #  56    0x6a074  5      
  addl $0x10, %r8d            #  57    0x6a079  4      
  movl %r9d, %r9d             #  58    0x6a07d  3      
  movl %ecx, 0xc(%r15,%r9,1)  #  59    0x6a080  5      
  addl $0x10, %r9d            #  60    0x6a085  4      
  cmpl $0xf, %r10d            #  61    0x6a089  4      
  ja .L_6a060                 #  62    0x6a08d  6      
  leal -0x10(%rdx), %ecx      #  63    0x6a093  3      
  movl %ecx, %edx             #  64    0x6a096  2      
  andl $0xfffffff0, %ecx      #  65    0x6a098  6      
  xchgw %ax, %ax              #  66    0x6a09e  3      
  addl $0x10, %ecx            #  67    0x6a0a1  3      
  andl $0xf, %edx             #  68    0x6a0a4  3      
  leal (%rcx,%rax,1), %r8d    #  69    0x6a0a7  4      
  addl %esi, %ecx             #  70    0x6a0ab  2      
  cmpl $0x3, %edx             #  71    0x6a0ad  3      
  jbe .L_6a120                #  72    0x6a0b0  6      
  movq %r8, %rdi              #  73    0x6a0b6  3      
  movl %edx, %r10d            #  74    0x6a0b9  3      
  movq %rcx, %r9              #  75    0x6a0bc  3      
  nop                         #  76    0x6a0bf  1      
.L_6a0e0:                     #        0x6a0c0  0      
  movl %r9d, %r9d             #  77    0x6a0c0  3      
  movl (%r15,%r9,1), %r11d    #  78    0x6a0c3  4      
  subl $0x4, %r10d            #  79    0x6a0c7  4      
  addl $0x4, %r9d             #  80    0x6a0cb  4      
  movl %edi, %edi             #  81    0x6a0cf  2      
  movl %r11d, (%r15,%rdi,1)   #  82    0x6a0d1  4      
  addl $0x4, %edi             #  83    0x6a0d5  3      
  cmpl $0x3, %r10d            #  84    0x6a0d8  4      
  nop                         #  85    0x6a0dc  1      
  ja .L_6a0e0                 #  86    0x6a0dd  6      
  subl $0x4, %edx             #  87    0x6a0e3  3      
  movl %edx, %esi             #  88    0x6a0e6  2      
  andl $0x3, %edx             #  89    0x6a0e8  3      
  shrl $0x2, %esi             #  90    0x6a0eb  3      
  leal 0x4(,%rsi,4), %esi     #  91    0x6a0ee  7      
  leal (%rsi,%r8,1), %r8d     #  92    0x6a0f5  4      
  leal (%rsi,%rcx,1), %ecx    #  93    0x6a0f9  3      
  nop                         #  94    0x6a0fc  1      
.L_6a120:                     #        0x6a0fd  0      
  testl %edx, %edx            #  95    0x6a0fd  2      
  je .L_6a160                 #  96    0x6a0ff  6      
  nop                         #  97    0x6a105  1      
  nop                         #  98    0x6a106  1      
.L_6a140:                     #        0x6a107  0      
  movl %ecx, %ecx             #  99    0x6a107  2      
  movzbl (%r15,%rcx,1), %esi  #  100   0x6a109  5      
  addl $0x1, %ecx             #  101   0x6a10e  3      
  movl %r8d, %r8d             #  102   0x6a111  3      
  movb %sil, (%r15,%r8,1)     #  103   0x6a114  4      
  addl $0x1, %r8d             #  104   0x6a118  4      
  subl $0x1, %edx             #  105   0x6a11c  3      
  jne .L_6a140                #  106   0x6a11f  6      
  nop                         #  107   0x6a125  1      
.L_6a160:                     #        0x6a126  0      
  popq %r11                   #  108   0x6a126  3      
  andl $0xffffffe0, %r11d     #  109   0x6a129  7      
  addq %r15, %r11             #  110   0x6a130  3      
  jmpq %r11                   #  111   0x6a133  3      
  nop                         #  112   0x6a136  1      
  nop                         #  113   0x6a137  1      
  nop                         #  114   0x6a138  1      
  nop                         #  115   0x6a139  1      
  nop                         #  116   0x6a13a  1      
  nop                         #  117   0x6a13b  1      
  nop                         #  118   0x6a13c  1      
  nop                         #  119   0x6a13d  1      
  nop                         #  120   0x6a13e  1      
  nop                         #  121   0x6a13f  1      
  nop                         #  122   0x6a140  1      
  nop                         #  123   0x6a141  1      
  nop                         #  124   0x6a142  1      
  nop                         #  125   0x6a143  1      
  nop                         #  126   0x6a144  1      
  nop                         #  127   0x6a145  1      
  nop                         #  128   0x6a146  1      
  nop                         #  129   0x6a147  1      
  nop                         #  130   0x6a148  1      
  nop                         #  131   0x6a149  1      
                                                       
.size memmove, .-memmove

