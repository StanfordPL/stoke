  .text
  .globl _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE
  .type _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE, @function

#! file-offset 0x203a0
#! rip-offset  0x203a0
#! capacity    416 bytes

# Text                                                   #  Line  RIP      Bytes  
._ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE:  #        0x203a0  0      
  pushq %r14                                             #  1     0x203a0  3      
  pushq %r13                                             #  2     0x203a3  3      
  pushq %r12                                             #  3     0x203a6  3      
  movl %edi, %r12d                                       #  4     0x203a9  3      
  movl %esi, %edi                                        #  5     0x203ac  2      
  pushq %rbx                                             #  6     0x203ae  2      
  subl $0x38, %esp                                       #  7     0x203b0  3      
  addq %r15, %rsp                                        #  8     0x203b3  3      
  movl %edi, %edi                                        #  9     0x203b6  2      
  cmpl $0x3, 0x8(%r15,%rdi,1)                            #  10    0x203b8  6      
  je .L_203e0                                            #  11    0x203be  6      
  nop                                                    #  12    0x203c4  1      
.L_203c0:                                                #        0x203c5  0      
  addl $0x38, %esp                                       #  13    0x203c5  3      
  addq %r15, %rsp                                        #  14    0x203c8  3      
  popq %rbx                                              #  15    0x203cb  2      
  popq %r12                                              #  16    0x203cd  3      
  popq %r13                                              #  17    0x203d0  3      
  popq %r14                                              #  18    0x203d3  3      
  popq %r11                                              #  19    0x203d6  3      
  andl $0xffffffe0, %r11d                                #  20    0x203d9  7      
  addq %r15, %r11                                        #  21    0x203e0  3      
  jmpq %r11                                              #  22    0x203e3  3      
  nop                                                    #  23    0x203e6  1      
.L_203e0:                                                #        0x203e7  0      
  nop                                                    #  24    0x203e7  1      
  nop                                                    #  25    0x203e8  1      
  callq ._ZNK2pp3Var5AsIntEv                             #  26    0x203e9  5      
  xorl %r13d, %r13d                                      #  27    0x203ee  3      
  movl %eax, %r14d                                       #  28    0x203f1  3      
  movl $0x0, 0xc(%rsp)                                   #  29    0x203f4  8      
  nop                                                    #  30    0x203fc  1      
  nop                                                    #  31    0x203fd  1      
.L_20420:                                                #        0x203fe  0      
  xorl %ebx, %ebx                                        #  32    0x203fe  2      
  testl %r14d, %r14d                                     #  33    0x20400  3      
  je .L_20480                                            #  34    0x20403  6      
  nop                                                    #  35    0x20409  1      
  nop                                                    #  36    0x2040a  1      
.L_20440:                                                #        0x2040b  0      
  movl %ebx, %edi                                        #  37    0x2040b  2      
  addl $0x1, %ebx                                        #  38    0x2040d  3      
  nop                                                    #  39    0x20410  1      
  nop                                                    #  40    0x20411  1      
  callq ._Z7computej                                     #  41    0x20412  5      
  addl %eax, %r13d                                       #  42    0x20417  3      
  cmpl %ebx, %r14d                                       #  43    0x2041a  3      
  ja .L_20440                                            #  44    0x2041d  6      
  nop                                                    #  45    0x20423  1      
  nop                                                    #  46    0x20424  1      
.L_20480:                                                #        0x20425  0      
  addl $0x1, 0xc(%rsp)                                   #  47    0x20425  5      
  cmpl $0x989680, 0xc(%rsp)                              #  48    0x2042a  8      
  jne .L_20420                                           #  49    0x20432  6      
  leal 0x10(%rsp), %ebx                                  #  50    0x20438  4      
  movl %r13d, %esi                                       #  51    0x2043c  3      
  movl %ebx, %edi                                        #  52    0x2043f  2      
  nop                                                    #  53    0x20441  1      
  callq ._ZN2pp3VarC1Ei                                  #  54    0x20442  5      
  movl %ebx, %esi                                        #  55    0x20447  2      
  movl %r12d, %edi                                       #  56    0x20449  3      
  nop                                                    #  57    0x2044c  1      
  nop                                                    #  58    0x2044d  1      
  callq ._ZN2pp8Instance11PostMessageERKNS_3VarE         #  59    0x2044e  5      
  movl %ebx, %edi                                        #  60    0x20453  2      
  nop                                                    #  61    0x20455  1      
  nop                                                    #  62    0x20456  1      
  callq ._ZN2pp3VarD1Ev                                  #  63    0x20457  5      
  jmpq .L_203c0                                          #  64    0x2045c  5      
  nop                                                    #  65    0x20461  1      
  nop                                                    #  66    0x20462  1      
  movl %eax, %r12d                                       #  67    0x20463  3      
  movl %ebx, %edi                                        #  68    0x20466  2      
  nop                                                    #  69    0x20468  1      
  nop                                                    #  70    0x20469  1      
  callq ._ZN2pp3VarD1Ev                                  #  71    0x2046a  5      
  movl %r12d, %edi                                       #  72    0x2046f  3      
  nop                                                    #  73    0x20472  1      
  nop                                                    #  74    0x20473  1      
  callq ._Unwind_Resume                                  #  75    0x20474  5      
                                                                                  
.size _ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE, .-_ZN21HelloTutorialInstance13HandleMessageERKN2pp3VarE

