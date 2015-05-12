  .text
  .globl _ZN2pp3VarC2ERKSs
  .type _ZN2pp3VarC2ERKSs, @function

#! file-offset 0x2bcc0
#! rip-offset  0x2bcc0
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKSs:                                    #        0x2bcc0  0      
  movl %esi, %esi                                      #  1     0x2bcc0  2      
  pushq %rbx                                           #  2     0x2bcc2  2      
  movl %edi, %ebx                                      #  3     0x2bcc4  2      
  movl %esi, %esi                                      #  4     0x2bcc6  2      
  movl (%r15,%rsi,1), %edi                             #  5     0x2bcc8  4      
  movl %ebx, %ebx                                      #  6     0x2bccc  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2bcce  8      
  leal -0xc(%rdi), %eax                                #  8     0x2bcd6  3      
  movl %eax, %eax                                      #  9     0x2bcd9  2      
  movl (%r15,%rax,1), %esi                             #  10    0x2bcdb  4      
  xchgw %ax, %ax                                       #  11    0x2bcdf  3      
  nop                                                  #  12    0x2bce2  1      
  nop                                                  #  13    0x2bce3  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  14    0x2bce4  5      
  movl %ebx, %ebx                                      #  15    0x2bce9  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  16    0x2bceb  6      
  movl %ebx, %ebx                                      #  17    0x2bcf1  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  18    0x2bcf3  5      
  movl %ebx, %ebx                                      #  19    0x2bcf8  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  20    0x2bcfa  5      
  popq %rbx                                            #  21    0x2bcff  2      
  popq %r11                                            #  22    0x2bd01  3      
  nop                                                  #  23    0x2bd04  1      
  andl $0xffffffe0, %r11d                              #  24    0x2bd05  7      
  addq %r15, %r11                                      #  25    0x2bd0c  3      
  jmpq %r11                                            #  26    0x2bd0f  3      
  nop                                                  #  27    0x2bd12  1      
  nop                                                  #  28    0x2bd13  1      
                                                                                
.size _ZN2pp3VarC2ERKSs, .-_ZN2pp3VarC2ERKSs

