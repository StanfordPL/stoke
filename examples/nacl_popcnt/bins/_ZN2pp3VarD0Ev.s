  .text
  .globl _ZN2pp3VarD0Ev
  .type _ZN2pp3VarD0Ev, @function

#! file-offset 0x2d240
#! rip-offset  0x2d240
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZN2pp3VarD0Ev:                                        #        0x2d240  0      
  pushq %rbx                                            #  1     0x2d240  2      
  movl %edi, %ebx                                       #  2     0x2d242  2      
  movl %ebx, %ebx                                       #  3     0x2d244  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                           #  4     0x2d246  6      
  movl %ebx, %ebx                                       #  5     0x2d24c  2      
  movl $0x100205f8, (%r15,%rbx,1)                       #  6     0x2d24e  8      
  jle .L_2d280                                          #  7     0x2d256  6      
  movl %ebx, %ebx                                       #  8     0x2d25c  2      
  cmpb $0x0, 0x18(%r15,%rbx,1)                          #  9     0x2d25e  6      
  nop                                                   #  10    0x2d264  1      
  je .L_2d280                                           #  11    0x2d265  6      
  leal 0x8(%rbx), %edi                                  #  12    0x2d26b  3      
  nop                                                   #  13    0x2d26e  1      
  nop                                                   #  14    0x2d26f  1      
  callq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  15    0x2d270  5      
.L_2d280:                                               #        0x2d275  0      
  movl %ebx, %edi                                       #  16    0x2d275  2      
  popq %rbx                                             #  17    0x2d277  2      
  jmpq ._ZdlPv                                          #  18    0x2d279  5      
  nop                                                   #  19    0x2d27e  1      
  nop                                                   #  20    0x2d27f  1      
                                                                                 
.size _ZN2pp3VarD0Ev, .-_ZN2pp3VarD0Ev

