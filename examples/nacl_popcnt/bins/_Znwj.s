  .text
  .globl _Znwj
  .type _Znwj, @function

#! file-offset 0x4c920
#! rip-offset  0x4c920
#! capacity    256 bytes

# Text                             #  Line  RIP      Bytes  
._Znwj:                            #        0x4c920  0      
  pushq %rbx                       #  1     0x4c920  2      
  testl %edi, %edi                 #  2     0x4c922  2      
  movl %edi, %ebx                  #  3     0x4c924  2      
  movl $0x1, %eax                  #  4     0x4c926  5      
  cmovel %eax, %ebx                #  5     0x4c92b  3      
  jmpq .L_4c960                    #  6     0x4c92e  5      
  xchgw %ax, %ax                   #  7     0x4c933  3      
  nop                              #  8     0x4c936  1      
.L_4c940:                          #        0x4c937  0      
  movl 0xffe9eef(%rip), %eax       #  9     0x4c937  6      
  testq %rax, %rax                 #  10    0x4c93d  3      
  je .L_4c9a0                      #  11    0x4c940  6      
  nop                              #  12    0x4c946  1      
  andl $0xffffffe0, %eax           #  13    0x4c947  5      
  addq %r15, %rax                  #  14    0x4c94c  3      
  callq %rax                       #  15    0x4c94f  2      
.L_4c960:                          #        0x4c951  0      
  movl %ebx, %edi                  #  16    0x4c951  2      
  nop                              #  17    0x4c953  1      
  nop                              #  18    0x4c954  1      
  callq .malloc                    #  19    0x4c955  5      
  movl %eax, %eax                  #  20    0x4c95a  2      
  testq %rax, %rax                 #  21    0x4c95c  3      
  je .L_4c940                      #  22    0x4c95f  6      
  popq %rbx                        #  23    0x4c965  2      
  popq %r11                        #  24    0x4c967  3      
  andl $0xffffffe0, %r11d          #  25    0x4c96a  7      
  addq %r15, %r11                  #  26    0x4c971  3      
  jmpq %r11                        #  27    0x4c974  3      
  nop                              #  28    0x4c977  1      
.L_4c9a0:                          #        0x4c978  0      
  movl $0x4, %edi                  #  29    0x4c978  5      
  nop                              #  30    0x4c97d  1      
  nop                              #  31    0x4c97e  1      
  callq .__cxa_allocate_exception  #  32    0x4c97f  5      
  movl %eax, %edi                  #  33    0x4c984  2      
  movl $0x4f3a0, %edx              #  34    0x4c986  5      
  movl $0x10021434, %esi           #  35    0x4c98b  5      
  movl %edi, %edi                  #  36    0x4c990  2      
  movl $0x10021418, (%r15,%rdi,1)  #  37    0x4c992  8      
  nop                              #  38    0x4c99a  1      
  callq .__cxa_throw               #  39    0x4c99b  5      
  cmpq $0xffffffffffffffff, %rdx   #  40    0x4c9a0  4      
  movl %eax, %edi                  #  41    0x4c9a4  2      
  je .L_4ca00                      #  42    0x4c9a6  6      
  nop                              #  43    0x4c9ac  1      
  nop                              #  44    0x4c9ad  1      
  callq ._Unwind_Resume            #  45    0x4c9ae  5      
.L_4ca00:                          #        0x4c9b3  0      
  nop                              #  46    0x4c9b3  1      
  nop                              #  47    0x4c9b4  1      
  callq .__cxa_call_unexpected     #  48    0x4c9b5  5      
                                                            
.size _Znwj, .-_Znwj

