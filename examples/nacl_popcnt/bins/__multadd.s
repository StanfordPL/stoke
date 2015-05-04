  .text
  .globl __multadd
  .type __multadd, @function

#! file-offset 0x7f8e0
#! rip-offset  0x7f8e0
#! capacity    416 bytes

# Text                           #  Line  RIP      Bytes  
.__multadd:                      #        0x7f8e0  0      
  pushq %r14                     #  1     0x7f8e0  3      
  movl %edi, %r14d               #  2     0x7f8e3  3      
  pushq %r13                     #  3     0x7f8e6  3      
  movl %esi, %r13d               #  4     0x7f8e9  3      
  xorl %esi, %esi                #  5     0x7f8ec  2      
  leal 0x14(%r13), %eax          #  6     0x7f8ee  4      
  pushq %r12                     #  7     0x7f8f2  3      
  pushq %rbx                     #  8     0x7f8f5  2      
  subl $0x18, %esp               #  9     0x7f8f7  3      
  addq %r15, %rsp                #  10    0x7f8fa  3      
  nop                            #  11    0x7f8fd  1      
  movl %r13d, %r13d              #  12    0x7f8fe  3      
  movl 0x10(%r15,%r13,1), %r12d  #  13    0x7f901  5      
  nop                            #  14    0x7f906  1      
  nop                            #  15    0x7f907  1      
.L_7f920:                        #        0x7f908  0      
  movl %eax, %eax                #  16    0x7f908  2      
  movl (%r15,%rax,1), %ebx       #  17    0x7f90a  4      
  addl $0x1, %esi                #  18    0x7f90e  3      
  movzwl %bx, %edi               #  19    0x7f911  3      
  shrl $0x10, %ebx               #  20    0x7f914  3      
  imull %edx, %edi               #  21    0x7f917  3      
  imull %edx, %ebx               #  22    0x7f91a  3      
  leal (%rcx,%rdi,1), %edi       #  23    0x7f91d  3      
  movl %edi, %r8d                #  24    0x7f920  3      
  nop                            #  25    0x7f923  1      
  andl $0xffff, %edi             #  26    0x7f924  6      
  shrl $0x10, %r8d               #  27    0x7f92a  4      
  addl %ebx, %r8d                #  28    0x7f92e  3      
  movl %r8d, %ebx                #  29    0x7f931  3      
  shll $0x10, %r8d               #  30    0x7f934  4      
  leal (%r8,%rdi,1), %edi        #  31    0x7f938  4      
  shrl $0x10, %ebx               #  32    0x7f93c  3      
  movl %ebx, %ecx                #  33    0x7f93f  2      
  nop                            #  34    0x7f941  1      
  movl %eax, %eax                #  35    0x7f942  2      
  movl %edi, (%r15,%rax,1)       #  36    0x7f944  4      
  addl $0x4, %eax                #  37    0x7f948  3      
  cmpl %esi, %r12d               #  38    0x7f94b  3      
  jg .L_7f920                    #  39    0x7f94e  6      
  testl %ebx, %ebx               #  40    0x7f954  2      
  je .L_7f9c0                    #  41    0x7f956  6      
  movl %r13d, %r13d              #  42    0x7f95c  3      
  cmpl 0x8(%r15,%r13,1), %r12d   #  43    0x7f95f  5      
  jge .L_7f9e0                   #  44    0x7f964  6      
  nop                            #  45    0x7f96a  1      
.L_7f980:                        #        0x7f96b  0      
  leal 0x10(,%r12,4), %eax       #  46    0x7f96b  8      
  addl $0x1, %r12d               #  47    0x7f973  4      
  movl %r13d, %r13d              #  48    0x7f977  3      
  movl %r12d, 0x10(%r15,%r13,1)  #  49    0x7f97a  5      
  cltq                           #  50    0x7f97f  2      
  leaq (%r13,%rax,1), %rax       #  51    0x7f981  5      
  nop                            #  52    0x7f986  1      
  movl %eax, %eax                #  53    0x7f987  2      
  movl %ebx, 0x4(%r15,%rax,1)    #  54    0x7f989  5      
  nop                            #  55    0x7f98e  1      
  nop                            #  56    0x7f98f  1      
.L_7f9c0:                        #        0x7f990  0      
  addl $0x18, %esp               #  57    0x7f990  3      
  addq %r15, %rsp                #  58    0x7f993  3      
  movl %r13d, %eax               #  59    0x7f996  3      
  popq %rbx                      #  60    0x7f999  2      
  popq %r12                      #  61    0x7f99b  3      
  popq %r13                      #  62    0x7f99e  3      
  popq %r14                      #  63    0x7f9a1  3      
  popq %r11                      #  64    0x7f9a4  3      
  andl $0xffffffe0, %r11d        #  65    0x7f9a7  7      
  addq %r15, %r11                #  66    0x7f9ae  3      
  jmpq %r11                      #  67    0x7f9b1  3      
  nop                            #  68    0x7f9b4  1      
.L_7f9e0:                        #        0x7f9b5  0      
  movl %r13d, %r13d              #  69    0x7f9b5  3      
  movl 0x4(%r15,%r13,1), %esi    #  70    0x7f9b8  5      
  movl %r14d, %edi               #  71    0x7f9bd  3      
  addl $0x1, %esi                #  72    0x7f9c0  3      
  nop                            #  73    0x7f9c3  1      
  callq ._Balloc                 #  74    0x7f9c4  5      
  movl %r13d, %r13d              #  75    0x7f9c9  3      
  movl 0x10(%r15,%r13,1), %edx   #  76    0x7f9cc  5      
  movl %eax, %ecx                #  77    0x7f9d1  2      
  leal 0xc(%r13), %esi           #  78    0x7f9d3  4      
  leal 0xc(%rcx), %edi           #  79    0x7f9d7  3      
  movq %rcx, 0x8(%rsp)           #  80    0x7f9da  5      
  leal 0x8(,%rdx,4), %edx        #  81    0x7f9df  7      
  nop                            #  82    0x7f9e6  1      
  nop                            #  83    0x7f9e7  1      
  nop                            #  84    0x7f9e8  1      
  callq .memcpy                  #  85    0x7f9e9  5      
  movl %r13d, %r13d              #  86    0x7f9ee  3      
  movl 0x4(%r15,%r13,1), %eax    #  87    0x7f9f1  5      
  movq 0x8(%rsp), %rcx           #  88    0x7f9f6  5      
  shll $0x2, %eax                #  89    0x7f9fb  3      
  movl %r14d, %r14d              #  90    0x7f9fe  3      
  addl 0x4c(%r15,%r14,1), %eax   #  91    0x7fa01  5      
  movl %eax, %eax                #  92    0x7fa06  2      
  movl (%r15,%rax,1), %edx       #  93    0x7fa08  4      
  xchgw %ax, %ax                 #  94    0x7fa0c  3      
  movl %r13d, %r13d              #  95    0x7fa0f  3      
  movl %edx, (%r15,%r13,1)       #  96    0x7fa12  4      
  movl %eax, %eax                #  97    0x7fa16  2      
  movl %r13d, (%r15,%rax,1)      #  98    0x7fa18  4      
  movq %rcx, %r13                #  99    0x7fa1c  3      
  jmpq .L_7f980                  #  100   0x7fa1f  5      
  nop                            #  101   0x7fa24  1      
                                                          
.size __multadd, .-__multadd

