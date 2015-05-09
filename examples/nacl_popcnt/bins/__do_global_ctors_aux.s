  .text
  .globl __do_global_ctors_aux
  .type __do_global_ctors_aux, @function

#! file-offset 0x88520
#! rip-offset  0x88520
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.__do_global_ctors_aux:       #        0x88520  0      
  pushq %rbp                  #  1     0x88520  2      
  movq %rsp, %rbp             #  2     0x88522  3      
  pushq %rbx                  #  3     0x88525  2      
  subl $0x8, %esp             #  4     0x88527  3      
  addq %r15, %rsp             #  5     0x8852a  3      
  movl 0xffa7f51(%rip), %eax  #  6     0x8852d  6      
  cmpl $0xffffffff, %eax      #  7     0x88533  5      
  je .L_88580                 #  8     0x88538  6      
  movl $0x10030484, %ebx      #  9     0x8853e  5      
  movl %ebx, %ebx             #  10    0x88543  2      
  nop                         #  11    0x88545  1      
.L_88540:                     #        0x88546  0      
  subl $0x4, %ebx             #  12    0x88546  3      
  nop                         #  13    0x88549  1      
  nop                         #  14    0x8854a  1      
  andl $0xffffffe0, %eax      #  15    0x8854b  5      
  addq %r15, %rax             #  16    0x88550  3      
  callq %rax                  #  17    0x88553  2      
  movl %ebx, %ebx             #  18    0x88555  2      
  movl (%r15,%rbx,1), %eax    #  19    0x88557  4      
  cmpl $0xffffffff, %eax      #  20    0x8855b  5      
  jne .L_88540                #  21    0x88560  6      
  nop                         #  22    0x88566  1      
  nop                         #  23    0x88567  1      
.L_88580:                     #        0x88568  0      
  addl $0x8, %esp             #  24    0x88568  3      
  addq %r15, %rsp             #  25    0x8856b  3      
  popq %rbx                   #  26    0x8856e  2      
  popq %r11                   #  27    0x88570  3      
  movl %r11d, %ebp            #  28    0x88573  3      
  addq %r15, %rbp             #  29    0x88576  3      
  popq %r11                   #  30    0x88579  3      
  andl $0xffffffe0, %r11d     #  31    0x8857c  7      
  addq %r15, %r11             #  32    0x88583  3      
  jmpq %r11                   #  33    0x88586  3      
  nop                         #  34    0x88589  1      
  nop                         #  35    0x8858a  1      
  nop                         #  36    0x8858b  1      
  nop                         #  37    0x8858c  1      
  nop                         #  38    0x8858d  1      
                                                       
.size __do_global_ctors_aux, .-__do_global_ctors_aux

