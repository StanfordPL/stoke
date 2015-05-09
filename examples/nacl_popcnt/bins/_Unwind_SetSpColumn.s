  .text
  .globl _Unwind_SetSpColumn
  .type _Unwind_SetSpColumn, @function

#! file-offset 0x59180
#! rip-offset  0x59180
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  
._Unwind_SetSpColumn:             #        0x59180  0      
  subl $0x8, %esp                 #  1     0x59180  3      
  addq %r15, %rsp                 #  2     0x59183  3      
  movzbl 0xffdd6ba(%rip), %eax    #  3     0x59186  7      
  movl %edi, %edi                 #  4     0x5918d  2      
  movl %esi, %esi                 #  5     0x5918f  2      
  movl %edx, %edx                 #  6     0x59191  2      
  cmpl $0x4, %eax                 #  7     0x59193  3      
  je .L_59200                     #  8     0x59196  6      
  cmpl $0x8, %eax                 #  9     0x5919c  3      
  nop                             #  10    0x5919f  1      
  jne .L_59220                    #  11    0x591a0  6      
  movl %edx, %edx                 #  12    0x591a6  2      
  movq %rsi, (%r15,%rdx,1)        #  13    0x591a8  4      
  nop                             #  14    0x591ac  1      
  nop                             #  15    0x591ad  1      
.L_591c0:                         #        0x591ae  0      
  movl %edi, %edi                 #  16    0x591ae  2      
  testb $0x40, 0x67(%r15,%rdi,1)  #  17    0x591b0  6      
  je .L_591e0                     #  18    0x591b6  6      
  movl %edi, %edi                 #  19    0x591bc  2      
  movb $0x0, 0x7f(%r15,%rdi,1)    #  20    0x591be  6      
  nop                             #  21    0x591c4  1      
.L_591e0:                         #        0x591c5  0      
  movl %edi, %edi                 #  22    0x591c5  2      
  movl %edx, 0x1c(%r15,%rdi,1)    #  23    0x591c7  5      
  addl $0x8, %esp                 #  24    0x591cc  3      
  addq %r15, %rsp                 #  25    0x591cf  3      
  popq %r11                       #  26    0x591d2  3      
  andl $0xffffffe0, %r11d         #  27    0x591d5  7      
  addq %r15, %r11                 #  28    0x591dc  3      
  jmpq %r11                       #  29    0x591df  3      
  nop                             #  30    0x591e2  1      
.L_59200:                         #        0x591e3  0      
  movl %edx, %edx                 #  31    0x591e3  2      
  movl %esi, (%r15,%rdx,1)        #  32    0x591e5  4      
  jmpq .L_591c0                   #  33    0x591e9  5      
  nop                             #  34    0x591ee  1      
  nop                             #  35    0x591ef  1      
.L_59220:                         #        0x591f0  0      
  nop                             #  36    0x591f0  1      
  nop                             #  37    0x591f1  1      
  callq .abort                    #  38    0x591f2  5      
                                                           
.size _Unwind_SetSpColumn, .-_Unwind_SetSpColumn

