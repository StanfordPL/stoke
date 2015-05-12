  .text
  .globl _ZN2pp3VarD2Ev
  .type _ZN2pp3VarD2Ev, @function

#! file-offset 0x2d320
#! rip-offset  0x2d320
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  
._ZN2pp3VarD2Ev:                                       #        0x2d320  0      
  movl %edi, %edi                                      #  1     0x2d320  2      
  movl %edi, %edi                                      #  2     0x2d322  2      
  cmpl $0x4, 0x8(%r15,%rdi,1)                          #  3     0x2d324  6      
  movl %edi, %edi                                      #  4     0x2d32a  2      
  movl $0x100205f8, (%r15,%rdi,1)                      #  5     0x2d32c  8      
  jle .L_2d360                                         #  6     0x2d334  6      
  movl %edi, %edi                                      #  7     0x2d33a  2      
  cmpb $0x0, 0x18(%r15,%rdi,1)                         #  8     0x2d33c  6      
  xchgw %ax, %ax                                       #  9     0x2d342  3      
  je .L_2d360                                          #  10    0x2d345  6      
  addl $0x8, %edi                                      #  11    0x2d34b  3      
  jmpq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  12    0x2d34e  5      
  nop                                                  #  13    0x2d353  1      
  nop                                                  #  14    0x2d354  1      
.L_2d360:                                              #        0x2d355  0      
  popq %r11                                            #  15    0x2d355  3      
  andl $0xffffffe0, %r11d                              #  16    0x2d358  7      
  addq %r15, %r11                                      #  17    0x2d35f  3      
  jmpq %r11                                            #  18    0x2d362  3      
  nop                                                  #  19    0x2d365  1      
  nop                                                  #  20    0x2d366  1      
                                                                                
.size _ZN2pp3VarD2Ev, .-_ZN2pp3VarD2Ev

