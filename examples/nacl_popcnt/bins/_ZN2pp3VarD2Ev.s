  .text
  .globl _ZN2pp3VarD2Ev
  .type _ZN2pp3VarD2Ev, @function

#! file-offset 0x2d300
#! rip-offset  0x2d300
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarD2Ev:                                       #        0x2d300  0      
  movl %edi, %edi                                      #  1     0x2d300  2      
  movl %edi, %edi                                      #  2     0x2d302  2      
  cmpl $0x4, 0x8(%r15,%rdi,1)                          #  3     0x2d304  6      
  movl %edi, %edi                                      #  4     0x2d30a  2      
  movl $0x100205f8, (%r15,%rdi,1)                      #  5     0x2d30c  8      
  jle .L_2d340                                         #  6     0x2d314  6      
  movl %edi, %edi                                      #  7     0x2d31a  2      
  cmpb $0x0, 0x18(%r15,%rdi,1)                         #  8     0x2d31c  6      
  xchgw %ax, %ax                                       #  9     0x2d322  3      
  je .L_2d340                                          #  10    0x2d325  6      
  addl $0x8, %edi                                      #  11    0x2d32b  3      
  jmpq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  12    0x2d32e  5      
  nop                                                  #  13    0x2d333  1      
  nop                                                  #  14    0x2d334  1      
.L_2d340:                                              #        0x2d335  0      
  popq %r11                                            #  15    0x2d335  3      
  andl $0xffffffe0, %r11d                              #  16    0x2d338  7      
  addq %r15, %r11                                      #  17    0x2d33f  3      
  jmpq %r11                                            #  18    0x2d342  3      
  nop                                                  #  19    0x2d345  1      
  nop                                                  #  20    0x2d346  1      
                                                                                
.size _ZN2pp3VarD2Ev, .-_ZN2pp3VarD2Ev

