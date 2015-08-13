  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, @function

#! file-offset 0xee8c0
#! rip-offset  0xae8c0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE:  #        0xae8c0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                              #  1     0xae8c0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                   #  2     0xae8c5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                             #  3     0xae8c8  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                   #  4     0xae8cd  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  5     0xae8d0  3      OPC=addq_r64_r64    
  movl %esi, %ebx                                    #  6     0xae8d3  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                  #  7     0xae8d5  3      OPC=movl_r32_r32    
  subl (%r15,%r12,1), %ebx                           #  8     0xae8d8  4      OPC=subl_r32_m32    
  nop                                                #  9     0xae8dc  1      OPC=nop             
  nop                                                #  10    0xae8dd  1      OPC=nop             
  nop                                                #  11    0xae8de  1      OPC=nop             
  nop                                                #  12    0xae8df  1      OPC=nop             
  movl $0x1, %edx                                    #  13    0xae8e0  5      OPC=movl_r32_imm32  
  movl %r12d, %edi                                   #  14    0xae8e5  3      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                    #  15    0xae8e8  2      OPC=xorl_r32_r32    
  movl %ebx, %esi                                    #  16    0xae8ea  2      OPC=movl_r32_r32    
  nop                                                #  17    0xae8ec  1      OPC=nop             
  nop                                                #  18    0xae8ed  1      OPC=nop             
  nop                                                #  19    0xae8ee  1      OPC=nop             
  nop                                                #  20    0xae8ef  1      OPC=nop             
  nop                                                #  21    0xae8f0  1      OPC=nop             
  nop                                                #  22    0xae8f1  1      OPC=nop             
  nop                                                #  23    0xae8f2  1      OPC=nop             
  nop                                                #  24    0xae8f3  1      OPC=nop             
  nop                                                #  25    0xae8f4  1      OPC=nop             
  nop                                                #  26    0xae8f5  1      OPC=nop             
  nop                                                #  27    0xae8f6  1      OPC=nop             
  nop                                                #  28    0xae8f7  1      OPC=nop             
  nop                                                #  29    0xae8f8  1      OPC=nop             
  nop                                                #  30    0xae8f9  1      OPC=nop             
  nop                                                #  31    0xae8fa  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj                         #  32    0xae8fb  5      OPC=callq_label     
  movl %r12d, %r12d                                  #  33    0xae900  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                           #  34    0xae903  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                              #  35    0xae907  3      OPC=leal_r32_m16    
  leal (%rbx,%rax,1), %eax                           #  36    0xae90a  3      OPC=leal_r32_m16    
  movl %edx, %edx                                    #  37    0xae90d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                 #  38    0xae90f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                               #  39    0xae918  5      OPC=movq_r64_m64    
  nop                                                #  40    0xae91d  1      OPC=nop             
  nop                                                #  41    0xae91e  1      OPC=nop             
  nop                                                #  42    0xae91f  1      OPC=nop             
  movq 0x10(%rsp), %r12                              #  43    0xae920  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                   #  44    0xae925  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  45    0xae928  3      OPC=addq_r64_r64    
  popq %r11                                          #  46    0xae92b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  47    0xae92d  7      OPC=andl_r32_imm32  
  nop                                                #  48    0xae934  1      OPC=nop             
  nop                                                #  49    0xae935  1      OPC=nop             
  nop                                                #  50    0xae936  1      OPC=nop             
  nop                                                #  51    0xae937  1      OPC=nop             
  addq %r15, %r11                                    #  52    0xae938  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  53    0xae93b  3      OPC=jmpq_r64        
  nop                                                #  54    0xae93e  1      OPC=nop             
  nop                                                #  55    0xae93f  1      OPC=nop             
  nop                                                #  56    0xae940  1      OPC=nop             
  nop                                                #  57    0xae941  1      OPC=nop             
  nop                                                #  58    0xae942  1      OPC=nop             
  nop                                                #  59    0xae943  1      OPC=nop             
  nop                                                #  60    0xae944  1      OPC=nop             
  nop                                                #  61    0xae945  1      OPC=nop             
  nop                                                #  62    0xae946  1      OPC=nop             
                                                                                                  
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE

