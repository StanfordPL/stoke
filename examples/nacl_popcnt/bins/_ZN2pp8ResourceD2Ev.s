  .text
  .globl _ZN2pp8ResourceD2Ev
  .type _ZN2pp8ResourceD2Ev, @function

#! file-offset 0x27120
#! rip-offset  0x27120
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceD2Ev:              #        0x27120  0      
  movl %edi, %edi                  #  1     0x27120  2      
  pushq %rbx                       #  2     0x27122  2      
  movl %edi, %edi                  #  3     0x27124  2      
  movl 0x4(%r15,%rdi,1), %ebx      #  4     0x27126  5      
  movl %edi, %edi                  #  5     0x2712b  2      
  movl $0x10020458, (%r15,%rdi,1)  #  6     0x2712d  8      
  testl %ebx, %ebx                 #  7     0x27135  2      
  jne .L_27160                     #  8     0x27137  6      
  popq %rbx                        #  9     0x2713d  2      
  popq %r11                        #  10    0x2713f  3      
  nop                              #  11    0x27142  1      
  andl $0xffffffe0, %r11d          #  12    0x27143  7      
  addq %r15, %r11                  #  13    0x2714a  3      
  jmpq %r11                        #  14    0x2714d  3      
  nop                              #  15    0x27150  1      
  nop                              #  16    0x27151  1      
.L_27160:                          #        0x27152  0      
  nop                              #  17    0x27152  1      
  nop                              #  18    0x27153  1      
  callq ._ZN2pp6Module3GetEv       #  19    0x27154  5      
  movl %eax, %eax                  #  20    0x27159  2      
  movl %ebx, %edi                  #  21    0x2715b  2      
  movl %eax, %eax                  #  22    0x2715d  2      
  movl 0x24(%r15,%rax,1), %eax     #  23    0x2715f  5      
  popq %rbx                        #  24    0x27164  2      
  movl %eax, %eax                  #  25    0x27166  2      
  movl (%r15,%rax,1), %eax         #  26    0x27168  4      
  movl %eax, %eax                  #  27    0x2716c  2      
  movl 0x4(%r15,%rax,1), %eax      #  28    0x2716e  5      
  nop                              #  29    0x27173  1      
  andl $0xffffffe0, %eax           #  30    0x27174  5      
  addq %r15, %rax                  #  31    0x27179  3      
  jmpq %rax                        #  32    0x2717c  2      
  nop                              #  33    0x2717e  1      
  nop                              #  34    0x2717f  1      
                                                            
.size _ZN2pp8ResourceD2Ev, .-_ZN2pp8ResourceD2Ev

