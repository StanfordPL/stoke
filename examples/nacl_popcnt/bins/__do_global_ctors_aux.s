  .text
  .globl __do_global_ctors_aux
  .type __do_global_ctors_aux, @function

#! file-offset 0x88540
#! rip-offset  0x88540
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.__do_global_ctors_aux:       #        0x88540  0      
  pushq %rbp                  #  1     0x88540  2      
  movq %rsp, %rbp             #  2     0x88542  3      
  pushq %rbx                  #  3     0x88545  2      
  subl $0x8, %esp             #  4     0x88547  3      
  addq %r15, %rsp             #  5     0x8854a  3      
  movl 0xffa7f31(%rip), %eax  #  6     0x8854d  6      
  cmpl $0xffffffff, %eax      #  7     0x88553  5      
  je .L_885a0                 #  8     0x88558  6      
  movl $0x10030484, %ebx      #  9     0x8855e  5      
  movl %ebx, %ebx             #  10    0x88563  2      
  nop                         #  11    0x88565  1      
.L_88560:                     #        0x88566  0      
  subl $0x4, %ebx             #  12    0x88566  3      
  nop                         #  13    0x88569  1      
  nop                         #  14    0x8856a  1      
  andl $0xffffffe0, %eax      #  15    0x8856b  5      
  addq %r15, %rax             #  16    0x88570  3      
  callq %rax                  #  17    0x88573  2      
  movl %ebx, %ebx             #  18    0x88575  2      
  movl (%r15,%rbx,1), %eax    #  19    0x88577  4      
  cmpl $0xffffffff, %eax      #  20    0x8857b  5      
  jne .L_88560                #  21    0x88580  6      
  nop                         #  22    0x88586  1      
  nop                         #  23    0x88587  1      
.L_885a0:                     #        0x88588  0      
  addl $0x8, %esp             #  24    0x88588  3      
  addq %r15, %rsp             #  25    0x8858b  3      
  popq %rbx                   #  26    0x8858e  2      
  popq %r11                   #  27    0x88590  3      
  movl %r11d, %ebp            #  28    0x88593  3      
  addq %r15, %rbp             #  29    0x88596  3      
  popq %r11                   #  30    0x88599  3      
  andl $0xffffffe0, %r11d     #  31    0x8859c  7      
  addq %r15, %r11             #  32    0x885a3  3      
  jmpq %r11                   #  33    0x885a6  3      
  nop                         #  34    0x885a9  1      
  nop                         #  35    0x885aa  1      
  nop                         #  36    0x885ab  1      
  nop                         #  37    0x885ac  1      
  nop                         #  38    0x885ad  1      
                                                       
.size __do_global_ctors_aux, .-__do_global_ctors_aux

