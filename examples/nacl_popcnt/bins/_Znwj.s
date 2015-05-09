  .text
  .globl _Znwj
  .type _Znwj, @function

#! file-offset 0x4c900
#! rip-offset  0x4c900
#! capacity    256 bytes

# Text                             #  Line  RIP      Bytes  
._Znwj:                            #        0x4c900  0      
  pushq %rbx                       #  1     0x4c900  2      
  testl %edi, %edi                 #  2     0x4c902  2      
  movl %edi, %ebx                  #  3     0x4c904  2      
  movl $0x1, %eax                  #  4     0x4c906  5      
  cmovel %eax, %ebx                #  5     0x4c90b  3      
  jmpq .L_4c940                    #  6     0x4c90e  5      
  xchgw %ax, %ax                   #  7     0x4c913  3      
  nop                              #  8     0x4c916  1      
.L_4c920:                          #        0x4c917  0      
  movl 0xffe9f0f(%rip), %eax       #  9     0x4c917  6      
  testq %rax, %rax                 #  10    0x4c91d  3      
  je .L_4c980                      #  11    0x4c920  6      
  nop                              #  12    0x4c926  1      
  andl $0xffffffe0, %eax           #  13    0x4c927  5      
  addq %r15, %rax                  #  14    0x4c92c  3      
  callq %rax                       #  15    0x4c92f  2      
.L_4c940:                          #        0x4c931  0      
  movl %ebx, %edi                  #  16    0x4c931  2      
  nop                              #  17    0x4c933  1      
  nop                              #  18    0x4c934  1      
  callq .malloc                    #  19    0x4c935  5      
  movl %eax, %eax                  #  20    0x4c93a  2      
  testq %rax, %rax                 #  21    0x4c93c  3      
  je .L_4c920                      #  22    0x4c93f  6      
  popq %rbx                        #  23    0x4c945  2      
  popq %r11                        #  24    0x4c947  3      
  andl $0xffffffe0, %r11d          #  25    0x4c94a  7      
  addq %r15, %r11                  #  26    0x4c951  3      
  jmpq %r11                        #  27    0x4c954  3      
  nop                              #  28    0x4c957  1      
.L_4c980:                          #        0x4c958  0      
  movl $0x4, %edi                  #  29    0x4c958  5      
  nop                              #  30    0x4c95d  1      
  nop                              #  31    0x4c95e  1      
  callq .__cxa_allocate_exception  #  32    0x4c95f  5      
  movl %eax, %edi                  #  33    0x4c964  2      
  movl $0x4f380, %edx              #  34    0x4c966  5      
  movl $0x10021434, %esi           #  35    0x4c96b  5      
  movl %edi, %edi                  #  36    0x4c970  2      
  movl $0x10021418, (%r15,%rdi,1)  #  37    0x4c972  8      
  nop                              #  38    0x4c97a  1      
  callq .__cxa_throw               #  39    0x4c97b  5      
  cmpq $0xffffffffffffffff, %rdx   #  40    0x4c980  4      
  movl %eax, %edi                  #  41    0x4c984  2      
  je .L_4c9e0                      #  42    0x4c986  6      
  nop                              #  43    0x4c98c  1      
  nop                              #  44    0x4c98d  1      
  callq ._Unwind_Resume            #  45    0x4c98e  5      
.L_4c9e0:                          #        0x4c993  0      
  nop                              #  46    0x4c993  1      
  nop                              #  47    0x4c994  1      
  callq .__cxa_call_unexpected     #  48    0x4c995  5      
                                                            
.size _Znwj, .-_Znwj

