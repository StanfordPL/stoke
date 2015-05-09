  .text
  .globl _ZNKSs6substrEjj
  .type _ZNKSs6substrEjj, @function

#! file-offset 0x47a00
#! rip-offset  0x47a00
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs6substrEjj:                      #        0x47a00  0      
  movl %esi, %esi                       #  1     0x47a00  2      
  pushq %rbx                            #  2     0x47a02  2      
  movl %edi, %ebx                       #  3     0x47a04  2      
  movl %esi, %esi                       #  4     0x47a06  2      
  movl (%r15,%rsi,1), %eax              #  5     0x47a08  4      
  subl $0xc, %eax                       #  6     0x47a0c  3      
  movl %eax, %eax                       #  7     0x47a0f  2      
  cmpl (%r15,%rax,1), %edx              #  8     0x47a11  4      
  ja .L_47a40                           #  9     0x47a15  6      
  movl %ebx, %edi                       #  10    0x47a1b  2      
  nop                                   #  11    0x47a1d  1      
  callq ._ZNSsC1ERKSsjj                 #  12    0x47a1e  5      
  movl %ebx, %eax                       #  13    0x47a23  2      
  popq %rbx                             #  14    0x47a25  2      
  popq %r11                             #  15    0x47a27  3      
  andl $0xffffffe0, %r11d               #  16    0x47a2a  7      
  addq %r15, %r11                       #  17    0x47a31  3      
  jmpq %r11                             #  18    0x47a34  3      
  xchgw %ax, %ax                        #  19    0x47a37  3      
  nop                                   #  20    0x47a3a  1      
.L_47a40:                               #        0x47a3b  0      
  movl $0x10020a0d, %edi                #  21    0x47a3b  5      
  nop                                   #  22    0x47a40  1      
  nop                                   #  23    0x47a41  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  24    0x47a42  5      
                                                                 
.size _ZNKSs6substrEjj, .-_ZNKSs6substrEjj

