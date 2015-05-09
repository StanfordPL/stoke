  .text
  .globl d_append_buffer
  .type d_append_buffer, @function

#! file-offset 0x54740
#! rip-offset  0x54740
#! capacity    288 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_buffer:                 #        0x54740  0      
  pushq %r14                      #  1     0x54740  3      
  movl %edx, %eax                 #  2     0x54743  2      
  pushq %r13                      #  3     0x54745  3      
  movl %esi, %r13d                #  4     0x54748  3      
  pushq %r12                      #  5     0x5474b  3      
  pushq %rbx                      #  6     0x5474e  2      
  movl %edi, %ebx                 #  7     0x54750  2      
  subl $0x18, %esp                #  8     0x54752  3      
  addq %r15, %rsp                 #  9     0x54755  3      
  testl %edx, %edx                #  10    0x54758  2      
  je .L_54840                     #  11    0x5475a  6      
  leal 0x4(%rbx), %ecx            #  12    0x54760  3      
  nop                             #  13    0x54763  1      
  movl %ebx, %ebx                 #  14    0x54764  2      
  movl 0x104(%r15,%rbx,1), %edx   #  15    0x54766  8      
  xorl %r12d, %r12d               #  16    0x5476e  3      
  movq %rcx, 0x8(%rsp)            #  17    0x54771  5      
  jmpq .L_547c0                   #  18    0x54776  5      
  nop                             #  19    0x5477b  1      
.L_54780:                         #        0x5477c  0      
  movslq %edx, %rdx               #  20    0x5477c  3      
  addl $0x1, %r12d                #  21    0x5477f  4      
  addl $0x1, %r13d                #  22    0x54783  4      
  leaq (%rbx,%rdx,1), %rdx        #  23    0x54787  4      
  cmpl %r12d, %eax                #  24    0x5478b  3      
  movl %ebx, %ebx                 #  25    0x5478e  2      
  movl %ecx, 0x104(%r15,%rbx,1)   #  26    0x54790  8      
  nop                             #  27    0x54798  1      
  movl %ebx, %ebx                 #  28    0x54799  2      
  movb %r14b, 0x108(%r15,%rbx,1)  #  29    0x5479b  8      
  movl %edx, %edx                 #  30    0x547a3  2      
  movb %r14b, 0x4(%r15,%rdx,1)    #  31    0x547a5  5      
  jbe .L_54840                    #  32    0x547aa  6      
  movl %ecx, %edx                 #  33    0x547b0  2      
  nop                             #  34    0x547b2  1      
.L_547c0:                         #        0x547b3  0      
  movl %r13d, %ecx                #  35    0x547b3  3      
  cmpl $0xff, %edx                #  36    0x547b6  3      
  movl %ecx, %ecx                 #  37    0x547b9  2      
  movzbl (%r15,%rcx,1), %r14d     #  38    0x547bb  5      
  leal 0x1(%rdx), %ecx            #  39    0x547c0  3      
  jne .L_54780                    #  40    0x547c3  6      
  movl %ebx, %ebx                 #  41    0x547c9  2      
  movl 0x10c(%r15,%rbx,1), %ecx   #  42    0x547cb  8      
  nop                             #  43    0x547d3  1      
  movl %ebx, %ebx                 #  44    0x547d4  2      
  movl 0x110(%r15,%rbx,1), %edx   #  45    0x547d6  8      
  movl %eax, (%rsp)               #  46    0x547de  3      
  movl %ebx, %ebx                 #  47    0x547e1  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  48    0x547e3  9      
  nop                             #  49    0x547ec  1      
  movl %ebx, %ebx                 #  50    0x547ed  2      
  movl 0x104(%r15,%rbx,1), %esi   #  51    0x547ef  8      
  movl 0x8(%rsp), %edi            #  52    0x547f7  4      
  nop                             #  53    0x547fb  1      
  andl $0xffffffe0, %ecx          #  54    0x547fc  6      
  addq %r15, %rcx                 #  55    0x54802  3      
  callq %rcx                      #  56    0x54805  2      
  movl %ebx, %ebx                 #  57    0x54807  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  58    0x54809  12     
  movl $0x1, %ecx                 #  59    0x54815  5      
  xorl %edx, %edx                 #  60    0x5481a  2      
  movl (%rsp), %eax               #  61    0x5481c  3      
  jmpq .L_54780                   #  62    0x5481f  5      
  nop                             #  63    0x54824  1      
.L_54840:                         #        0x54825  0      
  addl $0x18, %esp                #  64    0x54825  3      
  addq %r15, %rsp                 #  65    0x54828  3      
  popq %rbx                       #  66    0x5482b  2      
  popq %r12                       #  67    0x5482d  3      
  popq %r13                       #  68    0x54830  3      
  popq %r14                       #  69    0x54833  3      
  popq %r11                       #  70    0x54836  3      
  andl $0xffffffe0, %r11d         #  71    0x54839  7      
  addq %r15, %r11                 #  72    0x54840  3      
  jmpq %r11                       #  73    0x54843  3      
  nop                             #  74    0x54846  1      
                                                           
.size d_append_buffer, .-d_append_buffer

