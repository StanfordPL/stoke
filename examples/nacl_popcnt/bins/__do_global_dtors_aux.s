  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function

#! file-offset 0x20080
#! rip-offset  0x20080
#! capacity    224 bytes

# Text                                #  Line  RIP      Bytes  
.__do_global_dtors_aux:               #        0x20080  0      
  pushq %rbp                          #  1     0x20080  2      
  movq %rsp, %rbp                     #  2     0x20082  3      
  pushq %rbx                          #  3     0x20085  2      
  subl $0x8, %esp                     #  4     0x20087  3      
  addq %r15, %rsp                     #  5     0x2008a  3      
  cmpb $0x0, 0x10010b4c(%rip)         #  6     0x2008d  7      
  jne .L_20140                        #  7     0x20094  6      
  movl $0x10030490, %ebx              #  8     0x2009a  5      
  nop                                 #  9     0x2009f  1      
  movl 0x10010b3e(%rip), %eax         #  10    0x200a0  6      
  subl $0x1003048c, %ebx              #  11    0x200a6  6      
  sarl $0x2, %ebx                     #  12    0x200ac  3      
  subl $0x1, %ebx                     #  13    0x200af  3      
  cmpl %ebx, %eax                     #  14    0x200b2  2      
  jae .L_20100                        #  15    0x200b4  6      
  nop                                 #  16    0x200ba  1      
.L_200c0:                             #        0x200bb  0      
  addl $0x1, %eax                     #  17    0x200bb  3      
  movl %eax, 0x10010b20(%rip)         #  18    0x200be  6      
  shll $0x2, %eax                     #  19    0x200c4  3      
  cltq                                #  20    0x200c7  2      
  movl %eax, %eax                     #  21    0x200c9  2      
  movl 0x1003048c(%r15,%rax,1), %eax  #  22    0x200cb  8      
  andl $0xffffffe0, %eax              #  23    0x200d3  5      
  addq %r15, %rax                     #  24    0x200d8  3      
  callq %rax                          #  25    0x200db  2      
  movl 0x10010b01(%rip), %eax         #  26    0x200dd  6      
  cmpl %ebx, %eax                     #  27    0x200e3  2      
  jb .L_200c0                         #  28    0x200e5  6      
  nop                                 #  29    0x200eb  1      
  nop                                 #  30    0x200ec  1      
.L_20100:                             #        0x200ed  0      
  movl $0x60460, %eax                 #  31    0x200ed  5      
  testl %eax, %eax                    #  32    0x200f2  2      
  je .L_20120                         #  33    0x200f4  6      
  movl $0x10027230, %edi              #  34    0x200fa  5      
  nop                                 #  35    0x200ff  1      
  callq .__deregister_frame_info      #  36    0x20100  5      
.L_20120:                             #        0x20105  0      
  movb $0x1, 0x10010ad4(%rip)         #  37    0x20105  7      
  nop                                 #  38    0x2010c  1      
  nop                                 #  39    0x2010d  1      
.L_20140:                             #        0x2010e  0      
  addl $0x8, %esp                     #  40    0x2010e  3      
  addq %r15, %rsp                     #  41    0x20111  3      
  popq %rbx                           #  42    0x20114  2      
  popq %r11                           #  43    0x20116  3      
  movl %r11d, %ebp                    #  44    0x20119  3      
  addq %r15, %rbp                     #  45    0x2011c  3      
  popq %r11                           #  46    0x2011f  3      
  andl $0xffffffe0, %r11d             #  47    0x20122  7      
  addq %r15, %r11                     #  48    0x20129  3      
  jmpq %r11                           #  49    0x2012c  3      
  nop                                 #  50    0x2012f  1      
                                                               
.size __do_global_dtors_aux, .-__do_global_dtors_aux

