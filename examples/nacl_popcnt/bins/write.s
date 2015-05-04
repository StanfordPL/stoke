  .text
  .globl write
  .type write, @function

#! file-offset 0x68020
#! rip-offset  0x68020
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.write:                       #        0x68020  0      
  pushq %rbx                  #  1     0x68020  2      
  movl %esi, %esi             #  2     0x68022  2      
  subl $0x10, %esp            #  3     0x68024  3      
  addq %r15, %rsp             #  4     0x68027  3      
  movl 0xffc84e0(%rip), %eax  #  5     0x6802a  6      
  leal 0xc(%rsp), %ecx        #  6     0x68030  4      
  nop                         #  7     0x68034  1      
  andl $0xffffffe0, %eax      #  8     0x68035  5      
  addq %r15, %rax             #  9     0x6803a  3      
  callq %rax                  #  10    0x6803d  2      
  testl %eax, %eax            #  11    0x6803f  2      
  movl %eax, %ebx             #  12    0x68041  2      
  jne .L_68080                #  13    0x68043  6      
  movl 0xc(%rsp), %eax        #  14    0x68049  4      
  nop                         #  15    0x6804d  1      
  nop                         #  16    0x6804e  1      
.L_68060:                     #        0x6804f  0      
  addl $0x10, %esp            #  17    0x6804f  3      
  addq %r15, %rsp             #  18    0x68052  3      
  popq %rbx                   #  19    0x68055  2      
  popq %r11                   #  20    0x68057  3      
  andl $0xffffffe0, %r11d     #  21    0x6805a  7      
  addq %r15, %r11             #  22    0x68061  3      
  jmpq %r11                   #  23    0x68064  3      
  nop                         #  24    0x68067  1      
.L_68080:                     #        0x68068  0      
  nop                         #  25    0x68068  1      
  nop                         #  26    0x68069  1      
  callq .__errno              #  27    0x6806a  5      
  movl %eax, %eax             #  28    0x6806f  2      
  movl %eax, %eax             #  29    0x68071  2      
  movl %ebx, (%r15,%rax,1)    #  30    0x68073  4      
  movl $0xffffffff, %eax      #  31    0x68077  5      
  jmpq .L_68060               #  32    0x6807c  5      
  nop                         #  33    0x68081  1      
  nop                         #  34    0x68082  1      
  nop                         #  35    0x68083  1      
  nop                         #  36    0x68084  1      
  nop                         #  37    0x68085  1      
  nop                         #  38    0x68086  1      
  nop                         #  39    0x68087  1      
  nop                         #  40    0x68088  1      
  nop                         #  41    0x68089  1      
  nop                         #  42    0x6808a  1      
  nop                         #  43    0x6808b  1      
  nop                         #  44    0x6808c  1      
  nop                         #  45    0x6808d  1      
  nop                         #  46    0x6808e  1      
  nop                         #  47    0x6808f  1      
  nop                         #  48    0x68090  1      
  nop                         #  49    0x68091  1      
                                                       
.size write, .-write

