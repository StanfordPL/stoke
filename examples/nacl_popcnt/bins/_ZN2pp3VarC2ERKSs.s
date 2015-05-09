  .text
  .globl _ZN2pp3VarC2ERKSs
  .type _ZN2pp3VarC2ERKSs, @function

#! file-offset 0x2bca0
#! rip-offset  0x2bca0
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC2ERKSs:                                    #        0x2bca0  0      
  movl %esi, %esi                                      #  1     0x2bca0  2      
  pushq %rbx                                           #  2     0x2bca2  2      
  movl %edi, %ebx                                      #  3     0x2bca4  2      
  movl %esi, %esi                                      #  4     0x2bca6  2      
  movl (%r15,%rsi,1), %edi                             #  5     0x2bca8  4      
  movl %ebx, %ebx                                      #  6     0x2bcac  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2bcae  8      
  leal -0xc(%rdi), %eax                                #  8     0x2bcb6  3      
  movl %eax, %eax                                      #  9     0x2bcb9  2      
  movl (%r15,%rax,1), %esi                             #  10    0x2bcbb  4      
  xchgw %ax, %ax                                       #  11    0x2bcbf  3      
  nop                                                  #  12    0x2bcc2  1      
  nop                                                  #  13    0x2bcc3  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  14    0x2bcc4  5      
  movl %ebx, %ebx                                      #  15    0x2bcc9  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  16    0x2bccb  6      
  movl %ebx, %ebx                                      #  17    0x2bcd1  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  18    0x2bcd3  5      
  movl %ebx, %ebx                                      #  19    0x2bcd8  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  20    0x2bcda  5      
  popq %rbx                                            #  21    0x2bcdf  2      
  popq %r11                                            #  22    0x2bce1  3      
  nop                                                  #  23    0x2bce4  1      
  andl $0xffffffe0, %r11d                              #  24    0x2bce5  7      
  addq %r15, %r11                                      #  25    0x2bcec  3      
  jmpq %r11                                            #  26    0x2bcef  3      
  nop                                                  #  27    0x2bcf2  1      
  nop                                                  #  28    0x2bcf3  1      
                                                                                
.size _ZN2pp3VarC2ERKSs, .-_ZN2pp3VarC2ERKSs

