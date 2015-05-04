  .text
  .globl _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var
  .type _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var, @function

#! file-offset 0x20a80
#! rip-offset  0x20a80
#! capacity    256 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var:  #        0x20a80  0      
  movq %r12, -0x18(%rsp)                            #  1     0x20a80  5      
  movl %esi, %r12d                                  #  2     0x20a85  3      
  movq %rbx, -0x20(%rsp)                            #  3     0x20a88  5      
  movq %r14, -0x8(%rsp)                             #  4     0x20a8d  5      
  movq %r13, -0x10(%rsp)                            #  5     0x20a92  5      
  subl $0x48, %esp                                  #  6     0x20a97  3      
  addq %r15, %rsp                                   #  7     0x20a9a  3      
  nop                                               #  8     0x20a9d  1      
  movl %r12d, %r12d                                 #  9     0x20a9e  3      
  movl (%r15,%r12,1), %eax                          #  10    0x20aa1  4      
  movl %edx, %esi                                   #  11    0x20aa5  2      
  movl %edi, %r14d                                  #  12    0x20aa7  3      
  movl %esp, %edi                                   #  13    0x20aaa  2      
  movl %esp, %ebx                                   #  14    0x20aac  2      
  movl %eax, %eax                                   #  15    0x20aae  2      
  movl 0x8(%r15,%rax,1), %r13d                      #  16    0x20ab0  5      
  nop                                               #  17    0x20ab5  1      
  callq ._ZN2pp3VarC1ERK6PP_Var                     #  18    0x20ab6  5      
  movl %esp, %edx                                   #  19    0x20abb  2      
  movl %r14d, %esi                                  #  20    0x20abd  3      
  movl %r12d, %edi                                  #  21    0x20ac0  3      
  nop                                               #  22    0x20ac3  1      
  andl $0xffffffe0, %r13d                           #  23    0x20ac4  7      
  addq %r15, %r13                                   #  24    0x20acb  3      
  callq %r13                                        #  25    0x20ace  3      
  movl %esp, %edi                                   #  26    0x20ad1  2      
  nop                                               #  27    0x20ad3  1      
  nop                                               #  28    0x20ad4  1      
  callq ._ZN2pp3VarD1Ev                             #  29    0x20ad5  5      
  movq 0x28(%rsp), %rbx                             #  30    0x20ada  5      
  movq 0x30(%rsp), %r12                             #  31    0x20adf  5      
  movq 0x38(%rsp), %r13                             #  32    0x20ae4  5      
  movq 0x40(%rsp), %r14                             #  33    0x20ae9  5      
  addl $0x48, %esp                                  #  34    0x20aee  3      
  addq %r15, %rsp                                   #  35    0x20af1  3      
  popq %r11                                         #  36    0x20af4  3      
  nop                                               #  37    0x20af7  1      
  andl $0xffffffe0, %r11d                           #  38    0x20af8  7      
  addq %r15, %r11                                   #  39    0x20aff  3      
  jmpq %r11                                         #  40    0x20b02  3      
  nop                                               #  41    0x20b05  1      
  nop                                               #  42    0x20b06  1      
  movl %eax, %r12d                                  #  43    0x20b07  3      
  movl %ebx, %edi                                   #  44    0x20b0a  2      
  nop                                               #  45    0x20b0c  1      
  nop                                               #  46    0x20b0d  1      
  callq ._ZN2pp3VarD1Ev                             #  47    0x20b0e  5      
  movl %r12d, %edi                                  #  48    0x20b13  3      
  nop                                               #  49    0x20b16  1      
  nop                                               #  50    0x20b17  1      
  callq ._Unwind_Resume                             #  51    0x20b18  5      
                                                                             
.size _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var, .-_ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var

