  .text
  .globl d_number
  .type d_number, @function

#! file-offset 0x4fca0
#! rip-offset  0x4fca0
#! capacity    224 bytes

# Text                           #  Line  RIP      Bytes  
.d_number:                       #        0x4fca0  0      
  movl %edi, %edi                #  1     0x4fca0  2      
  xorl %r8d, %r8d                #  2     0x4fca2  3      
  movl %edi, %edi                #  3     0x4fca5  2      
  movl 0xc(%r15,%rdi,1), %eax    #  4     0x4fca7  5      
  movl %eax, %eax                #  5     0x4fcac  2      
  movzbl (%r15,%rax,1), %ecx     #  6     0x4fcae  5      
  cmpb $0x6e, %cl                #  7     0x4fcb3  3      
  je .L_4fd40                    #  8     0x4fcb6  6      
  nop                            #  9     0x4fcbc  1      
.L_4fcc0:                        #        0x4fcbd  0      
  leal -0x30(%rcx), %eax         #  10    0x4fcbd  3      
  cmpb $0x9, %al                 #  11    0x4fcc0  2      
  ja .L_4fd60                    #  12    0x4fcc2  6      
  movl %edi, %edi                #  13    0x4fcc8  2      
  movl 0xc(%r15,%rdi,1), %edx    #  14    0x4fcca  5      
  xorl %eax, %eax                #  15    0x4fccf  2      
  nop                            #  16    0x4fcd1  1      
.L_4fce0:                        #        0x4fcd2  0      
  leal (%rax,%rax,4), %eax       #  17    0x4fcd2  3      
  addl $0x1, %edx                #  18    0x4fcd5  3      
  movsbl %cl, %ecx               #  19    0x4fcd8  3      
  movl %edi, %edi                #  20    0x4fcdb  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  21    0x4fcdd  5      
  leal -0x30(%rcx,%rax,2), %eax  #  22    0x4fce2  4      
  movl %edx, %edx                #  23    0x4fce6  2      
  movzbl (%r15,%rdx,1), %ecx     #  24    0x4fce8  5      
  leal -0x30(%rcx), %esi         #  25    0x4fced  3      
  xchgw %ax, %ax                 #  26    0x4fcf0  3      
  cmpb $0x9, %sil                #  27    0x4fcf3  4      
  jbe .L_4fce0                   #  28    0x4fcf7  6      
  nop                            #  29    0x4fcfd  1      
  nop                            #  30    0x4fcfe  1      
.L_4fd20:                        #        0x4fcff  0      
  popq %r11                      #  31    0x4fcff  3      
  movl %eax, %edx                #  32    0x4fd02  2      
  negl %edx                      #  33    0x4fd04  2      
  testl %r8d, %r8d               #  34    0x4fd06  3      
  cmovnel %edx, %eax             #  35    0x4fd09  3      
  andl $0xffffffe0, %r11d        #  36    0x4fd0c  7      
  addq %r15, %r11                #  37    0x4fd13  3      
  jmpq %r11                      #  38    0x4fd16  3      
  nop                            #  39    0x4fd19  1      
.L_4fd40:                        #        0x4fd1a  0      
  addl $0x1, %eax                #  40    0x4fd1a  3      
  movb $0x1, %r8b                #  41    0x4fd1d  3      
  movl %edi, %edi                #  42    0x4fd20  2      
  movl %eax, 0xc(%r15,%rdi,1)    #  43    0x4fd22  5      
  movl %eax, %eax                #  44    0x4fd27  2      
  movzbl (%r15,%rax,1), %ecx     #  45    0x4fd29  5      
  jmpq .L_4fcc0                  #  46    0x4fd2e  5      
  nop                            #  47    0x4fd33  1      
.L_4fd60:                        #        0x4fd34  0      
  xorl %eax, %eax                #  48    0x4fd34  2      
  jmpq .L_4fd20                  #  49    0x4fd36  5      
  nop                            #  50    0x4fd3b  1      
  nop                            #  51    0x4fd3c  1      
                                                          
.size d_number, .-d_number

