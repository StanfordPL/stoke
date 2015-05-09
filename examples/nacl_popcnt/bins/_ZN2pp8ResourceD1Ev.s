  .text
  .globl _ZN2pp8ResourceD1Ev
  .type _ZN2pp8ResourceD1Ev, @function

#! file-offset 0x27080
#! rip-offset  0x27080
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceD1Ev:              #        0x27080  0      
  movl %edi, %edi                  #  1     0x27080  2      
  pushq %rbx                       #  2     0x27082  2      
  movl %edi, %edi                  #  3     0x27084  2      
  movl 0x4(%r15,%rdi,1), %ebx      #  4     0x27086  5      
  movl %edi, %edi                  #  5     0x2708b  2      
  movl $0x10020458, (%r15,%rdi,1)  #  6     0x2708d  8      
  testl %ebx, %ebx                 #  7     0x27095  2      
  jne .L_270c0                     #  8     0x27097  6      
  popq %rbx                        #  9     0x2709d  2      
  popq %r11                        #  10    0x2709f  3      
  nop                              #  11    0x270a2  1      
  andl $0xffffffe0, %r11d          #  12    0x270a3  7      
  addq %r15, %r11                  #  13    0x270aa  3      
  jmpq %r11                        #  14    0x270ad  3      
  nop                              #  15    0x270b0  1      
  nop                              #  16    0x270b1  1      
.L_270c0:                          #        0x270b2  0      
  nop                              #  17    0x270b2  1      
  nop                              #  18    0x270b3  1      
  callq ._ZN2pp6Module3GetEv       #  19    0x270b4  5      
  movl %eax, %eax                  #  20    0x270b9  2      
  movl %ebx, %edi                  #  21    0x270bb  2      
  movl %eax, %eax                  #  22    0x270bd  2      
  movl 0x24(%r15,%rax,1), %eax     #  23    0x270bf  5      
  popq %rbx                        #  24    0x270c4  2      
  movl %eax, %eax                  #  25    0x270c6  2      
  movl (%r15,%rax,1), %eax         #  26    0x270c8  4      
  movl %eax, %eax                  #  27    0x270cc  2      
  movl 0x4(%r15,%rax,1), %eax      #  28    0x270ce  5      
  nop                              #  29    0x270d3  1      
  andl $0xffffffe0, %eax           #  30    0x270d4  5      
  addq %r15, %rax                  #  31    0x270d9  3      
  jmpq %rax                        #  32    0x270dc  2      
  nop                              #  33    0x270de  1      
  nop                              #  34    0x270df  1      
                                                            
.size _ZN2pp8ResourceD1Ev, .-_ZN2pp8ResourceD1Ev

