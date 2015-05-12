  .text
  .globl _ZNSs9push_backEc
  .type _ZNSs9push_backEc, @function

#! file-offset 0x461e0
#! rip-offset  0x461e0
#! capacity    256 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs9push_backEc:             #        0x461e0  0      
  movq %r12, -0x10(%rsp)        #  1     0x461e0  5      
  movl %edi, %r12d              #  2     0x461e5  3      
  movq %rbx, -0x18(%rsp)        #  3     0x461e8  5      
  movq %r13, -0x8(%rsp)         #  4     0x461ed  5      
  subl $0x18, %esp              #  5     0x461f2  3      
  addq %r15, %rsp               #  6     0x461f5  3      
  movl %r12d, %r12d             #  7     0x461f8  3      
  movl (%r15,%r12,1), %eax      #  8     0x461fb  4      
  nop                           #  9     0x461ff  1      
  movl %esi, %r13d              #  10    0x46200  3      
  leal -0xc(%rax), %edx         #  11    0x46203  3      
  movl %edx, %edx               #  12    0x46206  2      
  movl (%r15,%rdx,1), %ecx      #  13    0x46208  4      
  leal 0x1(%rcx), %ebx          #  14    0x4620c  3      
  movl %edx, %edx               #  15    0x4620f  2      
  cmpl 0x4(%r15,%rdx,1), %ebx   #  16    0x46211  5      
  jbe .L_462c0                  #  17    0x46216  6      
  nop                           #  18    0x4621c  1      
.L_46220:                       #        0x4621d  0      
  movl %ebx, %esi               #  19    0x4621d  2      
  movl %r12d, %edi              #  20    0x4621f  3      
  nop                           #  21    0x46222  1      
  nop                           #  22    0x46223  1      
  callq ._ZNSs7reserveEj        #  23    0x46224  5      
  movl %r12d, %r12d             #  24    0x46229  3      
  movl (%r15,%r12,1), %eax      #  25    0x4622c  4      
  leal -0xc(%rax), %edx         #  26    0x46230  3      
  movl %edx, %edx               #  27    0x46233  2      
  movl (%r15,%rdx,1), %ecx      #  28    0x46235  4      
  nop                           #  29    0x46239  1      
  nop                           #  30    0x4623a  1      
.L_46260:                       #        0x4623b  0      
  leal (%rcx,%rax,1), %eax      #  31    0x4623b  3      
  movl %eax, %eax               #  32    0x4623e  2      
  movb %r13b, (%r15,%rax,1)     #  33    0x46240  4      
  movl %r12d, %r12d             #  34    0x46244  3      
  movl (%r15,%r12,1), %eax      #  35    0x46247  4      
  subl $0xc, %eax               #  36    0x4624b  3      
  movl %eax, %eax               #  37    0x4624e  2      
  movl %ebx, (%r15,%rax,1)      #  38    0x46250  4      
  addl %eax, %ebx               #  39    0x46254  2      
  nop                           #  40    0x46256  1      
  movl %eax, %eax               #  41    0x46257  2      
  movl $0x0, 0x8(%r15,%rax,1)   #  42    0x46259  9      
  movl %ebx, %ebx               #  43    0x46262  2      
  movb $0x0, 0xc(%r15,%rbx,1)   #  44    0x46264  6      
  movq (%rsp), %rbx             #  45    0x4626a  4      
  movq 0x8(%rsp), %r12          #  46    0x4626e  5      
  nop                           #  47    0x46273  1      
  movq 0x10(%rsp), %r13         #  48    0x46274  5      
  addl $0x18, %esp              #  49    0x46279  3      
  addq %r15, %rsp               #  50    0x4627c  3      
  popq %r11                     #  51    0x4627f  3      
  andl $0xffffffe0, %r11d       #  52    0x46282  7      
  addq %r15, %r11               #  53    0x46289  3      
  jmpq %r11                     #  54    0x4628c  3      
  nop                           #  55    0x4628f  1      
.L_462c0:                       #        0x46290  0      
  movl %edx, %edx               #  56    0x46290  2      
  movl 0x8(%r15,%rdx,1), %r11d  #  57    0x46292  5      
  testl %r11d, %r11d            #  58    0x46297  3      
  jg .L_46220                   #  59    0x4629a  6      
  jmpq .L_46260                 #  60    0x462a0  5      
  nop                           #  61    0x462a5  1      
  nop                           #  62    0x462a6  1      
  nop                           #  63    0x462a7  1      
  nop                           #  64    0x462a8  1      
  nop                           #  65    0x462a9  1      
  nop                           #  66    0x462aa  1      
  nop                           #  67    0x462ab  1      
  nop                           #  68    0x462ac  1      
  nop                           #  69    0x462ad  1      
  nop                           #  70    0x462ae  1      
  nop                           #  71    0x462af  1      
  nop                           #  72    0x462b0  1      
  nop                           #  73    0x462b1  1      
  nop                           #  74    0x462b2  1      
                                                         
.size _ZNSs9push_backEc, .-_ZNSs9push_backEc

