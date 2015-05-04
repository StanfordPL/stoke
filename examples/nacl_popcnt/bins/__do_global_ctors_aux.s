  .text
  .globl __do_global_ctors_aux
  .type __do_global_ctors_aux, @function

#! file-offset 0x885c0
#! rip-offset  0x885c0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.__do_global_ctors_aux:       #        0x885c0  0      
  pushq %rbp                  #  1     0x885c0  2      
  movq %rsp, %rbp             #  2     0x885c2  3      
  pushq %rbx                  #  3     0x885c5  2      
  subl $0x8, %esp             #  4     0x885c7  3      
  addq %r15, %rsp             #  5     0x885ca  3      
  movl 0xffa7eb1(%rip), %eax  #  6     0x885cd  6      
  cmpl $0xffffffff, %eax      #  7     0x885d3  5      
  je .L_88620                 #  8     0x885d8  6      
  movl $0x10030484, %ebx      #  9     0x885de  5      
  movl %ebx, %ebx             #  10    0x885e3  2      
  nop                         #  11    0x885e5  1      
.L_885e0:                     #        0x885e6  0      
  subl $0x4, %ebx             #  12    0x885e6  3      
  nop                         #  13    0x885e9  1      
  nop                         #  14    0x885ea  1      
  andl $0xffffffe0, %eax      #  15    0x885eb  5      
  addq %r15, %rax             #  16    0x885f0  3      
  callq %rax                  #  17    0x885f3  2      
  movl %ebx, %ebx             #  18    0x885f5  2      
  movl (%r15,%rbx,1), %eax    #  19    0x885f7  4      
  cmpl $0xffffffff, %eax      #  20    0x885fb  5      
  jne .L_885e0                #  21    0x88600  6      
  nop                         #  22    0x88606  1      
  nop                         #  23    0x88607  1      
.L_88620:                     #        0x88608  0      
  addl $0x8, %esp             #  24    0x88608  3      
  addq %r15, %rsp             #  25    0x8860b  3      
  popq %rbx                   #  26    0x8860e  2      
  popq %r11                   #  27    0x88610  3      
  movl %r11d, %ebp            #  28    0x88613  3      
  addq %r15, %rbp             #  29    0x88616  3      
  popq %r11                   #  30    0x88619  3      
  andl $0xffffffe0, %r11d     #  31    0x8861c  7      
  addq %r15, %r11             #  32    0x88623  3      
  jmpq %r11                   #  33    0x88626  3      
  nop                         #  34    0x88629  1      
  nop                         #  35    0x8862a  1      
  nop                         #  36    0x8862b  1      
  nop                         #  37    0x8862c  1      
  nop                         #  38    0x8862d  1      
                                                       
.size __do_global_ctors_aux, .-__do_global_ctors_aux

