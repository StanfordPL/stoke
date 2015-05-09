  .text
  .globl d_cv_qualifiers
  .type d_cv_qualifiers, @function

#! file-offset 0x4fe00
#! rip-offset  0x4fe00
#! capacity    352 bytes

# Text                          #  Line  RIP      Bytes  
.d_cv_qualifiers:               #        0x4fe00  0      
  pushq %r13                    #  1     0x4fe00  3      
  movl %edx, %r13d              #  2     0x4fe03  3      
  pushq %r12                    #  3     0x4fe06  3      
  movl %esi, %r12d              #  4     0x4fe09  3      
  pushq %rbx                    #  5     0x4fe0c  2      
  movl %edi, %ebx               #  6     0x4fe0e  2      
  movl %ebx, %ebx               #  7     0x4fe10  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x4fe12  5      
  movl %eax, %eax               #  9     0x4fe17  2      
  movzbl (%r15,%rax,1), %eax    #  10    0x4fe19  5      
  jmpq .L_4fea0                 #  11    0x4fe1e  5      
.L_4fe20:                       #        0x4fe23  0      
  movl %ebx, %ebx               #  12    0x4fe23  2      
  addl $0x1, 0xc(%r15,%rbx,1)   #  13    0x4fe25  6      
  testb %dl, %dl                #  14    0x4fe2b  2      
  je .L_4ff40                   #  15    0x4fe2d  6      
  cmpl $0x1, %r13d              #  16    0x4fe33  4      
  sbbl %esi, %esi               #  17    0x4fe37  2      
  movl %ebx, %ebx               #  18    0x4fe39  2      
  addl $0x9, 0x30(%r15,%rbx,1)  #  19    0x4fe3b  6      
  xchgw %ax, %ax                #  20    0x4fe41  3      
  andl $0xfffffffd, %esi        #  21    0x4fe44  6      
  addl $0x1a, %esi              #  22    0x4fe4a  3      
  nop                           #  23    0x4fe4d  1      
  nop                           #  24    0x4fe4e  1      
.L_4fe60:                       #        0x4fe4f  0      
  xorl %ecx, %ecx               #  25    0x4fe4f  2      
  xorl %edx, %edx               #  26    0x4fe51  2      
  movl %ebx, %edi               #  27    0x4fe53  2      
  nop                           #  28    0x4fe55  1      
  nop                           #  29    0x4fe56  1      
  callq .d_make_comp            #  30    0x4fe57  5      
  movl %eax, %eax               #  31    0x4fe5c  2      
  testq %rax, %rax              #  32    0x4fe5e  3      
  movl %r12d, %r12d             #  33    0x4fe61  3      
  movl %eax, (%r15,%r12,1)      #  34    0x4fe64  4      
  je .L_4ff00                   #  35    0x4fe68  6      
  leal 0x4(%rax), %r12d         #  36    0x4fe6e  4      
  movl %ebx, %ebx               #  37    0x4fe72  2      
  movl 0xc(%r15,%rbx,1), %eax   #  38    0x4fe74  5      
  movl %eax, %eax               #  39    0x4fe79  2      
  movzbl (%r15,%rax,1), %eax    #  40    0x4fe7b  5      
.L_4fea0:                       #        0x4fe80  0      
  cmpb $0x72, %al               #  41    0x4fe80  2      
  sete %dl                      #  42    0x4fe82  3      
  cmpb $0x56, %al               #  43    0x4fe85  2      
  sete %cl                      #  44    0x4fe87  3      
  je .L_4fe20                   #  45    0x4fe8a  6      
  testb %dl, %dl                #  46    0x4fe90  2      
  jne .L_4fe20                  #  47    0x4fe92  6      
  cmpb $0x4b, %al               #  48    0x4fe98  2      
  jne .L_4ff20                  #  49    0x4fe9a  6      
  nop                           #  50    0x4fea0  1      
  movl %ebx, %ebx               #  51    0x4fea1  2      
  addl $0x1, 0xc(%r15,%rbx,1)   #  52    0x4fea3  6      
  nop                           #  53    0x4fea9  1      
  nop                           #  54    0x4feaa  1      
.L_4fee0:                       #        0x4feab  0      
  cmpl $0x1, %r13d              #  55    0x4feab  4      
  sbbl %esi, %esi               #  56    0x4feaf  2      
  movl %ebx, %ebx               #  57    0x4feb1  2      
  addl $0x6, 0x30(%r15,%rbx,1)  #  58    0x4feb3  6      
  andl $0xfffffffd, %esi        #  59    0x4feb9  6      
  addl $0x1c, %esi              #  60    0x4febf  3      
  jmpq .L_4fe60                 #  61    0x4fec2  5      
  nop                           #  62    0x4fec7  1      
.L_4ff00:                       #        0x4fec8  0      
  xorl %r12d, %r12d             #  63    0x4fec8  3      
  nop                           #  64    0x4fecb  1      
  nop                           #  65    0x4fecc  1      
.L_4ff20:                       #        0x4fecd  0      
  popq %rbx                     #  66    0x4fecd  2      
  movl %r12d, %eax              #  67    0x4fecf  3      
  popq %r12                     #  68    0x4fed2  3      
  popq %r13                     #  69    0x4fed5  3      
  popq %r11                     #  70    0x4fed8  3      
  andl $0xffffffe0, %r11d       #  71    0x4fedb  7      
  addq %r15, %r11               #  72    0x4fee2  3      
  jmpq %r11                     #  73    0x4fee5  3      
  nop                           #  74    0x4fee8  1      
.L_4ff40:                       #        0x4fee9  0      
  testb %cl, %cl                #  75    0x4fee9  2      
  je .L_4fee0                   #  76    0x4feeb  6      
  cmpl $0x1, %r13d              #  77    0x4fef1  4      
  sbbl %esi, %esi               #  78    0x4fef5  2      
  movl %ebx, %ebx               #  79    0x4fef7  2      
  addl $0x9, 0x30(%r15,%rbx,1)  #  80    0x4fef9  6      
  andl $0xfffffffd, %esi        #  81    0x4feff  6      
  addl $0x1b, %esi              #  82    0x4ff05  3      
  jmpq .L_4fe60                 #  83    0x4ff08  5      
  nop                           #  84    0x4ff0d  1      
                                                         
.size d_cv_qualifiers, .-d_cv_qualifiers

