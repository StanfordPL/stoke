  .text
  .globl _ZN2pp3VarD1Ev
  .type _ZN2pp3VarD1Ev, @function

#! file-offset 0x2d2c0
#! rip-offset  0x2d2c0
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarD1Ev:                                       #        0x2d2c0  0      
  movl %edi, %edi                                      #  1     0x2d2c0  2      
  movl %edi, %edi                                      #  2     0x2d2c2  2      
  cmpl $0x4, 0x8(%r15,%rdi,1)                          #  3     0x2d2c4  6      
  movl %edi, %edi                                      #  4     0x2d2ca  2      
  movl $0x100205f8, (%r15,%rdi,1)                      #  5     0x2d2cc  8      
  jle .L_2d300                                         #  6     0x2d2d4  6      
  movl %edi, %edi                                      #  7     0x2d2da  2      
  cmpb $0x0, 0x18(%r15,%rdi,1)                         #  8     0x2d2dc  6      
  xchgw %ax, %ax                                       #  9     0x2d2e2  3      
  je .L_2d300                                          #  10    0x2d2e5  6      
  addl $0x8, %edi                                      #  11    0x2d2eb  3      
  jmpq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  12    0x2d2ee  5      
  nop                                                  #  13    0x2d2f3  1      
  nop                                                  #  14    0x2d2f4  1      
.L_2d300:                                              #        0x2d2f5  0      
  popq %r11                                            #  15    0x2d2f5  3      
  andl $0xffffffe0, %r11d                              #  16    0x2d2f8  7      
  addq %r15, %r11                                      #  17    0x2d2ff  3      
  jmpq %r11                                            #  18    0x2d302  3      
  nop                                                  #  19    0x2d305  1      
  nop                                                  #  20    0x2d306  1      
                                                                                
.size _ZN2pp3VarD1Ev, .-_ZN2pp3VarD1Ev

