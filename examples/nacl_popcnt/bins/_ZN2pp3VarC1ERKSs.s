  .text
  .globl _ZN2pp3VarC1ERKSs
  .type _ZN2pp3VarC1ERKSs, @function

#! file-offset 0x2bc40
#! rip-offset  0x2bc40
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1ERKSs:                                    #        0x2bc40  0      
  movl %esi, %esi                                      #  1     0x2bc40  2      
  pushq %rbx                                           #  2     0x2bc42  2      
  movl %edi, %ebx                                      #  3     0x2bc44  2      
  movl %esi, %esi                                      #  4     0x2bc46  2      
  movl (%r15,%rsi,1), %edi                             #  5     0x2bc48  4      
  movl %ebx, %ebx                                      #  6     0x2bc4c  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2bc4e  8      
  leal -0xc(%rdi), %eax                                #  8     0x2bc56  3      
  movl %eax, %eax                                      #  9     0x2bc59  2      
  movl (%r15,%rax,1), %esi                             #  10    0x2bc5b  4      
  xchgw %ax, %ax                                       #  11    0x2bc5f  3      
  nop                                                  #  12    0x2bc62  1      
  nop                                                  #  13    0x2bc63  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  14    0x2bc64  5      
  movl %ebx, %ebx                                      #  15    0x2bc69  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  16    0x2bc6b  6      
  movl %ebx, %ebx                                      #  17    0x2bc71  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  18    0x2bc73  5      
  movl %ebx, %ebx                                      #  19    0x2bc78  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  20    0x2bc7a  5      
  popq %rbx                                            #  21    0x2bc7f  2      
  popq %r11                                            #  22    0x2bc81  3      
  nop                                                  #  23    0x2bc84  1      
  andl $0xffffffe0, %r11d                              #  24    0x2bc85  7      
  addq %r15, %r11                                      #  25    0x2bc8c  3      
  jmpq %r11                                            #  26    0x2bc8f  3      
  nop                                                  #  27    0x2bc92  1      
  nop                                                  #  28    0x2bc93  1      
                                                                                
.size _ZN2pp3VarC1ERKSs, .-_ZN2pp3VarC1ERKSs

