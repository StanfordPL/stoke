  .text
  .globl _ZN2pp3VarD2Ev
  .type _ZN2pp3VarD2Ev, @function

#! file-offset 0x2d3a0
#! rip-offset  0x2d3a0
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarD2Ev:                                       #        0x2d3a0  0      
  movl %edi, %edi                                      #  1     0x2d3a0  2      
  movl %edi, %edi                                      #  2     0x2d3a2  2      
  cmpl $0x4, 0x8(%r15,%rdi,1)                          #  3     0x2d3a4  6      
  movl %edi, %edi                                      #  4     0x2d3aa  2      
  movl $0x100205f8, (%r15,%rdi,1)                      #  5     0x2d3ac  8      
  jle .L_2d3e0                                         #  6     0x2d3b4  6      
  movl %edi, %edi                                      #  7     0x2d3ba  2      
  cmpb $0x0, 0x18(%r15,%rdi,1)                         #  8     0x2d3bc  6      
  xchgw %ax, %ax                                       #  9     0x2d3c2  3      
  je .L_2d3e0                                          #  10    0x2d3c5  6      
  addl $0x8, %edi                                      #  11    0x2d3cb  3      
  jmpq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  12    0x2d3ce  5      
  nop                                                  #  13    0x2d3d3  1      
  nop                                                  #  14    0x2d3d4  1      
.L_2d3e0:                                              #        0x2d3d5  0      
  popq %r11                                            #  15    0x2d3d5  3      
  andl $0xffffffe0, %r11d                              #  16    0x2d3d8  7      
  addq %r15, %r11                                      #  17    0x2d3df  3      
  jmpq %r11                                            #  18    0x2d3e2  3      
  nop                                                  #  19    0x2d3e5  1      
  nop                                                  #  20    0x2d3e6  1      
                                                                                
.size _ZN2pp3VarD2Ev, .-_ZN2pp3VarD2Ev

