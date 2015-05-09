  .text
  .globl __s2b
  .type __s2b, @function

#! file-offset 0x7fbe0
#! rip-offset  0x7fbe0
#! capacity    416 bytes

# Text                           #  Line  RIP      Bytes  
.__s2b:                          #        0x7fbe0  0      
  pushq %r14                     #  1     0x7fbe0  3      
  movl %ecx, %r14d               #  2     0x7fbe3  3      
  leal 0x8(%r14), %ecx           #  3     0x7fbe6  4      
  pushq %r13                     #  4     0x7fbea  3      
  movl %edi, %r13d               #  5     0x7fbed  3      
  movl %ecx, %eax                #  6     0x7fbf0  2      
  sarl $0x1f, %ecx               #  7     0x7fbf2  3      
  pushq %r12                     #  8     0x7fbf5  3      
  movl %esi, %r12d               #  9     0x7fbf8  3      
  xorl %esi, %esi                #  10    0x7fbfb  2      
  pushq %rbx                     #  11    0x7fbfd  2      
  movl %r8d, %ebx                #  12    0x7fbff  3      
  xchgw %ax, %ax                 #  13    0x7fc02  3      
  subl $0x18, %esp               #  14    0x7fc05  3      
  addq %r15, %rsp                #  15    0x7fc08  3      
  movl %edx, 0x4(%rsp)           #  16    0x7fc0b  4      
  movl $0x38e38e39, %edx         #  17    0x7fc0f  5      
  imull %edx                     #  18    0x7fc14  2      
  movl $0x1, %eax                #  19    0x7fc16  5      
  sarl $0x1, %edx                #  20    0x7fc1b  2      
  subl %ecx, %edx                #  21    0x7fc1d  2      
  cmpl $0x1, %edx                #  22    0x7fc1f  3      
  nop                            #  23    0x7fc22  1      
  jle .L_7fc60                   #  24    0x7fc23  6      
  nop                            #  25    0x7fc29  1      
  nop                            #  26    0x7fc2a  1      
.L_7fc40:                        #        0x7fc2b  0      
  addl %eax, %eax                #  27    0x7fc2b  2      
  addl $0x1, %esi                #  28    0x7fc2d  3      
  cmpl %eax, %edx                #  29    0x7fc30  2      
  jg .L_7fc40                    #  30    0x7fc32  6      
  nop                            #  31    0x7fc38  1      
  nop                            #  32    0x7fc39  1      
.L_7fc60:                        #        0x7fc3a  0      
  movl %r13d, %edi               #  33    0x7fc3a  3      
  nop                            #  34    0x7fc3d  1      
  nop                            #  35    0x7fc3e  1      
  callq ._Balloc                 #  36    0x7fc3f  5      
  cmpl $0x9, 0x4(%rsp)           #  37    0x7fc44  5      
  movl %eax, %esi                #  38    0x7fc49  2      
  movl %esi, %esi                #  39    0x7fc4b  2      
  movl %ebx, 0x14(%r15,%rsi,1)   #  40    0x7fc4d  5      
  movl %esi, %esi                #  41    0x7fc52  2      
  movl $0x1, 0x10(%r15,%rsi,1)   #  42    0x7fc54  9      
  jle .L_7fd60                   #  43    0x7fc5d  6      
  nop                            #  44    0x7fc63  1      
  addl $0x9, %r12d               #  45    0x7fc64  4      
  movl $0x9, %ebx                #  46    0x7fc68  5      
  movq %r12, 0x8(%rsp)           #  47    0x7fc6d  5      
  nop                            #  48    0x7fc72  1      
  nop                            #  49    0x7fc73  1      
