  .text
  .globl d_append_string
  .type d_append_string, @function

#! file-offset 0x54880
#! rip-offset  0x54880
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_string:                 #        0x54880  0      
  pushq %r14                      #  1     0x54880  3      
  pushq %r13                      #  2     0x54883  3      
  movl %esi, %r13d                #  3     0x54886  3      
  pushq %r12                      #  4     0x54889  3      
  pushq %rbx                      #  5     0x5488c  2      
  movl %edi, %ebx                 #  6     0x5488e  2      
  movl %r13d, %edi                #  7     0x54890  3      
  subl $0x18, %esp                #  8     0x54893  3      
  addq %r15, %rsp                 #  9     0x54896  3      
  nop                             #  10    0x54899  1      
  callq .strlen                   #  11    0x5489a  5      
  testl %eax, %eax                #  12    0x5489f  2      
  je .L_549a0                     #  13    0x548a1  6      
  leal 0x4(%rbx), %ecx            #  14    0x548a7  3      
  movl %ebx, %ebx                 #  15    0x548aa  2      
  movl 0x104(%r15,%rbx,1), %edx   #  16    0x548ac  8      
  xorl %r12d, %r12d               #  17    0x548b4  3      
  movq %rcx, 0x8(%rsp)            #  18    0x548b7  5      
  nop                             #  19    0x548bc  1      
  jmpq .L_54920                   #  20    0x548bd  5      
  nop                             #  21    0x548c2  1      
  nop                             #  22    0x548c3  1      
.L_548e0:                         #        0x548c4  0      
  movslq %edx, %rdx               #  23    0x548c4  3      
  addl $0x1, %r12d                #  24    0x548c7  4      
  addl $0x1, %r13d                #  25    0x548cb  4      
  leaq (%rbx,%rdx,1), %rdx        #  26    0x548cf  4      
  cmpl %r12d, %eax                #  27    0x548d3  3      
  movl %ebx, %ebx                 #  28    0x548d6  2      
  movl %ecx, 0x104(%r15,%rbx,1)   #  29    0x548d8  8      
  nop                             #  30    0x548e0  1      
  movl %ebx, %ebx                 #  31    0x548e1  2      
  movb %r14b, 0x108(%r15,%rbx,1)  #  32    0x548e3  8      
  movl %edx, %edx                 #  33    0x548eb  2      
  movb %r14b, 0x4(%r15,%rdx,1)    #  34    0x548ed  5      
  jbe .L_549a0                    #  35    0x548f2  6      
  movl %ecx, %edx                 #  36    0x548f8  2      
  nop                             #  37    0x548fa  1      
.L_54920:                         #        0x548fb  0      
  movl %r13d, %ecx                #  38    0x548fb  3      
  cmpl $0xff, %edx                #  39    0x548fe  3      
  movl %ecx, %ecx                 #  40    0x54901  2      
  movzbl (%r15,%rcx,1), %r14d     #  41    0x54903  5      
  leal 0x1(%rdx), %ecx            #  42    0x54908  3      
  jne .L_548e0                    #  43    0x5490b  6      
  movl %ebx, %ebx                 #  44    0x54911  2      
  movl 0x10c(%r15,%rbx,1), %ecx   #  45    0x54913  8      
  nop                             #  46    0x5491b  1      
  movl %ebx, %ebx                 #  47    0x5491c  2      
  movl 0x110(%r15,%rbx,1), %edx   #  48    0x5491e  8      
  movl %eax, (%rsp)               #  49    0x54926  3      
  movl %ebx, %ebx                 #  50    0x54929  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  51    0x5492b  9      
  nop                             #  52    0x54934  1      
  movl %ebx, %ebx                 #  53    0x54935  2      
  movl 0x104(%r15,%rbx,1), %esi   #  54    0x54937  8      
  movl 0x8(%rsp), %edi            #  55    0x5493f  4      
  nop                             #  56    0x54943  1      
  andl $0xffffffe0, %ecx          #  57    0x54944  6      
  addq %r15, %rcx                 #  58    0x5494a  3      
  callq %rcx                      #  59    0x5494d  2      
  movl %ebx, %ebx                 #  60    0x5494f  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  61    0x54951  12     
  movl $0x1, %ecx                 #  62    0x5495d  5      
  xorl %edx, %edx                 #  63    0x54962  2      
  movl (%rsp), %eax               #  64    0x54964  3      
  jmpq .L_548e0                   #  65    0x54967  5      
  nop                             #  66    0x5496c  1      
.L_549a0:                         #        0x5496d  0      
  addl $0x18, %esp                #  67    0x5496d  3      
  addq %r15, %rsp                 #  68    0x54970  3      
  popq %rbx                       #  69    0x54973  2      
  popq %r12                       #  70    0x54975  3      
  popq %r13                       #  71    0x54978  3      
  popq %r14                       #  72    0x5497b  3      
  popq %r11                       #  73    0x5497e  3      
  andl $0xffffffe0, %r11d         #  74    0x54981  7      
  addq %r15, %r11                 #  75    0x54988  3      
  jmpq %r11                       #  76    0x5498b  3      
  nop                             #  77    0x5498e  1      
                                                           
.size d_append_string, .-d_append_string

