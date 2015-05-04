  .text
  .globl pthread_setschedprio
  .type pthread_setschedprio, @function

#! file-offset 0x40900
#! rip-offset  0x40900
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.pthread_setschedprio:        #        0x40900  0      
  movq %rbx, -0x10(%rsp)      #  1     0x40900  5      
  movq %r12, -0x8(%rsp)       #  2     0x40905  5      
  movl %edi, %ebx             #  3     0x4090a  2      
  subl $0x18, %esp            #  4     0x4090c  3      
  addq %r15, %rsp             #  5     0x4090f  3      
  movl %esi, %r12d            #  6     0x40912  3      
  nop                         #  7     0x40915  1      
  callq .pthread_self         #  8     0x40916  5      
  cmpl %ebx, %eax             #  9     0x4091b  2      
  je .L_40960                 #  10    0x4091d  6      
  movq 0x8(%rsp), %rbx        #  11    0x40923  5      
  movq 0x10(%rsp), %r12       #  12    0x40928  5      
  addl $0x18, %esp            #  13    0x4092d  3      
  addq %r15, %rsp             #  14    0x40930  3      
  popq %r11                   #  15    0x40933  3      
  movl $0x1, %eax             #  16    0x40936  5      
  nop                         #  17    0x4093b  1      
  andl $0xffffffe0, %r11d     #  18    0x4093c  7      
  addq %r15, %r11             #  19    0x40943  3      
  jmpq %r11                   #  20    0x40946  3      
  nop                         #  21    0x40949  1      
  nop                         #  22    0x4094a  1      
.L_40960:                     #        0x4094b  0      
  movl 0xfff6487(%rip), %eax  #  23    0x4094b  6      
  movl %r12d, %edi            #  24    0x40951  3      
  movq 0x8(%rsp), %rbx        #  25    0x40954  5      
  movq 0x10(%rsp), %r12       #  26    0x40959  5      
  addl $0x18, %esp            #  27    0x4095e  3      
  addq %r15, %rsp             #  28    0x40961  3      
  nop                         #  29    0x40964  1      
  andl $0xffffffe0, %eax      #  30    0x40965  5      
  addq %r15, %rax             #  31    0x4096a  3      
  jmpq %rax                   #  32    0x4096d  2      
  nop                         #  33    0x4096f  1      
  nop                         #  34    0x40970  1      
                                                       
.size pthread_setschedprio, .-pthread_setschedprio

