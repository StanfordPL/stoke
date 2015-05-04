  .text
  .globl d_cv_qualifiers
  .type d_cv_qualifiers, @function

#! file-offset 0x4fea0
#! rip-offset  0x4fea0
#! capacity    352 bytes

# Text                          #  Line  RIP      Bytes  
.d_cv_qualifiers:               #        0x4fea0  0      
  pushq %r13                    #  1     0x4fea0  3      
  movl %edx, %r13d              #  2     0x4fea3  3      
  pushq %r12                    #  3     0x4fea6  3      
  movl %esi, %r12d              #  4     0x4fea9  3      
  pushq %rbx                    #  5     0x4feac  2      
  movl %edi, %ebx               #  6     0x4feae  2      
  movl %ebx, %ebx               #  7     0x4feb0  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x4feb2  5      
  movl %eax, %eax               #  9     0x4feb7  2      
  movzbl (%r15,%rax,1), %eax    #  10    0x4feb9  5      
  jmpq .L_4ff40                 #  11    0x4febe  5      
.L_4fec0:                       #        0x4fec3  0      
  movl %ebx, %ebx               #  12    0x4fec3  2      
  addl $0x1, 0xc(%r15,%rbx,1)   #  13    0x4fec5  6      
  testb %dl, %dl                #  14    0x4fecb  2      
  je .L_4ffe0                   #  15    0x4fecd  6      
  cmpl $0x1, %r13d              #  16    0x4fed3  4      
  sbbl %esi, %esi               #  17    0x4fed7  2      
  movl %ebx, %ebx               #  18    0x4fed9  2      
  addl $0x9, 0x30(%r15,%rbx,1)  #  19    0x4fedb  6      
  xchgw %ax, %ax                #  20    0x4fee1  3      
  andl $0xfffffffd, %esi        #  21    0x4fee4  6      
  addl $0x1a, %esi              #  22    0x4feea  3      
  nop                           #  23    0x4feed  1      
  nop                           #  24    0x4feee  1      
.L_4ff00:                       #        0x4feef  0      
  xorl %ecx, %ecx               #  25    0x4feef  2      
  xorl %edx, %edx               #  26    0x4fef1  2      
  movl %ebx, %edi               #  27    0x4fef3  2      
  nop                           #  28    0x4fef5  1      
  nop                           #  29    0x4fef6  1      
  callq .d_make_comp            #  30    0x4fef7  5      
  movl %eax, %eax               #  31    0x4fefc  2      
  testq %rax, %rax              #  32    0x4fefe  3      
  movl %r12d, %r12d             #  33    0x4ff01  3      
  movl %eax, (%r15,%r12,1)      #  34    0x4ff04  4      
  je .L_4ffa0                   #  35    0x4ff08  6      
  leal 0x4(%rax), %r12d         #  36    0x4ff0e  4      
  movl %ebx, %ebx               #  37    0x4ff12  2      
  movl 0xc(%r15,%rbx,1), %eax   #  38    0x4ff14  5      
  movl %eax, %eax               #  39    0x4ff19  2      
  movzbl (%r15,%rax,1), %eax    #  40    0x4ff1b  5      
.L_4ff40:                       #        0x4ff20  0      
  cmpb $0x72, %al               #  41    0x4ff20  2      
  sete %dl                      #  42    0x4ff22  3      
  cmpb $0x56, %al               #  43    0x4ff25  2      
  sete %cl                      #  44    0x4ff27  3      
  je .L_4fec0                   #  45    0x4ff2a  6      
  testb %dl, %dl                #  46    0x4ff30  2      
  jne .L_4fec0                  #  47    0x4ff32  6      
  cmpb $0x4b, %al               #  48    0x4ff38  2      
  jne .L_4ffc0                  #  49    0x4ff3a  6      
  nop                           #  50    0x4ff40  1      
  movl %ebx, %ebx               #  51    0x4ff41  2      
  addl $0x1, 0xc(%r15,%rbx,1)   #  52    0x4ff43  6      
  nop                           #  53    0x4ff49  1      
  nop                           #  54    0x4ff4a  1      
.L_4ff80:                       #        0x4ff4b  0      
  cmpl $0x1, %r13d              #  55    0x4ff4b  4      
  sbbl %esi, %esi               #  56    0x4ff4f  2      
  movl %ebx, %ebx               #  57    0x4ff51  2      
  addl $0x6, 0x30(%r15,%rbx,1)  #  58    0x4ff53  6      
  andl $0xfffffffd, %esi        #  59    0x4ff59  6      
  addl $0x1c, %esi              #  60    0x4ff5f  3      
  jmpq .L_4ff00                 #  61    0x4ff62  5      
  nop                           #  62    0x4ff67  1      
.L_4ffa0:                       #        0x4ff68  0      
  xorl %r12d, %r12d             #  63    0x4ff68  3      
  nop                           #  64    0x4ff6b  1      
  nop                           #  65    0x4ff6c  1      
.L_4ffc0:                       #        0x4ff6d  0      
  popq %rbx                     #  66    0x4ff6d  2      
  movl %r12d, %eax              #  67    0x4ff6f  3      
  popq %r12                     #  68    0x4ff72  3      
  popq %r13                     #  69    0x4ff75  3      
  popq %r11                     #  70    0x4ff78  3      
  andl $0xffffffe0, %r11d       #  71    0x4ff7b  7      
  addq %r15, %r11               #  72    0x4ff82  3      
  jmpq %r11                     #  73    0x4ff85  3      
  nop                           #  74    0x4ff88  1      
.L_4ffe0:                       #        0x4ff89  0      
  testb %cl, %cl                #  75    0x4ff89  2      
  je .L_4ff80                   #  76    0x4ff8b  6      
  cmpl $0x1, %r13d              #  77    0x4ff91  4      
  sbbl %esi, %esi               #  78    0x4ff95  2      
  movl %ebx, %ebx               #  79    0x4ff97  2      
  addl $0x9, 0x30(%r15,%rbx,1)  #  80    0x4ff99  6      
  andl $0xfffffffd, %esi        #  81    0x4ff9f  6      
  addl $0x1b, %esi              #  82    0x4ffa5  3      
  jmpq .L_4ff00                 #  83    0x4ffa8  5      
  nop                           #  84    0x4ffad  1      
                                                         
.size d_cv_qualifiers, .-d_cv_qualifiers

