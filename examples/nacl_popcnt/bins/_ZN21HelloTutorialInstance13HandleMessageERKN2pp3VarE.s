  .text
  .globl _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE
  .type _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE, @function

#! file-offset 0x20400
#! rip-offset  0x20400
#! capacity    448 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE:  #        0x20400  0      
  pushq %r12                                             #  1     0x20400  3      
  movl %edi, %r12d                                       #  2     0x20403  3      
  movl %esi, %edi                                        #  3     0x20406  2      
  pushq %rbx                                             #  4     0x20408  2      
  subl $0x28, %esp                                       #  5     0x2040a  3      
  addq %r15, %rsp                                        #  6     0x2040d  3      
  movl %edi, %edi                                        #  7     0x20410  2      
  cmpl $0x3, 0x8(%r15,%rdi,1)                            #  8     0x20412  6      
  je .L_20440                                            #  9     0x20418  6      
  addl $0x28, %esp                                       #  10    0x2041e  3      
  addq %r15, %rsp                                        #  11    0x20421  3      
  popq %rbx                                              #  12    0x20424  2      
  nop                                                    #  13    0x20426  1      
  popq %r12                                              #  14    0x20427  3      
  popq %r11                                              #  15    0x2042a  3      
  andl $0xffffffe0, %r11d                                #  16    0x2042d  7      
  addq %r15, %r11                                        #  17    0x20434  3      
  jmpq %r11                                              #  18    0x20437  3      
  nop                                                    #  19    0x2043a  1      
  nop                                                    #  20    0x2043b  1      
.L_20440:                                                #        0x2043c  0      
  nop                                                    #  21    0x2043c  1      
  nop                                                    #  22    0x2043d  1      
  callq ._ZNK2pp3Var5AsIntEv                             #  23    0x2043e  5      
  xorl %esi, %esi                                        #  24    0x20443  2      
  xorl %edi, %edi                                        #  25    0x20445  2      
  xorl %ecx, %ecx                                        #  26    0x20447  2      
  testl %eax, %eax                                       #  27    0x20449  2      
  je .L_20500                                            #  28    0x2044b  6      
  nop                                                    #  29    0x20451  1      
  nop                                                    #  30    0x20452  1      
.L_20480:                                                #        0x20453  0      
  addl $0x1, %edi                                        #  31    0x20453  3      
  cmpl %edi, %eax                                        #  32    0x20456  2      
  jbe .L_204e0                                           #  33    0x20458  6      
  nop                                                    #  34    0x2045e  1      
  nop                                                    #  35    0x2045f  1      
.L_204a0:                                                #        0x20460  0      
  testl %edi, %edi                                       #  36    0x20460  2      
  je .L_20480                                            #  37    0x20462  6      
  movl %edi, %edx                                        #  38    0x20468  2      
  nop                                                    #  39    0x2046a  1      
  nop                                                    #  40    0x2046b  1      
.L_204c0:                                                #        0x2046c  0      
  movl %edx, %ebx                                        #  41    0x2046c  2      
  andl $0x1, %ebx                                        #  42    0x2046e  3      
  cmpl $0x1, %ebx                                        #  43    0x20471  3      
  sbbl $0xffffffff, %ecx                                 #  44    0x20474  6      
  shrl $0x1, %edx                                        #  45    0x2047a  2      
  jne .L_204c0                                           #  46    0x2047c  6      
  addl $0x1, %edi                                        #  47    0x20482  3      
  cmpl %edi, %eax                                        #  48    0x20485  2      
  ja .L_204a0                                            #  49    0x20487  6      
  nop                                                    #  50    0x2048d  1      
.L_204e0:                                                #        0x2048e  0      
  movl %ecx, %esi                                        #  51    0x2048e  2      
  nop                                                    #  52    0x20490  1      
  nop                                                    #  53    0x20491  1      
.L_20500:                                                #        0x20492  0      
  movl %esp, %edi                                        #  54    0x20492  2      
  movl %esp, %ebx                                        #  55    0x20494  2      
  nop                                                    #  56    0x20496  1      
  nop                                                    #  57    0x20497  1      
  callq ._ZN2pp3VarC1Ei                                  #  58    0x20498  5      
  movl %esp, %esi                                        #  59    0x2049d  2      
  movl %r12d, %edi                                       #  60    0x2049f  3      
  nop                                                    #  61    0x204a2  1      
  nop                                                    #  62    0x204a3  1      
  callq ._ZN2pp8Instance11PostMessageERKNS_3VarE         #  63    0x204a4  5      
  movl %esp, %edi                                        #  64    0x204a9  2      
  nop                                                    #  65    0x204ab  1      
  nop                                                    #  66    0x204ac  1      
  callq ._ZN2pp3VarD1Ev                                  #  67    0x204ad  5      
  addl $0x28, %esp                                       #  68    0x204b2  3      
  addq %r15, %rsp                                        #  69    0x204b5  3      
  popq %rbx                                              #  70    0x204b8  2      
  popq %r12                                              #  71    0x204ba  3      
  popq %r11                                              #  72    0x204bd  3      
  andl $0xffffffe0, %r11d                                #  73    0x204c0  7      
  addq %r15, %r11                                        #  74    0x204c7  3      
  jmpq %r11                                              #  75    0x204ca  3      
  nop                                                    #  76    0x204cd  1      
  movl %eax, %r12d                                       #  77    0x204ce  3      
  movl %ebx, %edi                                        #  78    0x204d1  2      
  nop                                                    #  79    0x204d3  1      
  nop                                                    #  80    0x204d4  1      
  callq ._ZN2pp3VarD1Ev                                  #  81    0x204d5  5      
  movl %r12d, %edi                                       #  82    0x204da  3      
  nop                                                    #  83    0x204dd  1      
  nop                                                    #  84    0x204de  1      
  callq ._Unwind_Resume                                  #  85    0x204df  5      
                                                                                  
.size _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE, .-_ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE

