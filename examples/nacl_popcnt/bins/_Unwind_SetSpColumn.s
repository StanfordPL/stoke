  .text
  .globl _Unwind_SetSpColumn
  .type _Unwind_SetSpColumn, @function

#! file-offset 0x591a0
#! rip-offset  0x591a0
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_SetSpColumn:             #        0x591a0  0      
  subl $0x8, %esp                 #  1     0x591a0  3      
  addq %r15, %rsp                 #  2     0x591a3  3      
  movzbl 0xffdd69a(%rip), %eax    #  3     0x591a6  7      
  movl %edi, %edi                 #  4     0x591ad  2      
  movl %esi, %esi                 #  5     0x591af  2      
  movl %edx, %edx                 #  6     0x591b1  2      
  cmpl $0x4, %eax                 #  7     0x591b3  3      
  je .L_59220                     #  8     0x591b6  6      
  cmpl $0x8, %eax                 #  9     0x591bc  3      
  nop                             #  10    0x591bf  1      
  jne .L_59240                    #  11    0x591c0  6      
  movl %edx, %edx                 #  12    0x591c6  2      
  movq %rsi, (%r15,%rdx,1)        #  13    0x591c8  4      
  nop                             #  14    0x591cc  1      
  nop                             #  15    0x591cd  1      
.L_591e0:                         #        0x591ce  0      
  movl %edi, %edi                 #  16    0x591ce  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  17    0x591d0  6      
  je .L_59200                     #  18    0x591d6  6      
  movl %edi, %edi                 #  19    0x591dc  2      
  movb $0x0, 0x7f(%r15,%rdi,1)    #  20    0x591de  6      
  nop                             #  21    0x591e4  1      
.L_59200:                         #        0x591e5  0      
  movl %edi, %edi                 #  22    0x591e5  2      
  movl %edx, 0x1c(%r15,%rdi,1)    #  23    0x591e7  5      
  addl $0x8, %esp                 #  24    0x591ec  3      
  addq %r15, %rsp                 #  25    0x591ef  3      
  popq %r11                       #  26    0x591f2  3      
  andl $0xffffffe0, %r11d         #  27    0x591f5  7      
  addq %r15, %r11                 #  28    0x591fc  3      
  jmpq %r11                       #  29    0x591ff  3      
  nop                             #  30    0x59202  1      
.L_59220:                         #        0x59203  0      
  movl %edx, %edx                 #  31    0x59203  2      
  movl %esi, (%r15,%rdx,1)        #  32    0x59205  4      
  jmpq .L_591e0                   #  33    0x59209  5      
  nop                             #  34    0x5920e  1      
  nop                             #  35    0x5920f  1      
.L_59240:                         #        0x59210  0      
  nop                             #  36    0x59210  1      
  nop                             #  37    0x59211  1      
  callq .abort                    #  38    0x59212  5      
                                                           
.size _Unwind_SetSpColumn, .-_Unwind_SetSpColumn

