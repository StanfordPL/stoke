  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, @function

#! file-offset 0xef2e0
#! rip-offset  0xaf2e0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE:  #        0xaf2e0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                              #  1     0xaf2e0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                   #  2     0xaf2e5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                             #  3     0xaf2e8  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                   #  4     0xaf2ed  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  5     0xaf2f0  3      OPC=addq_r64_r64    
  movl %esi, %ebx                                    #  6     0xaf2f3  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                  #  7     0xaf2f5  3      OPC=movl_r32_r32    
  subl (%r15,%r12,1), %ebx                           #  8     0xaf2f8  4      OPC=subl_r32_m32    
  nop                                                #  9     0xaf2fc  1      OPC=nop             
  nop                                                #  10    0xaf2fd  1      OPC=nop             
  nop                                                #  11    0xaf2fe  1      OPC=nop             
  nop                                                #  12    0xaf2ff  1      OPC=nop             
  movl $0x1, %edx                                    #  13    0xaf300  5      OPC=movl_r32_imm32  
  movl %r12d, %edi                                   #  14    0xaf305  3      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                    #  15    0xaf308  2      OPC=xorl_r32_r32    
  movl %ebx, %esi                                    #  16    0xaf30a  2      OPC=movl_r32_r32    
  nop                                                #  17    0xaf30c  1      OPC=nop             
  nop                                                #  18    0xaf30d  1      OPC=nop             
  nop                                                #  19    0xaf30e  1      OPC=nop             
  nop                                                #  20    0xaf30f  1      OPC=nop             
  nop                                                #  21    0xaf310  1      OPC=nop             
  nop                                                #  22    0xaf311  1      OPC=nop             
  nop                                                #  23    0xaf312  1      OPC=nop             
  nop                                                #  24    0xaf313  1      OPC=nop             
  nop                                                #  25    0xaf314  1      OPC=nop             
  nop                                                #  26    0xaf315  1      OPC=nop             
  nop                                                #  27    0xaf316  1      OPC=nop             
  nop                                                #  28    0xaf317  1      OPC=nop             
  nop                                                #  29    0xaf318  1      OPC=nop             
  nop                                                #  30    0xaf319  1      OPC=nop             
  nop                                                #  31    0xaf31a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj                         #  32    0xaf31b  5      OPC=callq_label     
  movl %r12d, %r12d                                  #  33    0xaf320  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                           #  34    0xaf323  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                              #  35    0xaf327  3      OPC=leal_r32_m16    
  leal (%rbx,%rax,1), %eax                           #  36    0xaf32a  3      OPC=leal_r32_m16    
  movl %edx, %edx                                    #  37    0xaf32d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                 #  38    0xaf32f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                               #  39    0xaf338  5      OPC=movq_r64_m64    
  nop                                                #  40    0xaf33d  1      OPC=nop             
  nop                                                #  41    0xaf33e  1      OPC=nop             
  nop                                                #  42    0xaf33f  1      OPC=nop             
  movq 0x10(%rsp), %r12                              #  43    0xaf340  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                   #  44    0xaf345  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  45    0xaf348  3      OPC=addq_r64_r64    
  popq %r11                                          #  46    0xaf34b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  47    0xaf34d  7      OPC=andl_r32_imm32  
  nop                                                #  48    0xaf354  1      OPC=nop             
  nop                                                #  49    0xaf355  1      OPC=nop             
  nop                                                #  50    0xaf356  1      OPC=nop             
  nop                                                #  51    0xaf357  1      OPC=nop             
  addq %r15, %r11                                    #  52    0xaf358  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  53    0xaf35b  3      OPC=jmpq_r64        
  nop                                                #  54    0xaf35e  1      OPC=nop             
  nop                                                #  55    0xaf35f  1      OPC=nop             
  nop                                                #  56    0xaf360  1      OPC=nop             
  nop                                                #  57    0xaf361  1      OPC=nop             
  nop                                                #  58    0xaf362  1      OPC=nop             
  nop                                                #  59    0xaf363  1      OPC=nop             
  nop                                                #  60    0xaf364  1      OPC=nop             
  nop                                                #  61    0xaf365  1      OPC=nop             
  nop                                                #  62    0xaf366  1      OPC=nop             
                                                                                                  
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE

