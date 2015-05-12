  .text
  .globl d_cv_qualifiers
  .type d_cv_qualifiers, @function

#! file-offset 0x4fe20
#! rip-offset  0x4fe20
#! capacity    352 bytes

# Text                          #  Line  RIP      Bytes  
.d_cv_qualifiers:               #        0x4fe20  0      
  pushq %r13                    #  1     0x4fe20  3      
  movl %edx, %r13d              #  2     0x4fe23  3      
  pushq %r12                    #  3     0x4fe26  3      
  movl %esi, %r12d              #  4     0x4fe29  3      
  pushq %rbx                    #  5     0x4fe2c  2      
  movl %edi, %ebx               #  6     0x4fe2e  2      
  movl %ebx, %ebx               #  7     0x4fe30  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x4fe32  5      
  movl %eax, %eax               #  9     0x4fe37  2      
  movzbl (%r15,%rax,1), %eax    #  10    0x4fe39  5      
  jmpq .L_4fec0                 #  11    0x4fe3e  5      
.L_4fe40:                       #        0x4fe43  0      
  movl %ebx, %ebx               #  12    0x4fe43  2      
  addl $0x1, 0xc(%r15,%rbx,1)   #  13    0x4fe45  6      
  testb %dl, %dl                #  14    0x4fe4b  2      
  je .L_4ff60                   #  15    0x4fe4d  6      
  cmpl $0x1, %r13d              #  16    0x4fe53  4      
  sbbl %esi, %esi               #  17    0x4fe57  2      
  movl %ebx, %ebx               #  18    0x4fe59  2      
  addl $0x9, 0x30(%r15,%rbx,1)  #  19    0x4fe5b  6      
  xchgw %ax, %ax                #  20    0x4fe61  3      
  andl $0xfffffffd, %esi        #  21    0x4fe64  6      
  addl $0x1a, %esi              #  22    0x4fe6a  3      
  nop                           #  23    0x4fe6d  1      
  nop                           #  24    0x4fe6e  1      
.L_4fe80:                       #        0x4fe6f  0      
  xorl %ecx, %ecx               #  25    0x4fe6f  2      
  xorl %edx, %edx               #  26    0x4fe71  2      
  movl %ebx, %edi               #  27    0x4fe73  2      
  nop                           #  28    0x4fe75  1      
  nop                           #  29    0x4fe76  1      
  callq .d_make_comp            #  30    0x4fe77  5      
  movl %eax, %eax               #  31    0x4fe7c  2      
  testq %rax, %rax              #  32    0x4fe7e  3      
  movl %r12d, %r12d             #  33    0x4fe81  3      
  movl %eax, (%r15,%r12,1)      #  34    0x4fe84  4      
  je .L_4ff20                   #  35    0x4fe88  6      
  leal 0x4(%rax), %r12d         #  36    0x4fe8e  4      
  movl %ebx, %ebx               #  37    0x4fe92  2      
  movl 0xc(%r15,%rbx,1), %eax   #  38    0x4fe94  5      
  movl %eax, %eax               #  39    0x4fe99  2      
  movzbl (%r15,%rax,1), %eax    #  40    0x4fe9b  5      
.L_4fec0:                       #        0x4fea0  0      
  cmpb $0x72, %al               #  41    0x4fea0  2      
  sete %dl                      #  42    0x4fea2  3      
  cmpb $0x56, %al               #  43    0x4fea5  2      
  sete %cl                      #  44    0x4fea7  3      
  je .L_4fe40                   #  45    0x4feaa  6      
  testb %dl, %dl                #  46    0x4feb0  2      
  jne .L_4fe40                  #  47    0x4feb2  6      
  cmpb $0x4b, %al               #  48    0x4feb8  2      
  jne .L_4ff40                  #  49    0x4feba  6      
  nop                           #  50    0x4fec0  1      
  movl %ebx, %ebx               #  51    0x4fec1  2      
  addl $0x1, 0xc(%r15,%rbx,1)   #  52    0x4fec3  6      
  nop                           #  53    0x4fec9  1      
  nop                           #  54    0x4feca  1      
.L_4ff00:                       #        0x4fecb  0      
  cmpl $0x1, %r13d              #  55    0x4fecb  4      
  sbbl %esi, %esi               #  56    0x4fecf  2      
  movl %ebx, %ebx               #  57    0x4fed1  2      
  addl $0x6, 0x30(%r15,%rbx,1)  #  58    0x4fed3  6      
  andl $0xfffffffd, %esi        #  59    0x4fed9  6      
  addl $0x1c, %esi              #  60    0x4fedf  3      
  jmpq .L_4fe80                 #  61    0x4fee2  5      
  nop                           #  62    0x4fee7  1      
.L_4ff20:                       #        0x4fee8  0      
  xorl %r12d, %r12d             #  63    0x4fee8  3      
  nop                           #  64    0x4feeb  1      
  nop                           #  65    0x4feec  1      
.L_4ff40:                       #        0x4feed  0      
  popq %rbx                     #  66    0x4feed  2      
  movl %r12d, %eax              #  67    0x4feef  3      
  popq %r12                     #  68    0x4fef2  3      
  popq %r13                     #  69    0x4fef5  3      
  popq %r11                     #  70    0x4fef8  3      
  andl $0xffffffe0, %r11d       #  71    0x4fefb  7      
  addq %r15, %r11               #  72    0x4ff02  3      
  jmpq %r11                     #  73    0x4ff05  3      
  nop                           #  74    0x4ff08  1      
.L_4ff60:                       #        0x4ff09  0      
  testb %cl, %cl                #  75    0x4ff09  2      
  je .L_4ff00                   #  76    0x4ff0b  6      
  cmpl $0x1, %r13d              #  77    0x4ff11  4      
  sbbl %esi, %esi               #  78    0x4ff15  2      
  movl %ebx, %ebx               #  79    0x4ff17  2      
  addl $0x9, 0x30(%r15,%rbx,1)  #  80    0x4ff19  6      
  andl $0xfffffffd, %esi        #  81    0x4ff1f  6      
  addl $0x1b, %esi              #  82    0x4ff25  3      
  jmpq .L_4fe80                 #  83    0x4ff28  5      
  nop                           #  84    0x4ff2d  1      
                                                         
.size d_cv_qualifiers, .-d_cv_qualifiers

