  .text
  .globl frame_heapsort
  .type frame_heapsort, @function

#! file-offset 0x5e0e0
#! rip-offset  0x5e0e0
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.frame_heapsort:                #        0x5e0e0  0      
  pushq %r14                    #  1     0x5e0e0  3      
  movl %edi, %edi               #  2     0x5e0e3  2      
  movl %esi, %r14d              #  3     0x5e0e5  3      
  pushq %r13                    #  4     0x5e0e8  3      
  movl %edx, %r13d              #  5     0x5e0eb  3      
  leal 0x8(%r13), %eax          #  6     0x5e0ee  4      
  pushq %r12                    #  7     0x5e0f2  3      
  pushq %rbx                    #  8     0x5e0f5  2      
  subl $0x18, %esp              #  9     0x5e0f7  3      
  addq %r15, %rsp               #  10    0x5e0fa  3      
  nop                           #  11    0x5e0fd  1      
  movl %r13d, %r13d             #  12    0x5e0fe  3      
  movl 0x4(%r15,%r13,1), %r12d  #  13    0x5e101  5      
  movq %rdi, 0x8(%rsp)          #  14    0x5e106  5      
  movq %rax, (%rsp)             #  15    0x5e10b  4      
  movl %r12d, %ebx              #  16    0x5e10f  3      
  shrl $0x1, %ebx               #  17    0x5e112  2      
  subl $0x1, %ebx               #  18    0x5e114  3      
  js .L_5e160                   #  19    0x5e117  6      
  nop                           #  20    0x5e11d  1      
.L_5e120:                       #        0x5e11e  0      
  movl (%rsp), %edx             #  21    0x5e11e  3      
  movl 0x8(%rsp), %edi          #  22    0x5e121  4      
  movl %ebx, %ecx               #  23    0x5e125  2      
  movl %r12d, %r8d              #  24    0x5e127  3      
  movl %r14d, %esi              #  25    0x5e12a  3      
  nop                           #  26    0x5e12d  1      
  callq .frame_downheap         #  27    0x5e12e  5      
  subl $0x1, %ebx               #  28    0x5e133  3      
  jns .L_5e120                  #  29    0x5e136  6      
  nop                           #  30    0x5e13c  1      
  nop                           #  31    0x5e13d  1      
.L_5e160:                       #        0x5e13e  0      
  leal -0x1(%r12), %ebx         #  32    0x5e13e  5      
  testl %ebx, %ebx              #  33    0x5e143  2      
  jle .L_5e1e0                  #  34    0x5e145  6      
  leal 0x8(%r13,%rbx,4), %r12d  #  35    0x5e14b  5      
  nop                           #  36    0x5e150  1      
  nop                           #  37    0x5e151  1      
.L_5e180:                       #        0x5e152  0      
  movl %r13d, %r13d             #  38    0x5e152  3      
  movl 0x8(%r15,%r13,1), %edx   #  39    0x5e155  5      
  movl %r12d, %eax              #  40    0x5e15a  3      
  movl 0x8(%rsp), %edi          #  41    0x5e15d  4      
  movl %eax, %eax               #  42    0x5e161  2      
  movl (%r15,%rax,1), %ecx      #  43    0x5e163  4      
  movl %ebx, %r8d               #  44    0x5e167  3      
  movl %r14d, %esi              #  45    0x5e16a  3      
  subl $0x1, %ebx               #  46    0x5e16d  3      
  xchgw %ax, %ax                #  47    0x5e170  3      
  subl $0x4, %r12d              #  48    0x5e173  4      
  movl %r13d, %r13d             #  49    0x5e177  3      
  movl %ecx, 0x8(%r15,%r13,1)   #  50    0x5e17a  5      
  movl %eax, %eax               #  51    0x5e17f  2      
  movl %edx, (%r15,%rax,1)      #  52    0x5e181  4      
  xorl %ecx, %ecx               #  53    0x5e185  2      
  movl (%rsp), %edx             #  54    0x5e187  3      
  nop                           #  55    0x5e18a  1      
  callq .frame_downheap         #  56    0x5e18b  5      
  testl %ebx, %ebx              #  57    0x5e190  2      
  jg .L_5e180                   #  58    0x5e192  6      
  nop                           #  59    0x5e198  1      
  nop                           #  60    0x5e199  1      
.L_5e1e0:                       #        0x5e19a  0      
  addl $0x18, %esp              #  61    0x5e19a  3      
  addq %r15, %rsp               #  62    0x5e19d  3      
  popq %rbx                     #  63    0x5e1a0  2      
  popq %r12                     #  64    0x5e1a2  3      
  popq %r13                     #  65    0x5e1a5  3      
  popq %r14                     #  66    0x5e1a8  3      
  popq %r11                     #  67    0x5e1ab  3      
  andl $0xffffffe0, %r11d       #  68    0x5e1ae  7      
  addq %r15, %r11               #  69    0x5e1b5  3      
  jmpq %r11                     #  70    0x5e1b8  3      
  nop                           #  71    0x5e1bb  1      
                                                         
.size frame_heapsort, .-frame_heapsort