.L_7fcc0:                        #        0x7fc74  0      
  movl %r12d, %r12d              #  50    0x7fc74  3      
  movsbl (%r15,%r12,1), %ecx     #  51    0x7fc77  5      
  movl $0xa, %edx                #  52    0x7fc7c  5      
  movl %r13d, %edi               #  53    0x7fc81  3      
  addl $0x1, %r12d               #  54    0x7fc84  4      
  addl $0x1, %ebx                #  55    0x7fc88  3      
  subl $0x30, %ecx               #  56    0x7fc8b  3      
  nop                            #  57    0x7fc8e  1      
  callq .__multadd               #  58    0x7fc8f  5      
  cmpl %ebx, 0x4(%rsp)           #  59    0x7fc94  4      
  movl %eax, %esi                #  60    0x7fc98  2      
  jg .L_7fcc0                    #  61    0x7fc9a  6      
  movl 0x4(%rsp), %edx           #  62    0x7fca0  4      
  movl 0x8(%rsp), %eax           #  63    0x7fca4  4      
  movl %edx, %ebx                #  64    0x7fca8  2      
  leal -0x8(%rdx,%rax,1), %r12d  #  65    0x7fcaa  5      
  jmpq .L_7fd40                  #  66    0x7fcaf  5      
  nop                            #  67    0x7fcb4  1      
.L_7fd00:                        #        0x7fcb5  0      
  movl %r12d, %r12d              #  68    0x7fcb5  3      
  movsbl (%r15,%r12,1), %ecx     #  69    0x7fcb8  5      
  movl $0xa, %edx                #  70    0x7fcbd  5      
  movl %r13d, %edi               #  71    0x7fcc2  3      
  addl $0x1, %r12d               #  72    0x7fcc5  4      
  addl $0x1, %ebx                #  73    0x7fcc9  3      
  subl $0x30, %ecx               #  74    0x7fccc  3      
  nop                            #  75    0x7fccf  1      
  callq .__multadd               #  76    0x7fcd0  5      
  movl %eax, %esi                #  77    0x7fcd5  2      
  nop                            #  78    0x7fcd7  1      
  nop                            #  79    0x7fcd8  1      
.L_7fd40:                        #        0x7fcd9  0      
  cmpl %ebx, %r14d               #  80    0x7fcd9  3      
  jg .L_7fd00                    #  81    0x7fcdc  6      
  addl $0x18, %esp               #  82    0x7fce2  3      
  addq %r15, %rsp                #  83    0x7fce5  3      
  movl %esi, %eax                #  84    0x7fce8  2      
  popq %rbx                      #  85    0x7fcea  2      
  popq %r12                      #  86    0x7fcec  3      
  popq %r13                      #  87    0x7fcef  3      
  popq %r14                      #  88    0x7fcf2  3      
  popq %r11                      #  89    0x7fcf5  3      
  andl $0xffffffe0, %r11d        #  90    0x7fcf8  7      
  addq %r15, %r11                #  91    0x7fcff  3      
  jmpq %r11                      #  92    0x7fd02  3      
.L_7fd60:                        #        0x7fd05  0      
  addl $0xa, %r12d               #  93    0x7fd05  4      
  movl $0x9, %ebx                #  94    0x7fd09  5      
  jmpq .L_7fd40                  #  95    0x7fd0e  5      
  nop                            #  96    0x7fd13  1      
  nop                            #  97    0x7fd14  1      
  nop                            #  98    0x7fd15  1      
  nop                            #  99    0x7fd16  1      
  nop                            #  100   0x7fd17  1      
  nop                            #  101   0x7fd18  1      
  nop                            #  102   0x7fd19  1      
  nop                            #  103   0x7fd1a  1      
  nop                            #  104   0x7fd1b  1      
  nop                            #  105   0x7fd1c  1      
  nop                            #  106   0x7fd1d  1      
  nop                            #  107   0x7fd1e  1      
  nop                            #  108   0x7fd1f  1      
  nop                            #  109   0x7fd20  1      
  nop                            #  110   0x7fd21  1      
  nop                            #  111   0x7fd22  1      
  nop                            #  112   0x7fd23  1      
  nop                            #  113   0x7fd24  1      
  nop                            #  114   0x7fd25  1      
  nop                            #  115   0x7fd26  1      
  nop                            #  116   0x7fd27  1      
                                                          
.size __s2b, .-__s2b

