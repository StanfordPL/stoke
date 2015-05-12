  .text
  .globl _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var
  .type _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var, @function

#! file-offset 0x20a00
#! rip-offset  0x20a00
#! capacity    256 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var:  #        0x20a00  0      
  movq %r12, -0x18(%rsp)                            #  1     0x20a00  5      
  movl %esi, %r12d                                  #  2     0x20a05  3      
  movq %rbx, -0x20(%rsp)                            #  3     0x20a08  5      
  movq %r14, -0x8(%rsp)                             #  4     0x20a0d  5      
  movq %r13, -0x10(%rsp)                            #  5     0x20a12  5      
  subl $0x48, %esp                                  #  6     0x20a17  3      
  addq %r15, %rsp                                   #  7     0x20a1a  3      
  nop                                               #  8     0x20a1d  1      
  movl %r12d, %r12d                                 #  9     0x20a1e  3      
  movl (%r15,%r12,1), %eax                          #  10    0x20a21  4      
  movl %edx, %esi                                   #  11    0x20a25  2      
  movl %edi, %r14d                                  #  12    0x20a27  3      
  movl %esp, %edi                                   #  13    0x20a2a  2      
  movl %esp, %ebx                                   #  14    0x20a2c  2      
  movl %eax, %eax                                   #  15    0x20a2e  2      
  movl 0x8(%r15,%rax,1), %r13d                      #  16    0x20a30  5      
  nop                                               #  17    0x20a35  1      
  callq ._ZN2pp3VarC1ERK6PP_Var                     #  18    0x20a36  5      
  movl %esp, %edx                                   #  19    0x20a3b  2      
  movl %r14d, %esi                                  #  20    0x20a3d  3      
  movl %r12d, %edi                                  #  21    0x20a40  3      
  nop                                               #  22    0x20a43  1      
  andl $0xffffffe0, %r13d                           #  23    0x20a44  7      
  addq %r15, %r13                                   #  24    0x20a4b  3      
  callq %r13                                        #  25    0x20a4e  3      
  movl %esp, %edi                                   #  26    0x20a51  2      
  nop                                               #  27    0x20a53  1      
  nop                                               #  28    0x20a54  1      
  callq ._ZN2pp3VarD1Ev                             #  29    0x20a55  5      
  movq 0x28(%rsp), %rbx                             #  30    0x20a5a  5      
  movq 0x30(%rsp), %r12                             #  31    0x20a5f  5      
  movq 0x38(%rsp), %r13                             #  32    0x20a64  5      
  movq 0x40(%rsp), %r14                             #  33    0x20a69  5      
  addl $0x48, %esp                                  #  34    0x20a6e  3      
  addq %r15, %rsp                                   #  35    0x20a71  3      
  popq %r11                                         #  36    0x20a74  3      
  nop                                               #  37    0x20a77  1      
  andl $0xffffffe0, %r11d                           #  38    0x20a78  7      
  addq %r15, %r11                                   #  39    0x20a7f  3      
  jmpq %r11                                         #  40    0x20a82  3      
  nop                                               #  41    0x20a85  1      
  nop                                               #  42    0x20a86  1      
  movl %eax, %r12d                                  #  43    0x20a87  3      
  movl %ebx, %edi                                   #  44    0x20a8a  2      
  nop                                               #  45    0x20a8c  1      
  nop                                               #  46    0x20a8d  1      
  callq ._ZN2pp3VarD1Ev                             #  47    0x20a8e  5      
  movl %r12d, %edi                                  #  48    0x20a93  3      
  nop                                               #  49    0x20a96  1      
  nop                                               #  50    0x20a97  1      
  callq ._Unwind_Resume                             #  51    0x20a98  5      
                                                                             
.size _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var, .-_ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var

