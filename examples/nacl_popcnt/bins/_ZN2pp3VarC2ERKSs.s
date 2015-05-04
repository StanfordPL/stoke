  .text
  .globl _ZN2pp3VarC2ERKSs
  .type _ZN2pp3VarC2ERKSs, @function

#! file-offset 0x2bd40
#! rip-offset  0x2bd40
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKSs:                                    #        0x2bd40  0      
  movl %esi, %esi                                      #  1     0x2bd40  2      
  pushq %rbx                                           #  2     0x2bd42  2      
  movl %edi, %ebx                                      #  3     0x2bd44  2      
  movl %esi, %esi                                      #  4     0x2bd46  2      
  movl (%r15,%rsi,1), %edi                             #  5     0x2bd48  4      
  movl %ebx, %ebx                                      #  6     0x2bd4c  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2bd4e  8      
  leal -0xc(%rdi), %eax                                #  8     0x2bd56  3      
  movl %eax, %eax                                      #  9     0x2bd59  2      
  movl (%r15,%rax,1), %esi                             #  10    0x2bd5b  4      
  xchgw %ax, %ax                                       #  11    0x2bd5f  3      
  nop                                                  #  12    0x2bd62  1      
  nop                                                  #  13    0x2bd63  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  14    0x2bd64  5      
  movl %ebx, %ebx                                      #  15    0x2bd69  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  16    0x2bd6b  6      
  movl %ebx, %ebx                                      #  17    0x2bd71  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  18    0x2bd73  5      
  movl %ebx, %ebx                                      #  19    0x2bd78  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  20    0x2bd7a  5      
  popq %rbx                                            #  21    0x2bd7f  2      
  popq %r11                                            #  22    0x2bd81  3      
  nop                                                  #  23    0x2bd84  1      
  andl $0xffffffe0, %r11d                              #  24    0x2bd85  7      
  addq %r15, %r11                                      #  25    0x2bd8c  3      
  jmpq %r11                                            #  26    0x2bd8f  3      
  nop                                                  #  27    0x2bd92  1      
  nop                                                  #  28    0x2bd93  1      
                                                                                
.size _ZN2pp3VarC2ERKSs, .-_ZN2pp3VarC2ERKSs

