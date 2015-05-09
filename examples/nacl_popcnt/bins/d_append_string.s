  .text
  .globl d_append_string
  .type d_append_string, @function

#! file-offset 0x54860
#! rip-offset  0x54860
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_string:                 #        0x54860  0      
  pushq %r14                      #  1     0x54860  3      
  pushq %r13                      #  2     0x54863  3      
  movl %esi, %r13d                #  3     0x54866  3      
  pushq %r12                      #  4     0x54869  3      
  pushq %rbx                      #  5     0x5486c  2      
  movl %edi, %ebx                 #  6     0x5486e  2      
  movl %r13d, %edi                #  7     0x54870  3      
  subl $0x18, %esp                #  8     0x54873  3      
  addq %r15, %rsp                 #  9     0x54876  3      
  nop                             #  10    0x54879  1      
  callq .strlen                   #  11    0x5487a  5      
  testl %eax, %eax                #  12    0x5487f  2      
  je .L_54980                     #  13    0x54881  6      
  leal 0x4(%rbx), %ecx            #  14    0x54887  3      
  movl %ebx, %ebx                 #  15    0x5488a  2      
  movl 0x104(%r15,%rbx,1), %edx   #  16    0x5488c  8      
  xorl %r12d, %r12d               #  17    0x54894  3      
  movq %rcx, 0x8(%rsp)            #  18    0x54897  5      
  nop                             #  19    0x5489c  1      
  jmpq .L_54900                   #  20    0x5489d  5      
  nop                             #  21    0x548a2  1      
  nop                             #  22    0x548a3  1      
.L_548c0:                         #        0x548a4  0      
  movslq %edx, %rdx               #  23    0x548a4  3      
  addl $0x1, %r12d                #  24    0x548a7  4      
  addl $0x1, %r13d                #  25    0x548ab  4      
  leaq (%rbx,%rdx,1), %rdx        #  26    0x548af  4      
  cmpl %r12d, %eax                #  27    0x548b3  3      
  movl %ebx, %ebx                 #  28    0x548b6  2      
  movl %ecx, 0x104(%r15,%rbx,1)   #  29    0x548b8  8      
  nop                             #  30    0x548c0  1      
  movl %ebx, %ebx                 #  31    0x548c1  2      
  movb %r14b, 0x108(%r15,%rbx,1)  #  32    0x548c3  8      
  movl %edx, %edx                 #  33    0x548cb  2      
  movb %r14b, 0x4(%r15,%rdx,1)    #  34    0x548cd  5      
  jbe .L_54980                    #  35    0x548d2  6      
  movl %ecx, %edx                 #  36    0x548d8  2      
  nop                             #  37    0x548da  1      
.L_54900:                         #        0x548db  0      
  movl %r13d, %ecx                #  38    0x548db  3      
  cmpl $0xff, %edx                #  39    0x548de  3      
  movl %ecx, %ecx                 #  40    0x548e1  2      
  movzbl (%r15,%rcx,1), %r14d     #  41    0x548e3  5      
  leal 0x1(%rdx), %ecx            #  42    0x548e8  3      
  jne .L_548c0                    #  43    0x548eb  6      
  movl %ebx, %ebx                 #  44    0x548f1  2      
  movl 0x10c(%r15,%rbx,1), %ecx   #  45    0x548f3  8      
  nop                             #  46    0x548fb  1      
  movl %ebx, %ebx                 #  47    0x548fc  2      
  movl 0x110(%r15,%rbx,1), %edx   #  48    0x548fe  8      
  movl %eax, (%rsp)               #  49    0x54906  3      
  movl %ebx, %ebx                 #  50    0x54909  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  51    0x5490b  9      
  nop                             #  52    0x54914  1      
  movl %ebx, %ebx                 #  53    0x54915  2      
  movl 0x104(%r15,%rbx,1), %esi   #  54    0x54917  8      
  movl 0x8(%rsp), %edi            #  55    0x5491f  4      
  nop                             #  56    0x54923  1      
  andl $0xffffffe0, %ecx          #  57    0x54924  6      
  addq %r15, %rcx                 #  58    0x5492a  3      
  callq %rcx                      #  59    0x5492d  2      
  movl %ebx, %ebx                 #  60    0x5492f  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  61    0x54931  12     
  movl $0x1, %ecx                 #  62    0x5493d  5      
  xorl %edx, %edx                 #  63    0x54942  2      
  movl (%rsp), %eax               #  64    0x54944  3      
  jmpq .L_548c0                   #  65    0x54947  5      
  nop                             #  66    0x5494c  1      
.L_54980:                         #        0x5494d  0      
  addl $0x18, %esp                #  67    0x5494d  3      
  addq %r15, %rsp                 #  68    0x54950  3      
  popq %rbx                       #  69    0x54953  2      
  popq %r12                       #  70    0x54955  3      
  popq %r13                       #  71    0x54958  3      
  popq %r14                       #  72    0x5495b  3      
  popq %r11                       #  73    0x5495e  3      
  andl $0xffffffe0, %r11d         #  74    0x54961  7      
  addq %r15, %r11                 #  75    0x54968  3      
  jmpq %r11                       #  76    0x5496b  3      
  nop                             #  77    0x5496e  1      
                                                           
.size d_append_string, .-d_append_string

