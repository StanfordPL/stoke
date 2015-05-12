  .text
  .globl d_number
  .type d_number, @function

#! file-offset 0x4fc20
#! rip-offset  0x4fc20
#! capacity    224 bytes

# Text                           #  Line  RIP      Bytes  
.d_number:                       #        0x4fc20  0      
  movl %edi, %edi                #  1     0x4fc20  2      
  xorl %r8d, %r8d                #  2     0x4fc22  3      
  movl %edi, %edi                #  3     0x4fc25  2      
  movl 0xc(%r15,%rdi,1), %eax    #  4     0x4fc27  5      
  movl %eax, %eax                #  5     0x4fc2c  2      
  movzbl (%r15,%rax,1), %ecx     #  6     0x4fc2e  5      
  cmpb $0x6e, %cl                #  7     0x4fc33  3      
  je .L_4fcc0                    #  8     0x4fc36  6      
  nop                            #  9     0x4fc3c  1      
.L_4fc40:                        #        0x4fc3d  0      
  leal -0x30(%rcx), %eax         #  10    0x4fc3d  3      
  cmpb $0x9, %al                 #  11    0x4fc40  2      
  ja .L_4fce0                    #  12    0x4fc42  6      
  movl %edi, %edi                #  13    0x4fc48  2      
  movl 0xc(%r15,%rdi,1), %edx    #  14    0x4fc4a  5      
  xorl %eax, %eax                #  15    0x4fc4f  2      
  nop                            #  16    0x4fc51  1      
.L_4fc60:                        #        0x4fc52  0      
  leal (%rax,%rax,4), %eax       #  17    0x4fc52  3      
  addl $0x1, %edx                #  18    0x4fc55  3      
  movsbl %cl, %ecx               #  19    0x4fc58  3      
  movl %edi, %edi                #  20    0x4fc5b  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  21    0x4fc5d  5      
  leal -0x30(%rcx,%rax,2), %eax  #  22    0x4fc62  4      
  movl %edx, %edx                #  23    0x4fc66  2      
  movzbl (%r15,%rdx,1), %ecx     #  24    0x4fc68  5      
  leal -0x30(%rcx), %esi         #  25    0x4fc6d  3      
  xchgw %ax, %ax                 #  26    0x4fc70  3      
  cmpb $0x9, %sil                #  27    0x4fc73  4      
  jbe .L_4fc60                   #  28    0x4fc77  6      
  nop                            #  29    0x4fc7d  1      
  nop                            #  30    0x4fc7e  1      
.L_4fca0:                        #        0x4fc7f  0      
  popq %r11                      #  31    0x4fc7f  3      
  movl %eax, %edx                #  32    0x4fc82  2      
  negl %edx                      #  33    0x4fc84  2      
  testl %r8d, %r8d               #  34    0x4fc86  3      
  cmovnel %edx, %eax             #  35    0x4fc89  3      
  andl $0xffffffe0, %r11d        #  36    0x4fc8c  7      
  addq %r15, %r11                #  37    0x4fc93  3      
  jmpq %r11                      #  38    0x4fc96  3      
  nop                            #  39    0x4fc99  1      
.L_4fcc0:                        #        0x4fc9a  0      
  addl $0x1, %eax                #  40    0x4fc9a  3      
  movb $0x1, %r8b                #  41    0x4fc9d  3      
  movl %edi, %edi                #  42    0x4fca0  2      
  movl %eax, 0xc(%r15,%rdi,1)    #  43    0x4fca2  5      
  movl %eax, %eax                #  44    0x4fca7  2      
  movzbl (%r15,%rax,1), %ecx     #  45    0x4fca9  5      
  jmpq .L_4fc40                  #  46    0x4fcae  5      
  nop                            #  47    0x4fcb3  1      
.L_4fce0:                        #        0x4fcb4  0      
  xorl %eax, %eax                #  48    0x4fcb4  2      
  jmpq .L_4fca0                  #  49    0x4fcb6  5      
  nop                            #  50    0x4fcbb  1      
  nop                            #  51    0x4fcbc  1      
                                                          
.size d_number, .-d_number

