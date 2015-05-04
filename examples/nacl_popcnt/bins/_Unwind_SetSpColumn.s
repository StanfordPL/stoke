  .text
  .globl _Unwind_SetSpColumn
  .type _Unwind_SetSpColumn, @function

#! file-offset 0x59220
#! rip-offset  0x59220
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_SetSpColumn:             #        0x59220  0      
  subl $0x8, %esp                 #  1     0x59220  3      
  addq %r15, %rsp                 #  2     0x59223  3      
  movzbl 0xffdd61a(%rip), %eax    #  3     0x59226  7      
  movl %edi, %edi                 #  4     0x5922d  2      
  movl %esi, %esi                 #  5     0x5922f  2      
  movl %edx, %edx                 #  6     0x59231  2      
  cmpl $0x4, %eax                 #  7     0x59233  3      
  je .L_592a0                     #  8     0x59236  6      
  cmpl $0x8, %eax                 #  9     0x5923c  3      
  nop                             #  10    0x5923f  1      
  jne .L_592c0                    #  11    0x59240  6      
  movl %edx, %edx                 #  12    0x59246  2      
  movq %rsi, (%r15,%rdx,1)        #  13    0x59248  4      
  nop                             #  14    0x5924c  1      
  nop                             #  15    0x5924d  1      
.L_59260:                         #        0x5924e  0      
  movl %edi, %edi                 #  16    0x5924e  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  17    0x59250  6      
  je .L_59280                     #  18    0x59256  6      
  movl %edi, %edi                 #  19    0x5925c  2      
  movb $0x0, 0x7f(%r15,%rdi,1)    #  20    0x5925e  6      
  nop                             #  21    0x59264  1      
.L_59280:                         #        0x59265  0      
  movl %edi, %edi                 #  22    0x59265  2      
  movl %edx, 0x1c(%r15,%rdi,1)    #  23    0x59267  5      
  addl $0x8, %esp                 #  24    0x5926c  3      
  addq %r15, %rsp                 #  25    0x5926f  3      
  popq %r11                       #  26    0x59272  3      
  andl $0xffffffe0, %r11d         #  27    0x59275  7      
  addq %r15, %r11                 #  28    0x5927c  3      
  jmpq %r11                       #  29    0x5927f  3      
  nop                             #  30    0x59282  1      
.L_592a0:                         #        0x59283  0      
  movl %edx, %edx                 #  31    0x59283  2      
  movl %esi, (%r15,%rdx,1)        #  32    0x59285  4      
  jmpq .L_59260                   #  33    0x59289  5      
  nop                             #  34    0x5928e  1      
  nop                             #  35    0x5928f  1      
.L_592c0:                         #        0x59290  0      
  nop                             #  36    0x59290  1      
  nop                             #  37    0x59291  1      
  callq .abort                    #  38    0x59292  5      
                                                           
.size _Unwind_SetSpColumn, .-_Unwind_SetSpColumn

