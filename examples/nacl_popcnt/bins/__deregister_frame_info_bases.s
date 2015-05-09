  .text
  .globl __deregister_frame_info_bases
  .type __deregister_frame_info_bases, @function

#! file-offset 0x601c0
#! rip-offset  0x601c0
#! capacity    512 bytes

# Text                           #  Line  RIP      Bytes  
.__deregister_frame_info_bases:  #        0x601c0  0      
  movl %edi, %edi                #  1     0x601c0  2      
  pushq %rbx                     #  2     0x601c2  2      
  testq %rdi, %rdi               #  3     0x601c4  3      
  jne .L_60200                   #  4     0x601c7  6      
  nop                            #  5     0x601cd  1      
  nop                            #  6     0x601ce  1      
.L_601e0:                        #        0x601cf  0      
  popq %rbx                      #  7     0x601cf  2      
  popq %r11                      #  8     0x601d1  3      
  xorl %eax, %eax                #  9     0x601d4  2      
  andl $0xffffffe0, %r11d        #  10    0x601d6  7      
  addq %r15, %r11                #  11    0x601dd  3      
  jmpq %r11                      #  12    0x601e0  3      
  xchgw %ax, %ax                 #  13    0x601e3  3      
  nop                            #  14    0x601e6  1      
.L_60200:                        #        0x601e7  0      
  movl %edi, %edi                #  15    0x601e7  2      
  movl (%r15,%rdi,1), %r10d      #  16    0x601e9  4      
  testl %r10d, %r10d             #  17    0x601ed  3      
  je .L_601e0                    #  18    0x601f0  6      
  movl 0xffd665c(%rip), %ebx     #  19    0x601f6  6      
  testq %rbx, %rbx               #  20    0x601fc  3      
  je .L_60280                    #  21    0x601ff  6      
  movl %ebx, %ebx                #  22    0x60205  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  23    0x60207  5      
  nop                            #  24    0x6020c  1      
  leal 0xffd6632(%rip), %eax     #  25    0x6020d  6      
  jne .L_60260                   #  26    0x60213  6      
  jmpq .L_60320                  #  27    0x60219  5      
  nop                            #  28    0x6021e  1      
  nop                            #  29    0x6021f  1      
.L_60240:                        #        0x60220  0      
  movl %ebx, %ebx                #  30    0x60220  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  31    0x60222  5      
  je .L_60320                    #  32    0x60227  6      
  nop                            #  33    0x6022d  1      
  nop                            #  34    0x6022e  1      
.L_60260:                        #        0x6022f  0      
  leal 0x14(%rbx), %eax          #  35    0x6022f  3      
  movl %ebx, %ebx                #  36    0x60232  2      
  movl 0x14(%r15,%rbx,1), %ebx   #  37    0x60234  5      
  testq %rbx, %rbx               #  38    0x60239  3      
  jne .L_60240                   #  39    0x6023c  6      
  xchgw %ax, %ax                 #  40    0x60242  3      
  nop                            #  41    0x60245  1      
.L_60280:                        #        0x60246  0      
  movl 0xffd6610(%rip), %ebx     #  42    0x60246  6      
  testq %rbx, %rbx               #  43    0x6024c  3      
  je .L_603a0                    #  44    0x6024f  6      
  leal 0xffd65c7(%rip), %edx     #  45    0x60255  6      
  jmpq .L_602e0                  #  46    0x6025b  5      
  nop                            #  47    0x60260  1      
.L_602a0:                        #        0x60261  0      
  movl %ebx, %ebx                #  48    0x60261  2      
  movl 0xc(%r15,%rbx,1), %eax    #  49    0x60263  5      
  movl %eax, %eax                #  50    0x60268  2      
  cmpl %edi, (%r15,%rax,1)       #  51    0x6026a  4      
  je .L_60360                    #  52    0x6026e  6      
  nop                            #  53    0x60274  1      
.L_602c0:                        #        0x60275  0      
  movl %ebx, %ebx                #  54    0x60275  2      
  movl 0x14(%r15,%rbx,1), %eax   #  55    0x60277  5      
  testq %rax, %rax               #  56    0x6027c  3      
  je .L_603a0                    #  57    0x6027f  6      
  leal 0x14(%rbx), %edx          #  58    0x60285  3      
  movq %rax, %rbx                #  59    0x60288  3      
  nop                            #  60    0x6028b  1      
.L_602e0:                        #        0x6028c  0      
  movl %ebx, %ebx                #  61    0x6028c  2      
  testb $0x1, 0x10(%r15,%rbx,1)  #  62    0x6028e  6      
  jne .L_602a0                   #  63    0x60294  6      
  movl %ebx, %ebx                #  64    0x6029a  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  65    0x6029c  5      
  jne .L_602c0                   #  66    0x602a1  6      
  movl %ebx, %ebx                #  67    0x602a7  2      
  movl 0x14(%r15,%rbx,1), %eax   #  68    0x602a9  5      
  movl %edx, %edx                #  69    0x602ae  2      
  movl %eax, (%r15,%rdx,1)       #  70    0x602b0  4      
  jmpq .L_60340                  #  71    0x602b4  5      
  nop                            #  72    0x602b9  1      
  nop                            #  73    0x602ba  1      
.L_60320:                        #        0x602bb  0      
  movl %ebx, %ebx                #  74    0x602bb  2      
  movl 0x14(%r15,%rbx,1), %edx   #  75    0x602bd  5      
  movl %eax, %eax                #  76    0x602c2  2      
  movl %edx, (%r15,%rax,1)       #  77    0x602c4  4      
  nop                            #  78    0x602c8  1      
  nop                            #  79    0x602c9  1      
.L_60340:                        #        0x602ca  0      
  movq %rbx, %rax                #  80    0x602ca  3      
  popq %rbx                      #  81    0x602cd  2      
  popq %r11                      #  82    0x602cf  3      
  andl $0xffffffe0, %r11d        #  83    0x602d2  7      
  addq %r15, %r11                #  84    0x602d9  3      
  jmpq %r11                      #  85    0x602dc  3      
  nop                            #  86    0x602df  1      
  nop                            #  87    0x602e0  1      
.L_60360:                        #        0x602e1  0      
  movl %ebx, %ebx                #  88    0x602e1  2      
  movl 0x14(%r15,%rbx,1), %eax   #  89    0x602e3  5      
  movl %edx, %edx                #  90    0x602e8  2      
  movl %eax, (%r15,%rdx,1)       #  91    0x602ea  4      
  movl %ebx, %ebx                #  92    0x602ee  2      
  movl 0xc(%r15,%rbx,1), %edi    #  93    0x602f0  5      
  nop                            #  94    0x602f5  1      
  callq .free                    #  95    0x602f6  5      
  jmpq .L_60340                  #  96    0x602fb  5      
  nop                            #  97    0x60300  1      
  nop                            #  98    0x60301  1      
.L_603a0:                        #        0x60302  0      
  nop                            #  99    0x60302  1      
  nop                            #  100   0x60303  1      
  callq .abort                   #  101   0x60304  5      
                                                          
.size __deregister_frame_info_bases, .-__deregister_frame_info_bases

