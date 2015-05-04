  .text
  .globl _ZNSs9push_backEc
  .type _ZNSs9push_backEc, @function

#! file-offset 0x46260
#! rip-offset  0x46260
#! capacity    256 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSs9push_backEc:             #        0x46260  0      
  movq %r12, -0x10(%rsp)        #  1     0x46260  5      
  movl %edi, %r12d              #  2     0x46265  3      
  movq %rbx, -0x18(%rsp)        #  3     0x46268  5      
  movq %r13, -0x8(%rsp)         #  4     0x4626d  5      
  subl $0x18, %esp              #  5     0x46272  3      
  addq %r15, %rsp               #  6     0x46275  3      
  movl %r12d, %r12d             #  7     0x46278  3      
  movl (%r15,%r12,1), %eax      #  8     0x4627b  4      
  nop                           #  9     0x4627f  1      
  movl %esi, %r13d              #  10    0x46280  3      
  leal -0xc(%rax), %edx         #  11    0x46283  3      
  movl %edx, %edx               #  12    0x46286  2      
  movl (%r15,%rdx,1), %ecx      #  13    0x46288  4      
  leal 0x1(%rcx), %ebx          #  14    0x4628c  3      
  movl %edx, %edx               #  15    0x4628f  2      
  cmpl 0x4(%r15,%rdx,1), %ebx   #  16    0x46291  5      
  jbe .L_46340                  #  17    0x46296  6      
  nop                           #  18    0x4629c  1      
.L_462a0:                       #        0x4629d  0      
  movl %ebx, %esi               #  19    0x4629d  2      
  movl %r12d, %edi              #  20    0x4629f  3      
  nop                           #  21    0x462a2  1      
  nop                           #  22    0x462a3  1      
  callq ._ZNSs7reserveEj        #  23    0x462a4  5      
  movl %r12d, %r12d             #  24    0x462a9  3      
  movl (%r15,%r12,1), %eax      #  25    0x462ac  4      
  leal -0xc(%rax), %edx         #  26    0x462b0  3      
  movl %edx, %edx               #  27    0x462b3  2      
  movl (%r15,%rdx,1), %ecx      #  28    0x462b5  4      
  nop                           #  29    0x462b9  1      
  nop                           #  30    0x462ba  1      
.L_462e0:                       #        0x462bb  0      
  leal (%rcx,%rax,1), %eax      #  31    0x462bb  3      
  movl %eax, %eax               #  32    0x462be  2      
  movb %r13b, (%r15,%rax,1)     #  33    0x462c0  4      
  movl %r12d, %r12d             #  34    0x462c4  3      
  movl (%r15,%r12,1), %eax      #  35    0x462c7  4      
  subl $0xc, %eax               #  36    0x462cb  3      
  movl %eax, %eax               #  37    0x462ce  2      
  movl %ebx, (%r15,%rax,1)      #  38    0x462d0  4      
  addl %eax, %ebx               #  39    0x462d4  2      
  nop                           #  40    0x462d6  1      
  movl %eax, %eax               #  41    0x462d7  2      
  movl $0x0, 0x8(%r15,%rax,1)   #  42    0x462d9  9      
  movl %ebx, %ebx               #  43    0x462e2  2      
  movb $0x0, 0xc(%r15,%rbx,1)   #  44    0x462e4  6      
  movq (%rsp), %rbx             #  45    0x462ea  4      
  movq 0x8(%rsp), %r12          #  46    0x462ee  5      
  nop                           #  47    0x462f3  1      
  movq 0x10(%rsp), %r13         #  48    0x462f4  5      
  addl $0x18, %esp              #  49    0x462f9  3      
  addq %r15, %rsp               #  50    0x462fc  3      
  popq %r11                     #  51    0x462ff  3      
  andl $0xffffffe0, %r11d       #  52    0x46302  7      
  addq %r15, %r11               #  53    0x46309  3      
  jmpq %r11                     #  54    0x4630c  3      
  nop                           #  55    0x4630f  1      
.L_46340:                       #        0x46310  0      
  movl %edx, %edx               #  56    0x46310  2      
  movl 0x8(%r15,%rdx,1), %r11d  #  57    0x46312  5      
  testl %r11d, %r11d            #  58    0x46317  3      
  jg .L_462a0                   #  59    0x4631a  6      
  jmpq .L_462e0                 #  60    0x46320  5      
  nop                           #  61    0x46325  1      
  nop                           #  62    0x46326  1      
  nop                           #  63    0x46327  1      
  nop                           #  64    0x46328  1      
  nop                           #  65    0x46329  1      
  nop                           #  66    0x4632a  1      
  nop                           #  67    0x4632b  1      
  nop                           #  68    0x4632c  1      
  nop                           #  69    0x4632d  1      
  nop                           #  70    0x4632e  1      
  nop                           #  71    0x4632f  1      
  nop                           #  72    0x46330  1      
  nop                           #  73    0x46331  1      
  nop                           #  74    0x46332  1      
                                                         
.size _ZNSs9push_backEc, .-_ZNSs9push_backEc

