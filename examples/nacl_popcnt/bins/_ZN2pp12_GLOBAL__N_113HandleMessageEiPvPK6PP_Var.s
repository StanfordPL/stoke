  .text
  .globl _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var
  .type _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var, @function

#! file-offset 0x209e0
#! rip-offset  0x209e0
#! capacity    256 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var:  #        0x209e0  0      
  movq %r12, -0x18(%rsp)                            #  1     0x209e0  5      
  movl %esi, %r12d                                  #  2     0x209e5  3      
  movq %rbx, -0x20(%rsp)                            #  3     0x209e8  5      
  movq %r14, -0x8(%rsp)                             #  4     0x209ed  5      
  movq %r13, -0x10(%rsp)                            #  5     0x209f2  5      
  subl $0x48, %esp                                  #  6     0x209f7  3      
  addq %r15, %rsp                                   #  7     0x209fa  3      
  nop                                               #  8     0x209fd  1      
  movl %r12d, %r12d                                 #  9     0x209fe  3      
  movl (%r15,%r12,1), %eax                          #  10    0x20a01  4      
  movl %edx, %esi                                   #  11    0x20a05  2      
  movl %edi, %r14d                                  #  12    0x20a07  3      
  movl %esp, %edi                                   #  13    0x20a0a  2      
  movl %esp, %ebx                                   #  14    0x20a0c  2      
  movl %eax, %eax                                   #  15    0x20a0e  2      
  movl 0x8(%r15,%rax,1), %r13d                      #  16    0x20a10  5      
  nop                                               #  17    0x20a15  1      
  callq ._ZN2pp3VarC1ERK6PP_Var                     #  18    0x20a16  5      
  movl %esp, %edx                                   #  19    0x20a1b  2      
  movl %r14d, %esi                                  #  20    0x20a1d  3      
  movl %r12d, %edi                                  #  21    0x20a20  3      
  nop                                               #  22    0x20a23  1      
  andl $0xffffffe0, %r13d                           #  23    0x20a24  7      
  addq %r15, %r13                                   #  24    0x20a2b  3      
  callq %r13                                        #  25    0x20a2e  3      
  movl %esp, %edi                                   #  26    0x20a31  2      
  nop                                               #  27    0x20a33  1      
  nop                                               #  28    0x20a34  1      
  callq ._ZN2pp3VarD1Ev                             #  29    0x20a35  5      
  movq 0x28(%rsp), %rbx                             #  30    0x20a3a  5      
  movq 0x30(%rsp), %r12                             #  31    0x20a3f  5      
  movq 0x38(%rsp), %r13                             #  32    0x20a44  5      
  movq 0x40(%rsp), %r14                             #  33    0x20a49  5      
  addl $0x48, %esp                                  #  34    0x20a4e  3      
  addq %r15, %rsp                                   #  35    0x20a51  3      
  popq %r11                                         #  36    0x20a54  3      
  nop                                               #  37    0x20a57  1      
  andl $0xffffffe0, %r11d                           #  38    0x20a58  7      
  addq %r15, %r11                                   #  39    0x20a5f  3      
  jmpq %r11                                         #  40    0x20a62  3      
  nop                                               #  41    0x20a65  1      
  nop                                               #  42    0x20a66  1      
  movl %eax, %r12d                                  #  43    0x20a67  3      
  movl %ebx, %edi                                   #  44    0x20a6a  2      
  nop                                               #  45    0x20a6c  1      
  nop                                               #  46    0x20a6d  1      
  callq ._ZN2pp3VarD1Ev                             #  47    0x20a6e  5      
  movl %r12d, %edi                                  #  48    0x20a73  3      
  nop                                               #  49    0x20a76  1      
  nop                                               #  50    0x20a77  1      
  callq ._Unwind_Resume                             #  51    0x20a78  5      
                                                                             
.size _ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var, .-_ZN2pp12_GLOBAL__N_113HandleMessageEiPvPK6PP_Var

