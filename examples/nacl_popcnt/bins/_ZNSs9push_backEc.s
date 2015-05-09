  .text
  .globl _ZNSs9push_backEc
  .type _ZNSs9push_backEc, @function

#! file-offset 0x461c0
#! rip-offset  0x461c0
#! capacity    256 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs9push_backEc:             #        0x461c0  0      
  movq %r12, -0x10(%rsp)        #  1     0x461c0  5      
  movl %edi, %r12d              #  2     0x461c5  3      
  movq %rbx, -0x18(%rsp)        #  3     0x461c8  5      
  movq %r13, -0x8(%rsp)         #  4     0x461cd  5      
  subl $0x18, %esp              #  5     0x461d2  3      
  addq %r15, %rsp               #  6     0x461d5  3      
  movl %r12d, %r12d             #  7     0x461d8  3      
  movl (%r15,%r12,1), %eax      #  8     0x461db  4      
  nop                           #  9     0x461df  1      
  movl %esi, %r13d              #  10    0x461e0  3      
  leal -0xc(%rax), %edx         #  11    0x461e3  3      
  movl %edx, %edx               #  12    0x461e6  2      
  movl (%r15,%rdx,1), %ecx      #  13    0x461e8  4      
  leal 0x1(%rcx), %ebx          #  14    0x461ec  3      
  movl %edx, %edx               #  15    0x461ef  2      
  cmpl 0x4(%r15,%rdx,1), %ebx   #  16    0x461f1  5      
  jbe .L_462a0                  #  17    0x461f6  6      
  nop                           #  18    0x461fc  1      
.L_46200:                       #        0x461fd  0      
  movl %ebx, %esi               #  19    0x461fd  2      
  movl %r12d, %edi              #  20    0x461ff  3      
  nop                           #  21    0x46202  1      
  nop                           #  22    0x46203  1      
  callq ._ZNSs7reserveEj        #  23    0x46204  5      
  movl %r12d, %r12d             #  24    0x46209  3      
  movl (%r15,%r12,1), %eax      #  25    0x4620c  4      
  leal -0xc(%rax), %edx         #  26    0x46210  3      
  movl %edx, %edx               #  27    0x46213  2      
  movl (%r15,%rdx,1), %ecx      #  28    0x46215  4      
  nop                           #  29    0x46219  1      
  nop                           #  30    0x4621a  1      
.L_46240:                       #        0x4621b  0      
  leal (%rcx,%rax,1), %eax      #  31    0x4621b  3      
  movl %eax, %eax               #  32    0x4621e  2      
  movb %r13b, (%r15,%rax,1)     #  33    0x46220  4      
  movl %r12d, %r12d             #  34    0x46224  3      
  movl (%r15,%r12,1), %eax      #  35    0x46227  4      
  subl $0xc, %eax               #  36    0x4622b  3      
  movl %eax, %eax               #  37    0x4622e  2      
  movl %ebx, (%r15,%rax,1)      #  38    0x46230  4      
  addl %eax, %ebx               #  39    0x46234  2      
  nop                           #  40    0x46236  1      
  movl %eax, %eax               #  41    0x46237  2      
  movl $0x0, 0x8(%r15,%rax,1)   #  42    0x46239  9      
  movl %ebx, %ebx               #  43    0x46242  2      
  movb $0x0, 0xc(%r15,%rbx,1)   #  44    0x46244  6      
  movq (%rsp), %rbx             #  45    0x4624a  4      
  movq 0x8(%rsp), %r12          #  46    0x4624e  5      
  nop                           #  47    0x46253  1      
  movq 0x10(%rsp), %r13         #  48    0x46254  5      
  addl $0x18, %esp              #  49    0x46259  3      
  addq %r15, %rsp               #  50    0x4625c  3      
  popq %r11                     #  51    0x4625f  3      
  andl $0xffffffe0, %r11d       #  52    0x46262  7      
  addq %r15, %r11               #  53    0x46269  3      
  jmpq %r11                     #  54    0x4626c  3      
  nop                           #  55    0x4626f  1      
.L_462a0:                       #        0x46270  0      
  movl %edx, %edx               #  56    0x46270  2      
  movl 0x8(%r15,%rdx,1), %r11d  #  57    0x46272  5      
  testl %r11d, %r11d            #  58    0x46277  3      
  jg .L_46200                   #  59    0x4627a  6      
  jmpq .L_46240                 #  60    0x46280  5      
  nop                           #  61    0x46285  1      
  nop                           #  62    0x46286  1      
  nop                           #  63    0x46287  1      
  nop                           #  64    0x46288  1      
  nop                           #  65    0x46289  1      
  nop                           #  66    0x4628a  1      
  nop                           #  67    0x4628b  1      
  nop                           #  68    0x4628c  1      
  nop                           #  69    0x4628d  1      
  nop                           #  70    0x4628e  1      
  nop                           #  71    0x4628f  1      
  nop                           #  72    0x46290  1      
  nop                           #  73    0x46291  1      
  nop                           #  74    0x46292  1      
                                                         
.size _ZNSs9push_backEc, .-_ZNSs9push_backEc

