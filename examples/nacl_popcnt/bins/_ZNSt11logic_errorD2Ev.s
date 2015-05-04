  .text
  .globl _ZNSt11logic_errorD2Ev
  .type _ZNSt11logic_errorD2Ev, @function

#! file-offset 0x4e480
#! rip-offset  0x4e480
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD2Ev:                 #        0x4e480  0      
  pushq %rbx                             #  1     0x4e480  2      
  movl %edi, %ebx                        #  2     0x4e482  2      
  subl $0x10, %esp                       #  3     0x4e484  3      
  addq %r15, %rsp                        #  4     0x4e487  3      
  movl %ebx, %ebx                        #  5     0x4e48a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e48c  5      
  movl %ebx, %ebx                        #  7     0x4e491  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4e493  8      
  subl $0xc, %edi                        #  9     0x4e49b  3      
  nop                                    #  10    0x4e49e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e49f  6      
  jne .L_4e500                           #  12    0x4e4a5  6      
  nop                                    #  13    0x4e4ab  1      
  nop                                    #  14    0x4e4ac  1      
.L_4e4c0:                                #        0x4e4ad  0      
  movl %ebx, %edi                        #  15    0x4e4ad  2      
  nop                                    #  16    0x4e4af  1      
  nop                                    #  17    0x4e4b0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e4b1  5      
  addl $0x10, %esp                       #  19    0x4e4b6  3      
  addq %r15, %rsp                        #  20    0x4e4b9  3      
  popq %rbx                              #  21    0x4e4bc  2      
  popq %r11                              #  22    0x4e4be  3      
  andl $0xffffffe0, %r11d                #  23    0x4e4c1  7      
  addq %r15, %r11                        #  24    0x4e4c8  3      
  jmpq %r11                              #  25    0x4e4cb  3      
  nop                                    #  26    0x4e4ce  1      
.L_4e500:                                #        0x4e4cf  0      
  movl %edi, %edi                        #  27    0x4e4cf  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4e4d1  5      
  leal -0x1(%rax), %edx                  #  29    0x4e4d6  3      
  testl %eax, %eax                       #  30    0x4e4d9  2      
  movl %edi, %edi                        #  31    0x4e4db  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4e4dd  5      
  jg .L_4e4c0                            #  33    0x4e4e2  6      
  leal 0xf(%rsp), %esi                   #  34    0x4e4e8  4      
  xchgw %ax, %ax                         #  35    0x4e4ec  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4e4ef  5      
  jmpq .L_4e4c0                          #  37    0x4e4f4  5      
  nop                                    #  38    0x4e4f9  1      
  nop                                    #  39    0x4e4fa  1      
  nop                                    #  40    0x4e4fb  1      
  nop                                    #  41    0x4e4fc  1      
  nop                                    #  42    0x4e4fd  1      
  nop                                    #  43    0x4e4fe  1      
  nop                                    #  44    0x4e4ff  1      
  nop                                    #  45    0x4e500  1      
  nop                                    #  46    0x4e501  1      
  nop                                    #  47    0x4e502  1      
  nop                                    #  48    0x4e503  1      
  nop                                    #  49    0x4e504  1      
  nop                                    #  50    0x4e505  1      
  nop                                    #  51    0x4e506  1      
  nop                                    #  52    0x4e507  1      
  nop                                    #  53    0x4e508  1      
  nop                                    #  54    0x4e509  1      
  nop                                    #  55    0x4e50a  1      
  nop                                    #  56    0x4e50b  1      
  nop                                    #  57    0x4e50c  1      
  nop                                    #  58    0x4e50d  1      
  nop                                    #  59    0x4e50e  1      
  nop                                    #  60    0x4e50f  1      
  nop                                    #  61    0x4e510  1      
  nop                                    #  62    0x4e511  1      
  nop                                    #  63    0x4e512  1      
  nop                                    #  64    0x4e513  1      
  nop                                    #  65    0x4e514  1      
  nop                                    #  66    0x4e515  1      
  nop                                    #  67    0x4e516  1      
                                                                  
.size _ZNSt11logic_errorD2Ev, .-_ZNSt11logic_errorD2Ev

