  .text
  .globl d_number
  .type d_number, @function

#! file-offset 0x4fc00
#! rip-offset  0x4fc00
#! capacity    224 bytes

# Text                           #  Line  RIP      Bytes  
.d_number:                       #        0x4fc00  0      
  movl %edi, %edi                #  1     0x4fc00  2      
  xorl %r8d, %r8d                #  2     0x4fc02  3      
  movl %edi, %edi                #  3     0x4fc05  2      
  movl 0xc(%r15,%rdi,1), %eax    #  4     0x4fc07  5      
  movl %eax, %eax                #  5     0x4fc0c  2      
  movzbl (%r15,%rax,1), %ecx     #  6     0x4fc0e  5      
  cmpb $0x6e, %cl                #  7     0x4fc13  3      
  je .L_4fca0                    #  8     0x4fc16  6      
  nop                            #  9     0x4fc1c  1      
.L_4fc20:                        #        0x4fc1d  0      
  leal -0x30(%rcx), %eax         #  10    0x4fc1d  3      
  cmpb $0x9, %al                 #  11    0x4fc20  2      
  ja .L_4fcc0                    #  12    0x4fc22  6      
  movl %edi, %edi                #  13    0x4fc28  2      
  movl 0xc(%r15,%rdi,1), %edx    #  14    0x4fc2a  5      
  xorl %eax, %eax                #  15    0x4fc2f  2      
  nop                            #  16    0x4fc31  1      
.L_4fc40:                        #        0x4fc32  0      
  leal (%rax,%rax,4), %eax       #  17    0x4fc32  3      
  addl $0x1, %edx                #  18    0x4fc35  3      
  movsbl %cl, %ecx               #  19    0x4fc38  3      
  movl %edi, %edi                #  20    0x4fc3b  2      
  movl %edx, 0xc(%r15,%rdi,1)    #  21    0x4fc3d  5      
  leal -0x30(%rcx,%rax,2), %eax  #  22    0x4fc42  4      
  movl %edx, %edx                #  23    0x4fc46  2      
  movzbl (%r15,%rdx,1), %ecx     #  24    0x4fc48  5      
  leal -0x30(%rcx), %esi         #  25    0x4fc4d  3      
  xchgw %ax, %ax                 #  26    0x4fc50  3      
  cmpb $0x9, %sil                #  27    0x4fc53  4      
  jbe .L_4fc40                   #  28    0x4fc57  6      
  nop                            #  29    0x4fc5d  1      
  nop                            #  30    0x4fc5e  1      
.L_4fc80:                        #        0x4fc5f  0      
  popq %r11                      #  31    0x4fc5f  3      
  movl %eax, %edx                #  32    0x4fc62  2      
  negl %edx                      #  33    0x4fc64  2      
  testl %r8d, %r8d               #  34    0x4fc66  3      
  cmovnel %edx, %eax             #  35    0x4fc69  3      
  andl $0xffffffe0, %r11d        #  36    0x4fc6c  7      
  addq %r15, %r11                #  37    0x4fc73  3      
  jmpq %r11                      #  38    0x4fc76  3      
  nop                            #  39    0x4fc79  1      
.L_4fca0:                        #        0x4fc7a  0      
  addl $0x1, %eax                #  40    0x4fc7a  3      
  movb $0x1, %r8b                #  41    0x4fc7d  3      
  movl %edi, %edi                #  42    0x4fc80  2      
  movl %eax, 0xc(%r15,%rdi,1)    #  43    0x4fc82  5      
  movl %eax, %eax                #  44    0x4fc87  2      
  movzbl (%r15,%rax,1), %ecx     #  45    0x4fc89  5      
  jmpq .L_4fc20                  #  46    0x4fc8e  5      
  nop                            #  47    0x4fc93  1      
.L_4fcc0:                        #        0x4fc94  0      
  xorl %eax, %eax                #  48    0x4fc94  2      
  jmpq .L_4fc80                  #  49    0x4fc96  5      
  nop                            #  50    0x4fc9b  1      
  nop                            #  51    0x4fc9c  1      
                                                          
.size d_number, .-d_number

