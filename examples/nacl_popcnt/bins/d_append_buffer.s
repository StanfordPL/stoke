  .text
  .globl d_append_buffer
  .type d_append_buffer, @function

#! file-offset 0x547e0
#! rip-offset  0x547e0
#! capacity    288 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_buffer:                 #        0x547e0  0      
  pushq %r14                      #  1     0x547e0  3      
  movl %edx, %eax                 #  2     0x547e3  2      
  pushq %r13                      #  3     0x547e5  3      
  movl %esi, %r13d                #  4     0x547e8  3      
  pushq %r12                      #  5     0x547eb  3      
  pushq %rbx                      #  6     0x547ee  2      
  movl %edi, %ebx                 #  7     0x547f0  2      
  subl $0x18, %esp                #  8     0x547f2  3      
  addq %r15, %rsp                 #  9     0x547f5  3      
  testl %edx, %edx                #  10    0x547f8  2      
  je .L_548e0                     #  11    0x547fa  6      
  leal 0x4(%rbx), %ecx            #  12    0x54800  3      
  nop                             #  13    0x54803  1      
  movl %ebx, %ebx                 #  14    0x54804  2      
  movl 0x104(%r15,%rbx,1), %edx   #  15    0x54806  8      
  xorl %r12d, %r12d               #  16    0x5480e  3      
  movq %rcx, 0x8(%rsp)            #  17    0x54811  5      
  jmpq .L_54860                   #  18    0x54816  5      
  nop                             #  19    0x5481b  1      
.L_54820:                         #        0x5481c  0      
  movslq %edx, %rdx               #  20    0x5481c  3      
  addl $0x1, %r12d                #  21    0x5481f  4      
  addl $0x1, %r13d                #  22    0x54823  4      
  leaq (%rbx,%rdx,1), %rdx        #  23    0x54827  4      
  cmpl %r12d, %eax                #  24    0x5482b  3      
  movl %ebx, %ebx                 #  25    0x5482e  2      
  movl %ecx, 0x104(%r15,%rbx,1)   #  26    0x54830  8      
  nop                             #  27    0x54838  1      
  movl %ebx, %ebx                 #  28    0x54839  2      
  movb %r14b, 0x108(%r15,%rbx,1)  #  29    0x5483b  8      
  movl %edx, %edx                 #  30    0x54843  2      
  movb %r14b, 0x4(%r15,%rdx,1)    #  31    0x54845  5      
  jbe .L_548e0                    #  32    0x5484a  6      
  movl %ecx, %edx                 #  33    0x54850  2      
  nop                             #  34    0x54852  1      
.L_54860:                         #        0x54853  0      
  movl %r13d, %ecx                #  35    0x54853  3      
  cmpl $0xff, %edx                #  36    0x54856  3      
  movl %ecx, %ecx                 #  37    0x54859  2      
  movzbl (%r15,%rcx,1), %r14d     #  38    0x5485b  5      
  leal 0x1(%rdx), %ecx            #  39    0x54860  3      
  jne .L_54820                    #  40    0x54863  6      
  movl %ebx, %ebx                 #  41    0x54869  2      
  movl 0x10c(%r15,%rbx,1), %ecx   #  42    0x5486b  8      
  nop                             #  43    0x54873  1      
  movl %ebx, %ebx                 #  44    0x54874  2      
  movl 0x110(%r15,%rbx,1), %edx   #  45    0x54876  8      
  movl %eax, (%rsp)               #  46    0x5487e  3      
  movl %ebx, %ebx                 #  47    0x54881  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  48    0x54883  9      
  nop                             #  49    0x5488c  1      
  movl %ebx, %ebx                 #  50    0x5488d  2      
  movl 0x104(%r15,%rbx,1), %esi   #  51    0x5488f  8      
  movl 0x8(%rsp), %edi            #  52    0x54897  4      
  nop                             #  53    0x5489b  1      
  andl $0xffffffe0, %ecx          #  54    0x5489c  6      
  addq %r15, %rcx                 #  55    0x548a2  3      
  callq %rcx                      #  56    0x548a5  2      
  movl %ebx, %ebx                 #  57    0x548a7  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  58    0x548a9  12     
  movl $0x1, %ecx                 #  59    0x548b5  5      
  xorl %edx, %edx                 #  60    0x548ba  2      
  movl (%rsp), %eax               #  61    0x548bc  3      
  jmpq .L_54820                   #  62    0x548bf  5      
  nop                             #  63    0x548c4  1      
.L_548e0:                         #        0x548c5  0      
  addl $0x18, %esp                #  64    0x548c5  3      
  addq %r15, %rsp                 #  65    0x548c8  3      
  popq %rbx                       #  66    0x548cb  2      
  popq %r12                       #  67    0x548cd  3      
  popq %r13                       #  68    0x548d0  3      
  popq %r14                       #  69    0x548d3  3      
  popq %r11                       #  70    0x548d6  3      
  andl $0xffffffe0, %r11d         #  71    0x548d9  7      
  addq %r15, %r11                 #  72    0x548e0  3      
  jmpq %r11                       #  73    0x548e3  3      
  nop                             #  74    0x548e6  1      
                                                           
.size d_append_buffer, .-d_append_buffer

