  .text
  .globl _ZN2pp8ResourceD2Ev
  .type _ZN2pp8ResourceD2Ev, @function

#! file-offset 0x27140
#! rip-offset  0x27140
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceD2Ev:              #        0x27140  0      
  movl %edi, %edi                  #  1     0x27140  2      
  pushq %rbx                       #  2     0x27142  2      
  movl %edi, %edi                  #  3     0x27144  2      
  movl 0x4(%r15,%rdi,1), %ebx      #  4     0x27146  5      
  movl %edi, %edi                  #  5     0x2714b  2      
  movl $0x10020458, (%r15,%rdi,1)  #  6     0x2714d  8      
  testl %ebx, %ebx                 #  7     0x27155  2      
  jne .L_27180                     #  8     0x27157  6      
  popq %rbx                        #  9     0x2715d  2      
  popq %r11                        #  10    0x2715f  3      
  nop                              #  11    0x27162  1      
  andl $0xffffffe0, %r11d          #  12    0x27163  7      
  addq %r15, %r11                  #  13    0x2716a  3      
  jmpq %r11                        #  14    0x2716d  3      
  nop                              #  15    0x27170  1      
  nop                              #  16    0x27171  1      
.L_27180:                          #        0x27172  0      
  nop                              #  17    0x27172  1      
  nop                              #  18    0x27173  1      
  callq ._ZN2pp6Module3GetEv       #  19    0x27174  5      
  movl %eax, %eax                  #  20    0x27179  2      
  movl %ebx, %edi                  #  21    0x2717b  2      
  movl %eax, %eax                  #  22    0x2717d  2      
  movl 0x24(%r15,%rax,1), %eax     #  23    0x2717f  5      
  popq %rbx                        #  24    0x27184  2      
  movl %eax, %eax                  #  25    0x27186  2      
  movl (%r15,%rax,1), %eax         #  26    0x27188  4      
  movl %eax, %eax                  #  27    0x2718c  2      
  movl 0x4(%r15,%rax,1), %eax      #  28    0x2718e  5      
  nop                              #  29    0x27193  1      
  andl $0xffffffe0, %eax           #  30    0x27194  5      
  addq %r15, %rax                  #  31    0x27199  3      
  jmpq %rax                        #  32    0x2719c  2      
  nop                              #  33    0x2719e  1      
  nop                              #  34    0x2719f  1      
                                                            
.size _ZN2pp8ResourceD2Ev, .-_ZN2pp8ResourceD2Ev

