  .text
  .globl d_append_string
  .type d_append_string, @function

#! file-offset 0x54900
#! rip-offset  0x54900
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_string:                 #        0x54900  0      
  pushq %r14                      #  1     0x54900  3      
  pushq %r13                      #  2     0x54903  3      
  movl %esi, %r13d                #  3     0x54906  3      
  pushq %r12                      #  4     0x54909  3      
  pushq %rbx                      #  5     0x5490c  2      
  movl %edi, %ebx                 #  6     0x5490e  2      
  movl %r13d, %edi                #  7     0x54910  3      
  subl $0x18, %esp                #  8     0x54913  3      
  addq %r15, %rsp                 #  9     0x54916  3      
  nop                             #  10    0x54919  1      
  callq .strlen                   #  11    0x5491a  5      
  testl %eax, %eax                #  12    0x5491f  2      
  je .L_54a20                     #  13    0x54921  6      
  leal 0x4(%rbx), %ecx            #  14    0x54927  3      
  movl %ebx, %ebx                 #  15    0x5492a  2      
  movl 0x104(%r15,%rbx,1), %edx   #  16    0x5492c  8      
  xorl %r12d, %r12d               #  17    0x54934  3      
  movq %rcx, 0x8(%rsp)            #  18    0x54937  5      
  nop                             #  19    0x5493c  1      
  jmpq .L_549a0                   #  20    0x5493d  5      
  nop                             #  21    0x54942  1      
  nop                             #  22    0x54943  1      
.L_54960:                         #        0x54944  0      
  movslq %edx, %rdx               #  23    0x54944  3      
  addl $0x1, %r12d                #  24    0x54947  4      
  addl $0x1, %r13d                #  25    0x5494b  4      
  leaq (%rbx,%rdx,1), %rdx        #  26    0x5494f  4      
  cmpl %r12d, %eax                #  27    0x54953  3      
  movl %ebx, %ebx                 #  28    0x54956  2      
  movl %ecx, 0x104(%r15,%rbx,1)   #  29    0x54958  8      
  nop                             #  30    0x54960  1      
  movl %ebx, %ebx                 #  31    0x54961  2      
  movb %r14b, 0x108(%r15,%rbx,1)  #  32    0x54963  8      
  movl %edx, %edx                 #  33    0x5496b  2      
  movb %r14b, 0x4(%r15,%rdx,1)    #  34    0x5496d  5      
  jbe .L_54a20                    #  35    0x54972  6      
  movl %ecx, %edx                 #  36    0x54978  2      
  nop                             #  37    0x5497a  1      
.L_549a0:                         #        0x5497b  0      
  movl %r13d, %ecx                #  38    0x5497b  3      
  cmpl $0xff, %edx                #  39    0x5497e  3      
  movl %ecx, %ecx                 #  40    0x54981  2      
  movzbl (%r15,%rcx,1), %r14d     #  41    0x54983  5      
  leal 0x1(%rdx), %ecx            #  42    0x54988  3      
  jne .L_54960                    #  43    0x5498b  6      
  movl %ebx, %ebx                 #  44    0x54991  2      
  movl 0x10c(%r15,%rbx,1), %ecx   #  45    0x54993  8      
  nop                             #  46    0x5499b  1      
  movl %ebx, %ebx                 #  47    0x5499c  2      
  movl 0x110(%r15,%rbx,1), %edx   #  48    0x5499e  8      
  movl %eax, (%rsp)               #  49    0x549a6  3      
  movl %ebx, %ebx                 #  50    0x549a9  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  51    0x549ab  9      
  nop                             #  52    0x549b4  1      
  movl %ebx, %ebx                 #  53    0x549b5  2      
  movl 0x104(%r15,%rbx,1), %esi   #  54    0x549b7  8      
  movl 0x8(%rsp), %edi            #  55    0x549bf  4      
  nop                             #  56    0x549c3  1      
  andl $0xffffffe0, %ecx          #  57    0x549c4  6      
  addq %r15, %rcx                 #  58    0x549ca  3      
  callq %rcx                      #  59    0x549cd  2      
  movl %ebx, %ebx                 #  60    0x549cf  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  61    0x549d1  12     
  movl $0x1, %ecx                 #  62    0x549dd  5      
  xorl %edx, %edx                 #  63    0x549e2  2      
  movl (%rsp), %eax               #  64    0x549e4  3      
  jmpq .L_54960                   #  65    0x549e7  5      
  nop                             #  66    0x549ec  1      
.L_54a20:                         #        0x549ed  0      
  addl $0x18, %esp                #  67    0x549ed  3      
  addq %r15, %rsp                 #  68    0x549f0  3      
  popq %rbx                       #  69    0x549f3  2      
  popq %r12                       #  70    0x549f5  3      
  popq %r13                       #  71    0x549f8  3      
  popq %r14                       #  72    0x549fb  3      
  popq %r11                       #  73    0x549fe  3      
  andl $0xffffffe0, %r11d         #  74    0x54a01  7      
  addq %r15, %r11                 #  75    0x54a08  3      
  jmpq %r11                       #  76    0x54a0b  3      
  nop                             #  77    0x54a0e  1      
                                                           
.size d_append_string, .-d_append_string

