  .text
  .globl __swrite
  .type __swrite, @function

#! file-offset 0x80140
#! rip-offset  0x80140
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  
.__swrite:                       #        0x80140  0      
  movq %rbx, -0x18(%rsp)         #  1     0x80140  5      
  movl %esi, %ebx                #  2     0x80145  2      
  movq %r12, -0x10(%rsp)         #  3     0x80147  5      
  movq %r13, -0x8(%rsp)          #  4     0x8014c  5      
  subl $0x18, %esp               #  5     0x80151  3      
  addq %r15, %rsp                #  6     0x80154  3      
  movl %ebx, %ebx                #  7     0x80157  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  8     0x80159  6      
  nop                            #  9     0x8015f  1      
  movl %ecx, %r13d               #  10    0x80160  3      
  movl %edx, %r12d               #  11    0x80163  3      
  testb $0x1, %ah                #  12    0x80166  3      
  je .L_801a0                    #  13    0x80169  6      
  movl %ebx, %ebx                #  14    0x8016f  2      
  movswl 0xe(%r15,%rbx,1), %edi  #  15    0x80171  6      
  movl $0x2, %edx                #  16    0x80177  5      
  xorl %esi, %esi                #  17    0x8017c  2      
  nop                            #  18    0x8017e  1      
  callq .lseek                   #  19    0x8017f  5      
  movl %ebx, %ebx                #  20    0x80184  2      
  movzwl 0xc(%r15,%rbx,1), %eax  #  21    0x80186  6      
  nop                            #  22    0x8018c  1      
  nop                            #  23    0x8018d  1      
.L_801a0:                        #        0x8018e  0      
  movl %ebx, %ebx                #  24    0x8018e  2      
  movswl 0xe(%r15,%rbx,1), %edi  #  25    0x80190  6      
  andb $0xef, %ah                #  26    0x80196  3      
  movl %r13d, %edx               #  27    0x80199  3      
  movl %ebx, %ebx                #  28    0x8019c  2      
  movw %ax, 0xc(%r15,%rbx,1)     #  29    0x8019e  6      
  movl %r12d, %esi               #  30    0x801a4  3      
  movq (%rsp), %rbx              #  31    0x801a7  4      
  nop                            #  32    0x801ab  1      
  movq 0x8(%rsp), %r12           #  33    0x801ac  5      
  movq 0x10(%rsp), %r13          #  34    0x801b1  5      
  addl $0x18, %esp               #  35    0x801b6  3      
  addq %r15, %rsp                #  36    0x801b9  3      
  jmpq .write                    #  37    0x801bc  5      
  nop                            #  38    0x801c1  1      
                                                          
.size __swrite, .-__swrite

