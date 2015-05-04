  .text
  .globl _ZN2pp3VarD1Ev
  .type _ZN2pp3VarD1Ev, @function

#! file-offset 0x2d340
#! rip-offset  0x2d340
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarD1Ev:                                       #        0x2d340  0      
  movl %edi, %edi                                      #  1     0x2d340  2      
  movl %edi, %edi                                      #  2     0x2d342  2      
  cmpl $0x4, 0x8(%r15,%rdi,1)                          #  3     0x2d344  6      
  movl %edi, %edi                                      #  4     0x2d34a  2      
  movl $0x100205f8, (%r15,%rdi,1)                      #  5     0x2d34c  8      
  jle .L_2d380                                         #  6     0x2d354  6      
  movl %edi, %edi                                      #  7     0x2d35a  2      
  cmpb $0x0, 0x18(%r15,%rdi,1)                         #  8     0x2d35c  6      
  xchgw %ax, %ax                                       #  9     0x2d362  3      
  je .L_2d380                                          #  10    0x2d365  6      
  addl $0x8, %edi                                      #  11    0x2d36b  3      
  jmpq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  12    0x2d36e  5      
  nop                                                  #  13    0x2d373  1      
  nop                                                  #  14    0x2d374  1      
.L_2d380:                                              #        0x2d375  0      
  popq %r11                                            #  15    0x2d375  3      
  andl $0xffffffe0, %r11d                              #  16    0x2d378  7      
  addq %r15, %r11                                      #  17    0x2d37f  3      
  jmpq %r11                                            #  18    0x2d382  3      
  nop                                                  #  19    0x2d385  1      
  nop                                                  #  20    0x2d386  1      
                                                                                
.size _ZN2pp3VarD1Ev, .-_ZN2pp3VarD1Ev

