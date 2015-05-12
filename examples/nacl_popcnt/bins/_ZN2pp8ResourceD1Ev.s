  .text
  .globl _ZN2pp8ResourceD1Ev
  .type _ZN2pp8ResourceD1Ev, @function

#! file-offset 0x270a0
#! rip-offset  0x270a0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
._ZN2pp8ResourceD1Ev:              #        0x270a0  0      
  movl %edi, %edi                  #  1     0x270a0  2      
  pushq %rbx                       #  2     0x270a2  2      
  movl %edi, %edi                  #  3     0x270a4  2      
  movl 0x4(%r15,%rdi,1), %ebx      #  4     0x270a6  5      
  movl %edi, %edi                  #  5     0x270ab  2      
  movl $0x10020458, (%r15,%rdi,1)  #  6     0x270ad  8      
  testl %ebx, %ebx                 #  7     0x270b5  2      
  jne .L_270e0                     #  8     0x270b7  6      
  popq %rbx                        #  9     0x270bd  2      
  popq %r11                        #  10    0x270bf  3      
  nop                              #  11    0x270c2  1      
  andl $0xffffffe0, %r11d          #  12    0x270c3  7      
  addq %r15, %r11                  #  13    0x270ca  3      
  jmpq %r11                        #  14    0x270cd  3      
  nop                              #  15    0x270d0  1      
  nop                              #  16    0x270d1  1      
.L_270e0:                          #        0x270d2  0      
  nop                              #  17    0x270d2  1      
  nop                              #  18    0x270d3  1      
  callq ._ZN2pp6Module3GetEv       #  19    0x270d4  5      
  movl %eax, %eax                  #  20    0x270d9  2      
  movl %ebx, %edi                  #  21    0x270db  2      
  movl %eax, %eax                  #  22    0x270dd  2      
  movl 0x24(%r15,%rax,1), %eax     #  23    0x270df  5      
  popq %rbx                        #  24    0x270e4  2      
  movl %eax, %eax                  #  25    0x270e6  2      
  movl (%r15,%rax,1), %eax         #  26    0x270e8  4      
  movl %eax, %eax                  #  27    0x270ec  2      
  movl 0x4(%r15,%rax,1), %eax      #  28    0x270ee  5      
  nop                              #  29    0x270f3  1      
  andl $0xffffffe0, %eax           #  30    0x270f4  5      
  addq %r15, %rax                  #  31    0x270f9  3      
  jmpq %rax                        #  32    0x270fc  2      
  nop                              #  33    0x270fe  1      
  nop                              #  34    0x270ff  1      
                                                            
.size _ZN2pp8ResourceD1Ev, .-_ZN2pp8ResourceD1Ev

