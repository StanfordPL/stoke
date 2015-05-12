  .text
  .globl pthread_setschedprio
  .type pthread_setschedprio, @function

#! file-offset 0x40880
#! rip-offset  0x40880
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.pthread_setschedprio:        #        0x40880  0      
  movq %rbx, -0x10(%rsp)      #  1     0x40880  5      
  movq %r12, -0x8(%rsp)       #  2     0x40885  5      
  movl %edi, %ebx             #  3     0x4088a  2      
  subl $0x18, %esp            #  4     0x4088c  3      
  addq %r15, %rsp             #  5     0x4088f  3      
  movl %esi, %r12d            #  6     0x40892  3      
  nop                         #  7     0x40895  1      
  callq .pthread_self         #  8     0x40896  5      
  cmpl %ebx, %eax             #  9     0x4089b  2      
  je .L_408e0                 #  10    0x4089d  6      
  movq 0x8(%rsp), %rbx        #  11    0x408a3  5      
  movq 0x10(%rsp), %r12       #  12    0x408a8  5      
  addl $0x18, %esp            #  13    0x408ad  3      
  addq %r15, %rsp             #  14    0x408b0  3      
  popq %r11                   #  15    0x408b3  3      
  movl $0x1, %eax             #  16    0x408b6  5      
  nop                         #  17    0x408bb  1      
  andl $0xffffffe0, %r11d     #  18    0x408bc  7      
  addq %r15, %r11             #  19    0x408c3  3      
  jmpq %r11                   #  20    0x408c6  3      
  nop                         #  21    0x408c9  1      
  nop                         #  22    0x408ca  1      
.L_408e0:                     #        0x408cb  0      
  movl 0xfff6507(%rip), %eax  #  23    0x408cb  6      
  movl %r12d, %edi            #  24    0x408d1  3      
  movq 0x8(%rsp), %rbx        #  25    0x408d4  5      
  movq 0x10(%rsp), %r12       #  26    0x408d9  5      
  addl $0x18, %esp            #  27    0x408de  3      
  addq %r15, %rsp             #  28    0x408e1  3      
  nop                         #  29    0x408e4  1      
  andl $0xffffffe0, %eax      #  30    0x408e5  5      
  addq %r15, %rax             #  31    0x408ea  3      
  jmpq %rax                   #  32    0x408ed  2      
  nop                         #  33    0x408ef  1      
  nop                         #  34    0x408f0  1      
                                                       
.size pthread_setschedprio, .-pthread_setschedprio

