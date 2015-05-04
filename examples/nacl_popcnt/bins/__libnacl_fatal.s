  .text
  .globl __libnacl_fatal
  .type __libnacl_fatal, @function

#! file-offset 0x676a0
#! rip-offset  0x676a0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.__libnacl_fatal:             #        0x676a0  0      
  subl $0x18, %esp            #  1     0x676a0  3      
  addq %r15, %rsp             #  2     0x676a3  3      
  movl 0xffc8e64(%rip), %eax  #  3     0x676a6  6      
  movl %edi, %esi             #  4     0x676ac  2      
  testq %rax, %rax            #  5     0x676ae  3      
  je .L_67720                 #  6     0x676b1  6      
  xorl %edx, %edx             #  7     0x676b7  2      
  movl %esi, %esi             #  8     0x676b9  2      
  cmpb $0x0, (%r15,%rsi,1)    #  9     0x676bb  5      
  nop                         #  10    0x676c0  1      
  je .L_67700                 #  11    0x676c1  6      
  leal 0x1(%rsi), %ecx        #  12    0x676c7  3      
  nop                         #  13    0x676ca  1      
  nop                         #  14    0x676cb  1      
.L_676e0:                     #        0x676cc  0      
  movl %ecx, %ecx             #  15    0x676cc  2      
  movzbl (%r15,%rcx,1), %edi  #  16    0x676ce  5      
  addl $0x1, %edx             #  17    0x676d3  3      
  addl $0x1, %ecx             #  18    0x676d6  3      
  testb %dil, %dil            #  19    0x676d9  3      
  jne .L_676e0                #  20    0x676dc  6      
  nop                         #  21    0x676e2  1      
.L_67700:                     #        0x676e3  0      
  leal 0xc(%rsp), %ecx        #  22    0x676e3  4      
  movl $0x2, %edi             #  23    0x676e7  5      
  nop                         #  24    0x676ec  1      
  andl $0xffffffe0, %eax      #  25    0x676ed  5      
  addq %r15, %rax             #  26    0x676f2  3      
  callq %rax                  #  27    0x676f5  2      
.L_67720:                     #        0x676f7  0      
  ud2                         #  28    0x676f7  2      
  nop                         #  29    0x676f9  1      
  nop                         #  30    0x676fa  1      
                                                       
.size __libnacl_fatal, .-__libnacl_fatal

