  .text
  .globl _ZN2pp3VarD0Ev
  .type _ZN2pp3VarD0Ev, @function

#! file-offset 0x2d260
#! rip-offset  0x2d260
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZN2pp3VarD0Ev:                                        #        0x2d260  0      
  pushq %rbx                                            #  1     0x2d260  2      
  movl %edi, %ebx                                       #  2     0x2d262  2      
  movl %ebx, %ebx                                       #  3     0x2d264  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                           #  4     0x2d266  6      
  movl %ebx, %ebx                                       #  5     0x2d26c  2      
  movl $0x100205f8, (%r15,%rbx,1)                       #  6     0x2d26e  8      
  jle .L_2d2a0                                          #  7     0x2d276  6      
  movl %ebx, %ebx                                       #  8     0x2d27c  2      
  cmpb $0x0, 0x18(%r15,%rbx,1)                          #  9     0x2d27e  6      
  nop                                                   #  10    0x2d284  1      
  je .L_2d2a0                                           #  11    0x2d285  6      
  leal 0x8(%rbx), %edi                                  #  12    0x2d28b  3      
  nop                                                   #  13    0x2d28e  1      
  nop                                                   #  14    0x2d28f  1      
  callq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  15    0x2d290  5      
.L_2d2a0:                                               #        0x2d295  0      
  movl %ebx, %edi                                       #  16    0x2d295  2      
  popq %rbx                                             #  17    0x2d297  2      
  jmpq ._ZdlPv                                          #  18    0x2d299  5      
  nop                                                   #  19    0x2d29e  1      
  nop                                                   #  20    0x2d29f  1      
                                                                                 
.size _ZN2pp3VarD0Ev, .-_ZN2pp3VarD0Ev

