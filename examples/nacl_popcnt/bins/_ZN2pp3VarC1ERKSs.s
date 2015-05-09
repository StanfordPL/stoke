  .text
  .globl _ZN2pp3VarC1ERKSs
  .type _ZN2pp3VarC1ERKSs, @function

#! file-offset 0x2bc20
#! rip-offset  0x2bc20
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarC1ERKSs:                                    #        0x2bc20  0      
  movl %esi, %esi                                      #  1     0x2bc20  2      
  pushq %rbx                                           #  2     0x2bc22  2      
  movl %edi, %ebx                                      #  3     0x2bc24  2      
  movl %esi, %esi                                      #  4     0x2bc26  2      
  movl (%r15,%rsi,1), %edi                             #  5     0x2bc28  4      
  movl %ebx, %ebx                                      #  6     0x2bc2c  2      
  movl $0x100205f8, (%r15,%rbx,1)                      #  7     0x2bc2e  8      
  leal -0xc(%rdi), %eax                                #  8     0x2bc36  3      
  movl %eax, %eax                                      #  9     0x2bc39  2      
  movl (%r15,%rax,1), %esi                             #  10    0x2bc3b  4      
  xchgw %ax, %ax                                       #  11    0x2bc3f  3      
  nop                                                  #  12    0x2bc42  1      
  nop                                                  #  13    0x2bc43  1      
  callq ._ZN2pp12_GLOBAL__N_117VarFromUtf8HelperEPKcj  #  14    0x2bc44  5      
  movl %ebx, %ebx                                      #  15    0x2bc49  2      
  movb $0x1, 0x18(%r15,%rbx,1)                         #  16    0x2bc4b  6      
  movl %ebx, %ebx                                      #  17    0x2bc51  2      
  movq %rax, 0x8(%r15,%rbx,1)                          #  18    0x2bc53  5      
  movl %ebx, %ebx                                      #  19    0x2bc58  2      
  movq %rdx, 0x10(%r15,%rbx,1)                         #  20    0x2bc5a  5      
  popq %rbx                                            #  21    0x2bc5f  2      
  popq %r11                                            #  22    0x2bc61  3      
  nop                                                  #  23    0x2bc64  1      
  andl $0xffffffe0, %r11d                              #  24    0x2bc65  7      
  addq %r15, %r11                                      #  25    0x2bc6c  3      
  jmpq %r11                                            #  26    0x2bc6f  3      
  nop                                                  #  27    0x2bc72  1      
  nop                                                  #  28    0x2bc73  1      
                                                                                
.size _ZN2pp3VarC1ERKSs, .-_ZN2pp3VarC1ERKSs

