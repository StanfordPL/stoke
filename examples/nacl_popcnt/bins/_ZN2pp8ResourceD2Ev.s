  .text
  .globl _ZN2pp8ResourceD2Ev
  .type _ZN2pp8ResourceD2Ev, @function

#! file-offset 0x271c0
#! rip-offset  0x271c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceD2Ev:              #        0x271c0  0      
  movl %edi, %edi                  #  1     0x271c0  2      
  pushq %rbx                       #  2     0x271c2  2      
  movl %edi, %edi                  #  3     0x271c4  2      
  movl 0x4(%r15,%rdi,1), %ebx      #  4     0x271c6  5      
  movl %edi, %edi                  #  5     0x271cb  2      
  movl $0x10020458, (%r15,%rdi,1)  #  6     0x271cd  8      
  testl %ebx, %ebx                 #  7     0x271d5  2      
  jne .L_27200                     #  8     0x271d7  6      
  popq %rbx                        #  9     0x271dd  2      
  popq %r11                        #  10    0x271df  3      
  nop                              #  11    0x271e2  1      
  andl $0xffffffe0, %r11d          #  12    0x271e3  7      
  addq %r15, %r11                  #  13    0x271ea  3      
  jmpq %r11                        #  14    0x271ed  3      
  nop                              #  15    0x271f0  1      
  nop                              #  16    0x271f1  1      
.L_27200:                          #        0x271f2  0      
  nop                              #  17    0x271f2  1      
  nop                              #  18    0x271f3  1      
  callq ._ZN2pp6Module3GetEv       #  19    0x271f4  5      
  movl %eax, %eax                  #  20    0x271f9  2      
  movl %ebx, %edi                  #  21    0x271fb  2      
  movl %eax, %eax                  #  22    0x271fd  2      
  movl 0x24(%r15,%rax,1), %eax     #  23    0x271ff  5      
  popq %rbx                        #  24    0x27204  2      
  movl %eax, %eax                  #  25    0x27206  2      
  movl (%r15,%rax,1), %eax         #  26    0x27208  4      
  movl %eax, %eax                  #  27    0x2720c  2      
  movl 0x4(%r15,%rax,1), %eax      #  28    0x2720e  5      
  nop                              #  29    0x27213  1      
  andl $0xffffffe0, %eax           #  30    0x27214  5      
  addq %r15, %rax                  #  31    0x27219  3      
  jmpq %rax                        #  32    0x2721c  2      
  nop                              #  33    0x2721e  1      
  nop                              #  34    0x2721f  1      
                                                            
.size _ZN2pp8ResourceD2Ev, .-_ZN2pp8ResourceD2Ev

