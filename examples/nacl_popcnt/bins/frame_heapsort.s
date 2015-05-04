  .text
  .globl frame_heapsort
  .type frame_heapsort, @function

#! file-offset 0x5e160
#! rip-offset  0x5e160
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.frame_heapsort:                #        0x5e160  0      
  pushq %r14                    #  1     0x5e160  3      
  movl %edi, %edi               #  2     0x5e163  2      
  movl %esi, %r14d              #  3     0x5e165  3      
  pushq %r13                    #  4     0x5e168  3      
  movl %edx, %r13d              #  5     0x5e16b  3      
  leal 0x8(%r13), %eax          #  6     0x5e16e  4      
  pushq %r12                    #  7     0x5e172  3      
  pushq %rbx                    #  8     0x5e175  2      
  subl $0x18, %esp              #  9     0x5e177  3      
  addq %r15, %rsp               #  10    0x5e17a  3      
  nop                           #  11    0x5e17d  1      
  movl %r13d, %r13d             #  12    0x5e17e  3      
  movl 0x4(%r15,%r13,1), %r12d  #  13    0x5e181  5      
  movq %rdi, 0x8(%rsp)          #  14    0x5e186  5      
  movq %rax, (%rsp)             #  15    0x5e18b  4      
  movl %r12d, %ebx              #  16    0x5e18f  3      
  shrl $0x1, %ebx               #  17    0x5e192  2      
  subl $0x1, %ebx               #  18    0x5e194  3      
  js .L_5e1e0                   #  19    0x5e197  6      
  nop                           #  20    0x5e19d  1      
.L_5e1a0:                       #        0x5e19e  0      
  movl (%rsp), %edx             #  21    0x5e19e  3      
  movl 0x8(%rsp), %edi          #  22    0x5e1a1  4      
  movl %ebx, %ecx               #  23    0x5e1a5  2      
  movl %r12d, %r8d              #  24    0x5e1a7  3      
  movl %r14d, %esi              #  25    0x5e1aa  3      
  nop                           #  26    0x5e1ad  1      
  callq .frame_downheap         #  27    0x5e1ae  5      
  subl $0x1, %ebx               #  28    0x5e1b3  3      
  jns .L_5e1a0                  #  29    0x5e1b6  6      
  nop                           #  30    0x5e1bc  1      
  nop                           #  31    0x5e1bd  1      
.L_5e1e0:                       #        0x5e1be  0      
  leal -0x1(%r12), %ebx         #  32    0x5e1be  5      
  testl %ebx, %ebx              #  33    0x5e1c3  2      
  jle .L_5e260                  #  34    0x5e1c5  6      
  leal 0x8(%r13,%rbx,4), %r12d  #  35    0x5e1cb  5      
  nop                           #  36    0x5e1d0  1      
  nop                           #  37    0x5e1d1  1      
.L_5e200:                       #        0x5e1d2  0      
  movl %r13d, %r13d             #  38    0x5e1d2  3      
  movl 0x8(%r15,%r13,1), %edx   #  39    0x5e1d5  5      
  movl %r12d, %eax              #  40    0x5e1da  3      
  movl 0x8(%rsp), %edi          #  41    0x5e1dd  4      
  movl %eax, %eax               #  42    0x5e1e1  2      
  movl (%r15,%rax,1), %ecx      #  43    0x5e1e3  4      
  movl %ebx, %r8d               #  44    0x5e1e7  3      
  movl %r14d, %esi              #  45    0x5e1ea  3      
  subl $0x1, %ebx               #  46    0x5e1ed  3      
  xchgw %ax, %ax                #  47    0x5e1f0  3      
  subl $0x4, %r12d              #  48    0x5e1f3  4      
  movl %r13d, %r13d             #  49    0x5e1f7  3      
  movl %ecx, 0x8(%r15,%r13,1)   #  50    0x5e1fa  5      
  movl %eax, %eax               #  51    0x5e1ff  2      
  movl %edx, (%r15,%rax,1)      #  52    0x5e201  4      
  xorl %ecx, %ecx               #  53    0x5e205  2      
  movl (%rsp), %edx             #  54    0x5e207  3      
  nop                           #  55    0x5e20a  1      
  callq .frame_downheap         #  56    0x5e20b  5      
  testl %ebx, %ebx              #  57    0x5e210  2      
  jg .L_5e200                   #  58    0x5e212  6      
  nop                           #  59    0x5e218  1      
  nop                           #  60    0x5e219  1      
.L_5e260:                       #        0x5e21a  0      
  addl $0x18, %esp              #  61    0x5e21a  3      
  addq %r15, %rsp               #  62    0x5e21d  3      
  popq %rbx                     #  63    0x5e220  2      
  popq %r12                     #  64    0x5e222  3      
  popq %r13                     #  65    0x5e225  3      
  popq %r14                     #  66    0x5e228  3      
  popq %r11                     #  67    0x5e22b  3      
  andl $0xffffffe0, %r11d       #  68    0x5e22e  7      
  addq %r15, %r11               #  69    0x5e235  3      
  jmpq %r11                     #  70    0x5e238  3      
  nop                           #  71    0x5e23b  1      
                                                         
.size frame_heapsort, .-frame_heapsort

