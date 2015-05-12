  .text
  .globl d_append_buffer
  .type d_append_buffer, @function

#! file-offset 0x54760
#! rip-offset  0x54760
#! capacity    288 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_buffer:                 #        0x54760  0      
  pushq %r14                      #  1     0x54760  3      
  movl %edx, %eax                 #  2     0x54763  2      
  pushq %r13                      #  3     0x54765  3      
  movl %esi, %r13d                #  4     0x54768  3      
  pushq %r12                      #  5     0x5476b  3      
  pushq %rbx                      #  6     0x5476e  2      
  movl %edi, %ebx                 #  7     0x54770  2      
  subl $0x18, %esp                #  8     0x54772  3      
  addq %r15, %rsp                 #  9     0x54775  3      
  testl %edx, %edx                #  10    0x54778  2      
  je .L_54860                     #  11    0x5477a  6      
  leal 0x4(%rbx), %ecx            #  12    0x54780  3      
  nop                             #  13    0x54783  1      
  movl %ebx, %ebx                 #  14    0x54784  2      
  movl 0x104(%r15,%rbx,1), %edx   #  15    0x54786  8      
  xorl %r12d, %r12d               #  16    0x5478e  3      
  movq %rcx, 0x8(%rsp)            #  17    0x54791  5      
  jmpq .L_547e0                   #  18    0x54796  5      
  nop                             #  19    0x5479b  1      
.L_547a0:                         #        0x5479c  0      
  movslq %edx, %rdx               #  20    0x5479c  3      
  addl $0x1, %r12d                #  21    0x5479f  4      
  addl $0x1, %r13d                #  22    0x547a3  4      
  leaq (%rbx,%rdx,1), %rdx        #  23    0x547a7  4      
  cmpl %r12d, %eax                #  24    0x547ab  3      
  movl %ebx, %ebx                 #  25    0x547ae  2      
  movl %ecx, 0x104(%r15,%rbx,1)   #  26    0x547b0  8      
  nop                             #  27    0x547b8  1      
  movl %ebx, %ebx                 #  28    0x547b9  2      
  movb %r14b, 0x108(%r15,%rbx,1)  #  29    0x547bb  8      
  movl %edx, %edx                 #  30    0x547c3  2      
  movb %r14b, 0x4(%r15,%rdx,1)    #  31    0x547c5  5      
  jbe .L_54860                    #  32    0x547ca  6      
  movl %ecx, %edx                 #  33    0x547d0  2      
  nop                             #  34    0x547d2  1      
.L_547e0:                         #        0x547d3  0      
  movl %r13d, %ecx                #  35    0x547d3  3      
  cmpl $0xff, %edx                #  36    0x547d6  3      
  movl %ecx, %ecx                 #  37    0x547d9  2      
  movzbl (%r15,%rcx,1), %r14d     #  38    0x547db  5      
  leal 0x1(%rdx), %ecx            #  39    0x547e0  3      
  jne .L_547a0                    #  40    0x547e3  6      
  movl %ebx, %ebx                 #  41    0x547e9  2      
  movl 0x10c(%r15,%rbx,1), %ecx   #  42    0x547eb  8      
  nop                             #  43    0x547f3  1      
  movl %ebx, %ebx                 #  44    0x547f4  2      
  movl 0x110(%r15,%rbx,1), %edx   #  45    0x547f6  8      
  movl %eax, (%rsp)               #  46    0x547fe  3      
  movl %ebx, %ebx                 #  47    0x54801  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  48    0x54803  9      
  nop                             #  49    0x5480c  1      
  movl %ebx, %ebx                 #  50    0x5480d  2      
  movl 0x104(%r15,%rbx,1), %esi   #  51    0x5480f  8      
  movl 0x8(%rsp), %edi            #  52    0x54817  4      
  nop                             #  53    0x5481b  1      
  andl $0xffffffe0, %ecx          #  54    0x5481c  6      
  addq %r15, %rcx                 #  55    0x54822  3      
  callq %rcx                      #  56    0x54825  2      
  movl %ebx, %ebx                 #  57    0x54827  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  58    0x54829  12     
  movl $0x1, %ecx                 #  59    0x54835  5      
  xorl %edx, %edx                 #  60    0x5483a  2      
  movl (%rsp), %eax               #  61    0x5483c  3      
  jmpq .L_547a0                   #  62    0x5483f  5      
  nop                             #  63    0x54844  1      
.L_54860:                         #        0x54845  0      
  addl $0x18, %esp                #  64    0x54845  3      
  addq %r15, %rsp                 #  65    0x54848  3      
  popq %rbx                       #  66    0x5484b  2      
  popq %r12                       #  67    0x5484d  3      
  popq %r13                       #  68    0x54850  3      
  popq %r14                       #  69    0x54853  3      
  popq %r11                       #  70    0x54856  3      
  andl $0xffffffe0, %r11d         #  71    0x54859  7      
  addq %r15, %r11                 #  72    0x54860  3      
  jmpq %r11                       #  73    0x54863  3      
  nop                             #  74    0x54866  1      
                                                           
.size d_append_buffer, .-d_append_buffer

