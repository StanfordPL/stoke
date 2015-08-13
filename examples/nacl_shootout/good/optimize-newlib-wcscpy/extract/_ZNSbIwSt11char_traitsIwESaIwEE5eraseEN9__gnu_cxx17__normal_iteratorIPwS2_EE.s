  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE, @function

#! file-offset 0x1199a0
#! rip-offset  0xd99a0
#! capacity    128 bytes

# Text                                                                          #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE:  #        0xd99a0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                         #  1     0xd99a0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                              #  2     0xd99a5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                        #  3     0xd99a8  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                              #  4     0xd99ad  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                               #  5     0xd99b0  3      OPC=addq_r64_r64    
  movl %esi, %ebx                                                               #  6     0xd99b3  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                                             #  7     0xd99b5  3      OPC=movl_r32_r32    
  subl (%r15,%r12,1), %ebx                                                      #  8     0xd99b8  4      OPC=subl_r32_m32    
  nop                                                                           #  9     0xd99bc  1      OPC=nop             
  nop                                                                           #  10    0xd99bd  1      OPC=nop             
  nop                                                                           #  11    0xd99be  1      OPC=nop             
  nop                                                                           #  12    0xd99bf  1      OPC=nop             
  movl $0x1, %edx                                                               #  13    0xd99c0  5      OPC=movl_r32_imm32  
  movl %r12d, %edi                                                              #  14    0xd99c5  3      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                                               #  15    0xd99c8  2      OPC=xorl_r32_r32    
  sarl $0x2, %ebx                                                               #  16    0xd99ca  3      OPC=sarl_r32_imm8   
  movl %ebx, %esi                                                               #  17    0xd99cd  2      OPC=movl_r32_r32    
  nop                                                                           #  18    0xd99cf  1      OPC=nop             
  nop                                                                           #  19    0xd99d0  1      OPC=nop             
  nop                                                                           #  20    0xd99d1  1      OPC=nop             
  nop                                                                           #  21    0xd99d2  1      OPC=nop             
  nop                                                                           #  22    0xd99d3  1      OPC=nop             
  nop                                                                           #  23    0xd99d4  1      OPC=nop             
  nop                                                                           #  24    0xd99d5  1      OPC=nop             
  nop                                                                           #  25    0xd99d6  1      OPC=nop             
  nop                                                                           #  26    0xd99d7  1      OPC=nop             
  nop                                                                           #  27    0xd99d8  1      OPC=nop             
  nop                                                                           #  28    0xd99d9  1      OPC=nop             
  nop                                                                           #  29    0xd99da  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj                          #  30    0xd99db  5      OPC=callq_label     
  movl %r12d, %r12d                                                             #  31    0xd99e0  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                                                      #  32    0xd99e3  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                                         #  33    0xd99e7  3      OPC=leal_r32_m16    
  leal (%rax,%rbx,4), %eax                                                      #  34    0xd99ea  3      OPC=leal_r32_m16    
  movl %edx, %edx                                                               #  35    0xd99ed  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                            #  36    0xd99ef  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                                          #  37    0xd99f8  5      OPC=movq_r64_m64    
  nop                                                                           #  38    0xd99fd  1      OPC=nop             
  nop                                                                           #  39    0xd99fe  1      OPC=nop             
  nop                                                                           #  40    0xd99ff  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                         #  41    0xd9a00  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                              #  42    0xd9a05  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                               #  43    0xd9a08  3      OPC=addq_r64_r64    
  popq %r11                                                                     #  44    0xd9a0b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                       #  45    0xd9a0d  7      OPC=andl_r32_imm32  
  nop                                                                           #  46    0xd9a14  1      OPC=nop             
  nop                                                                           #  47    0xd9a15  1      OPC=nop             
  nop                                                                           #  48    0xd9a16  1      OPC=nop             
  nop                                                                           #  49    0xd9a17  1      OPC=nop             
  addq %r15, %r11                                                               #  50    0xd9a18  3      OPC=addq_r64_r64    
  jmpq %r11                                                                     #  51    0xd9a1b  3      OPC=jmpq_r64        
  nop                                                                           #  52    0xd9a1e  1      OPC=nop             
  nop                                                                           #  53    0xd9a1f  1      OPC=nop             
  nop                                                                           #  54    0xd9a20  1      OPC=nop             
  nop                                                                           #  55    0xd9a21  1      OPC=nop             
  nop                                                                           #  56    0xd9a22  1      OPC=nop             
  nop                                                                           #  57    0xd9a23  1      OPC=nop             
  nop                                                                           #  58    0xd9a24  1      OPC=nop             
  nop                                                                           #  59    0xd9a25  1      OPC=nop             
  nop                                                                           #  60    0xd9a26  1      OPC=nop             
                                                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE

