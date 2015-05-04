  .text
  .globl _ZN2pp3VarD0Ev
  .type _ZN2pp3VarD0Ev, @function

#! file-offset 0x2d2e0
#! rip-offset  0x2d2e0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZN2pp3VarD0Ev:                                        #        0x2d2e0  0      
  pushq %rbx                                            #  1     0x2d2e0  2      
  movl %edi, %ebx                                       #  2     0x2d2e2  2      
  movl %ebx, %ebx                                       #  3     0x2d2e4  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                           #  4     0x2d2e6  6      
  movl %ebx, %ebx                                       #  5     0x2d2ec  2      
  movl $0x100205f8, (%r15,%rbx,1)                       #  6     0x2d2ee  8      
  jle .L_2d320                                          #  7     0x2d2f6  6      
  movl %ebx, %ebx                                       #  8     0x2d2fc  2      
  cmpb $0x0, 0x18(%r15,%rbx,1)                          #  9     0x2d2fe  6      
  nop                                                   #  10    0x2d304  1      
  je .L_2d320                                           #  11    0x2d305  6      
  leal 0x8(%rbx), %edi                                  #  12    0x2d30b  3      
  nop                                                   #  13    0x2d30e  1      
  nop                                                   #  14    0x2d30f  1      
  callq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  15    0x2d310  5      
.L_2d320:                                               #        0x2d315  0      
  movl %ebx, %edi                                       #  16    0x2d315  2      
  popq %rbx                                             #  17    0x2d317  2      
  jmpq ._ZdlPv                                          #  18    0x2d319  5      
  nop                                                   #  19    0x2d31e  1      
  nop                                                   #  20    0x2d31f  1      
                                                                                 
.size _ZN2pp3VarD0Ev, .-_ZN2pp3VarD0Ev

