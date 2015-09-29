  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_, @function

#! file-offset 0x11a340
#! rip-offset  0xda340
#! capacity    128 bytes

# Text                                                                             #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_:  #        0xda340  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                            #  1     0xda340  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                                 #  2     0xda345  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                           #  3     0xda348  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                 #  4     0xda34d  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                  #  5     0xda350  3      OPC=addq_r64_r64    
  movl %esi, %ebx                                                                  #  6     0xda353  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                                                #  7     0xda355  3      OPC=movl_r32_r32    
  subl (%r15,%r12,1), %ebx                                                         #  8     0xda358  4      OPC=subl_r32_m32    
  subl %esi, %edx                                                                  #  9     0xda35c  2      OPC=subl_r32_r32    
  xchgw %ax, %ax                                                                   #  10    0xda35e  2      OPC=xchgw_ax_r16    
  movl %r12d, %edi                                                                 #  11    0xda360  3      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                                                  #  12    0xda363  2      OPC=xorl_r32_r32    
  sarl $0x2, %edx                                                                  #  13    0xda365  3      OPC=sarl_r32_imm8   
  sarl $0x2, %ebx                                                                  #  14    0xda368  3      OPC=sarl_r32_imm8   
  movl %ebx, %esi                                                                  #  15    0xda36b  2      OPC=movl_r32_r32    
  nop                                                                              #  16    0xda36d  1      OPC=nop             
  nop                                                                              #  17    0xda36e  1      OPC=nop             
  nop                                                                              #  18    0xda36f  1      OPC=nop             
  nop                                                                              #  19    0xda370  1      OPC=nop             
  nop                                                                              #  20    0xda371  1      OPC=nop             
  nop                                                                              #  21    0xda372  1      OPC=nop             
  nop                                                                              #  22    0xda373  1      OPC=nop             
  nop                                                                              #  23    0xda374  1      OPC=nop             
  nop                                                                              #  24    0xda375  1      OPC=nop             
  nop                                                                              #  25    0xda376  1      OPC=nop             
  nop                                                                              #  26    0xda377  1      OPC=nop             
  nop                                                                              #  27    0xda378  1      OPC=nop             
  nop                                                                              #  28    0xda379  1      OPC=nop             
  nop                                                                              #  29    0xda37a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj                             #  30    0xda37b  5      OPC=callq_label     
  movl %r12d, %r12d                                                                #  31    0xda380  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                                                         #  32    0xda383  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                                            #  33    0xda387  3      OPC=leal_r32_m16    
  leal (%rax,%rbx,4), %eax                                                         #  34    0xda38a  3      OPC=leal_r32_m16    
  movl %edx, %edx                                                                  #  35    0xda38d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                               #  36    0xda38f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                                             #  37    0xda398  5      OPC=movq_r64_m64    
  nop                                                                              #  38    0xda39d  1      OPC=nop             
  nop                                                                              #  39    0xda39e  1      OPC=nop             
  nop                                                                              #  40    0xda39f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                            #  41    0xda3a0  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                 #  42    0xda3a5  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                  #  43    0xda3a8  3      OPC=addq_r64_r64    
  popq %r11                                                                        #  44    0xda3ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                          #  45    0xda3ad  7      OPC=andl_r32_imm32  
  nop                                                                              #  46    0xda3b4  1      OPC=nop             
  nop                                                                              #  47    0xda3b5  1      OPC=nop             
  nop                                                                              #  48    0xda3b6  1      OPC=nop             
  nop                                                                              #  49    0xda3b7  1      OPC=nop             
  addq %r15, %r11                                                                  #  50    0xda3b8  3      OPC=addq_r64_r64    
  jmpq %r11                                                                        #  51    0xda3bb  3      OPC=jmpq_r64        
  nop                                                                              #  52    0xda3be  1      OPC=nop             
  nop                                                                              #  53    0xda3bf  1      OPC=nop             
  nop                                                                              #  54    0xda3c0  1      OPC=nop             
  nop                                                                              #  55    0xda3c1  1      OPC=nop             
  nop                                                                              #  56    0xda3c2  1      OPC=nop             
  nop                                                                              #  57    0xda3c3  1      OPC=nop             
  nop                                                                              #  58    0xda3c4  1      OPC=nop             
  nop                                                                              #  59    0xda3c5  1      OPC=nop             
  nop                                                                              #  60    0xda3c6  1      OPC=nop             
                                                                                                                                
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_

