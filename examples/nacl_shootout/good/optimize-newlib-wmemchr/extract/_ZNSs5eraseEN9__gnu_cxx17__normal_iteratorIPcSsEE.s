  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, @function

#! file-offset 0xeebc0
#! rip-offset  0xaebc0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE:  #        0xaebc0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                              #  1     0xaebc0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                   #  2     0xaebc5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                             #  3     0xaebc8  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                   #  4     0xaebcd  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  5     0xaebd0  3      OPC=addq_r64_r64    
  movl %esi, %ebx                                    #  6     0xaebd3  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                  #  7     0xaebd5  3      OPC=movl_r32_r32    
  subl (%r15,%r12,1), %ebx                           #  8     0xaebd8  4      OPC=subl_r32_m32    
  nop                                                #  9     0xaebdc  1      OPC=nop             
  nop                                                #  10    0xaebdd  1      OPC=nop             
  nop                                                #  11    0xaebde  1      OPC=nop             
  nop                                                #  12    0xaebdf  1      OPC=nop             
  movl $0x1, %edx                                    #  13    0xaebe0  5      OPC=movl_r32_imm32  
  movl %r12d, %edi                                   #  14    0xaebe5  3      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                    #  15    0xaebe8  2      OPC=xorl_r32_r32    
  movl %ebx, %esi                                    #  16    0xaebea  2      OPC=movl_r32_r32    
  nop                                                #  17    0xaebec  1      OPC=nop             
  nop                                                #  18    0xaebed  1      OPC=nop             
  nop                                                #  19    0xaebee  1      OPC=nop             
  nop                                                #  20    0xaebef  1      OPC=nop             
  nop                                                #  21    0xaebf0  1      OPC=nop             
  nop                                                #  22    0xaebf1  1      OPC=nop             
  nop                                                #  23    0xaebf2  1      OPC=nop             
  nop                                                #  24    0xaebf3  1      OPC=nop             
  nop                                                #  25    0xaebf4  1      OPC=nop             
  nop                                                #  26    0xaebf5  1      OPC=nop             
  nop                                                #  27    0xaebf6  1      OPC=nop             
  nop                                                #  28    0xaebf7  1      OPC=nop             
  nop                                                #  29    0xaebf8  1      OPC=nop             
  nop                                                #  30    0xaebf9  1      OPC=nop             
  nop                                                #  31    0xaebfa  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj                         #  32    0xaebfb  5      OPC=callq_label     
  movl %r12d, %r12d                                  #  33    0xaec00  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                           #  34    0xaec03  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                              #  35    0xaec07  3      OPC=leal_r32_m16    
  leal (%rbx,%rax,1), %eax                           #  36    0xaec0a  3      OPC=leal_r32_m16    
  movl %edx, %edx                                    #  37    0xaec0d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                 #  38    0xaec0f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                               #  39    0xaec18  5      OPC=movq_r64_m64    
  nop                                                #  40    0xaec1d  1      OPC=nop             
  nop                                                #  41    0xaec1e  1      OPC=nop             
  nop                                                #  42    0xaec1f  1      OPC=nop             
  movq 0x10(%rsp), %r12                              #  43    0xaec20  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                   #  44    0xaec25  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  45    0xaec28  3      OPC=addq_r64_r64    
  popq %r11                                          #  46    0xaec2b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  47    0xaec2d  7      OPC=andl_r32_imm32  
  nop                                                #  48    0xaec34  1      OPC=nop             
  nop                                                #  49    0xaec35  1      OPC=nop             
  nop                                                #  50    0xaec36  1      OPC=nop             
  nop                                                #  51    0xaec37  1      OPC=nop             
  addq %r15, %r11                                    #  52    0xaec38  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  53    0xaec3b  3      OPC=jmpq_r64        
  nop                                                #  54    0xaec3e  1      OPC=nop             
  nop                                                #  55    0xaec3f  1      OPC=nop             
  nop                                                #  56    0xaec40  1      OPC=nop             
  nop                                                #  57    0xaec41  1      OPC=nop             
  nop                                                #  58    0xaec42  1      OPC=nop             
  nop                                                #  59    0xaec43  1      OPC=nop             
  nop                                                #  60    0xaec44  1      OPC=nop             
  nop                                                #  61    0xaec45  1      OPC=nop             
  nop                                                #  62    0xaec46  1      OPC=nop             
                                                                                                  
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEE

