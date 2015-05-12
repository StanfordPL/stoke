  .text
  .globl _ZNKSs6substrEjj
  .type _ZNKSs6substrEjj, @function

#! file-offset 0x47a20
#! rip-offset  0x47a20
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs6substrEjj:                      #        0x47a20  0      
  movl %esi, %esi                       #  1     0x47a20  2      
  pushq %rbx                            #  2     0x47a22  2      
  movl %edi, %ebx                       #  3     0x47a24  2      
  movl %esi, %esi                       #  4     0x47a26  2      
  movl (%r15,%rsi,1), %eax              #  5     0x47a28  4      
  subl $0xc, %eax                       #  6     0x47a2c  3      
  movl %eax, %eax                       #  7     0x47a2f  2      
  cmpl (%r15,%rax,1), %edx              #  8     0x47a31  4      
  ja .L_47a60                           #  9     0x47a35  6      
  movl %ebx, %edi                       #  10    0x47a3b  2      
  nop                                   #  11    0x47a3d  1      
  callq ._ZNSsC1ERKSsjj                 #  12    0x47a3e  5      
  movl %ebx, %eax                       #  13    0x47a43  2      
  popq %rbx                             #  14    0x47a45  2      
  popq %r11                             #  15    0x47a47  3      
  andl $0xffffffe0, %r11d               #  16    0x47a4a  7      
  addq %r15, %r11                       #  17    0x47a51  3      
  jmpq %r11                             #  18    0x47a54  3      
  xchgw %ax, %ax                        #  19    0x47a57  3      
  nop                                   #  20    0x47a5a  1      
.L_47a60:                               #        0x47a5b  0      
  movl $0x10020a0d, %edi                #  21    0x47a5b  5      
  nop                                   #  22    0x47a60  1      
  nop                                   #  23    0x47a61  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  24    0x47a62  5      
                                                                 
.size _ZNKSs6substrEjj, .-_ZNKSs6substrEjj

