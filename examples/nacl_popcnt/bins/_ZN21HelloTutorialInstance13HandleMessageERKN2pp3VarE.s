  .text
  .globl _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE
  .type _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE, @function

#! file-offset 0x203a0
#! rip-offset  0x203a0
#! capacity    384 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE:  #        0x203a0  0      
  pushq %r12                                             #  1     0x203a0  3      
  movl %edi, %r12d                                       #  2     0x203a3  3      
  movl %esi, %edi                                        #  3     0x203a6  2      
  pushq %rbx                                             #  4     0x203a8  2      
  subl $0x28, %esp                                       #  5     0x203aa  3      
  addq %r15, %rsp                                        #  6     0x203ad  3      
  movl %edi, %edi                                        #  7     0x203b0  2      
  cmpl $0x3, 0x8(%r15,%rdi,1)                            #  8     0x203b2  6      
  je .L_203e0                                            #  9     0x203b8  6      
  nop                                                    #  10    0x203be  1      
.L_203c0:                                                #        0x203bf  0      
  addl $0x28, %esp                                       #  11    0x203bf  3      
  addq %r15, %rsp                                        #  12    0x203c2  3      
  popq %rbx                                              #  13    0x203c5  2      
  popq %r12                                              #  14    0x203c7  3      
  popq %r11                                              #  15    0x203ca  3      
  andl $0xffffffe0, %r11d                                #  16    0x203cd  7      
  addq %r15, %r11                                        #  17    0x203d4  3      
  jmpq %r11                                              #  18    0x203d7  3      
  nop                                                    #  19    0x203da  1      
.L_203e0:                                                #        0x203db  0      
  xorl %ebx, %ebx                                        #  20    0x203db  2      
  nop                                                    #  21    0x203dd  1      
  nop                                                    #  22    0x203de  1      
  callq ._ZNK2pp3Var5AsIntEv                             #  23    0x203df  5      
.L_20400:                                                #        0x203e4  0      
  xorl %esi, %esi                                        #  24    0x203e4  2      
  testl %eax, %eax                                       #  25    0x203e6  2      
  movl %eax, %edx                                        #  26    0x203e8  2      
  je .L_204c0                                            #  27    0x203ea  6      
  nop                                                    #  28    0x203f0  1      
  nop                                                    #  29    0x203f1  1      
.L_20420:                                                #        0x203f2  0      
  movl %edx, %ecx                                        #  30    0x203f2  2      
  andl $0x1, %ecx                                        #  31    0x203f4  3      
  cmpl $0x1, %ecx                                        #  32    0x203f7  3      
  sbbl $0xffffffff, %esi                                 #  33    0x203fa  6      
  shrl $0x1, %edx                                        #  34    0x20400  2      
  jne .L_20420                                           #  35    0x20402  6      
  addl $0x1, %ebx                                        #  36    0x20408  3      
  cmpl $0x186a0, %ebx                                    #  37    0x2040b  6      
  jne .L_20400                                           #  38    0x20411  6      
  nop                                                    #  39    0x20417  1      
.L_20440:                                                #        0x20418  0      
  movl %esp, %edi                                        #  40    0x20418  2      
  movl %esp, %ebx                                        #  41    0x2041a  2      
  nop                                                    #  42    0x2041c  1      
  nop                                                    #  43    0x2041d  1      
  callq ._ZN2pp3VarC1Ei                                  #  44    0x2041e  5      
  movl %esp, %esi                                        #  45    0x20423  2      
  movl %r12d, %edi                                       #  46    0x20425  3      
  nop                                                    #  47    0x20428  1      
  nop                                                    #  48    0x20429  1      
  callq ._ZN2pp8Instance11PostMessageERKNS_3VarE         #  49    0x2042a  5      
  movl %esp, %edi                                        #  50    0x2042f  2      
  nop                                                    #  51    0x20431  1      
  nop                                                    #  52    0x20432  1      
  callq ._ZN2pp3VarD1Ev                                  #  53    0x20433  5      
  jmpq .L_203c0                                          #  54    0x20438  5      
  nop                                                    #  55    0x2043d  1      
  nop                                                    #  56    0x2043e  1      
.L_204c0:                                                #        0x2043f  0      
  addl $0x1, %ebx                                        #  57    0x2043f  3      
  movl %eax, %esi                                        #  58    0x20442  2      
  cmpl $0x186a0, %ebx                                    #  59    0x20444  6      
  jne .L_20400                                           #  60    0x2044a  6      
  jmpq .L_20440                                          #  61    0x20450  5      
  nop                                                    #  62    0x20455  1      
  movl %eax, %r12d                                       #  63    0x20456  3      
  movl %ebx, %edi                                        #  64    0x20459  2      
  nop                                                    #  65    0x2045b  1      
  nop                                                    #  66    0x2045c  1      
  callq ._ZN2pp3VarD1Ev                                  #  67    0x2045d  5      
  movl %r12d, %edi                                       #  68    0x20462  3      
  nop                                                    #  69    0x20465  1      
  nop                                                    #  70    0x20466  1      
  callq ._Unwind_Resume                                  #  71    0x20467  5      
                                                                                  
.size _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE, .-_ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE

