  .text
  .globl _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc
  .type _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, @function

#! file-offset 0xee6c0
#! rip-offset  0xae6c0
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc:  #        0xae6c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                               #  1     0xae6c0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                      #  2     0xae6c5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                #  3     0xae6c7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                     #  4     0xae6cc  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  5     0xae6cf  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                     #  6     0xae6d2  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  7     0xae6d5  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                            #  8     0xae6d7  4      OPC=subl_r32_m32    
  movsbl %dl, %r8d                                     #  9     0xae6db  4      OPC=movsbl_r32_r8   
  nop                                                  #  10    0xae6df  1      OPC=nop             
  movl %ebx, %edi                                      #  11    0xae6e0  2      OPC=movl_r32_r32    
  xorl %edx, %edx                                      #  12    0xae6e2  2      OPC=xorl_r32_r32    
  movl $0x1, %ecx                                      #  13    0xae6e4  5      OPC=movl_r32_imm32  
  movl %r12d, %esi                                     #  14    0xae6e9  3      OPC=movl_r32_r32    
  nop                                                  #  15    0xae6ec  1      OPC=nop             
  nop                                                  #  16    0xae6ed  1      OPC=nop             
  nop                                                  #  17    0xae6ee  1      OPC=nop             
  nop                                                  #  18    0xae6ef  1      OPC=nop             
  nop                                                  #  19    0xae6f0  1      OPC=nop             
  nop                                                  #  20    0xae6f1  1      OPC=nop             
  nop                                                  #  21    0xae6f2  1      OPC=nop             
  nop                                                  #  22    0xae6f3  1      OPC=nop             
  nop                                                  #  23    0xae6f4  1      OPC=nop             
  nop                                                  #  24    0xae6f5  1      OPC=nop             
  nop                                                  #  25    0xae6f6  1      OPC=nop             
  nop                                                  #  26    0xae6f7  1      OPC=nop             
  nop                                                  #  27    0xae6f8  1      OPC=nop             
  nop                                                  #  28    0xae6f9  1      OPC=nop             
  nop                                                  #  29    0xae6fa  1      OPC=nop             
  callq ._ZNSs14_M_replace_auxEjjjc                    #  30    0xae6fb  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  31    0xae700  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  32    0xae702  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                #  33    0xae706  3      OPC=leal_r32_m16    
  leal (%r12,%rax,1), %eax                             #  34    0xae709  4      OPC=leal_r32_m16    
  movl %edx, %edx                                      #  35    0xae70d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                   #  36    0xae70f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                 #  37    0xae718  5      OPC=movq_r64_m64    
  nop                                                  #  38    0xae71d  1      OPC=nop             
  nop                                                  #  39    0xae71e  1      OPC=nop             
  nop                                                  #  40    0xae71f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                #  41    0xae720  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                     #  42    0xae725  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  43    0xae728  3      OPC=addq_r64_r64    
  popq %r11                                            #  44    0xae72b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  45    0xae72d  7      OPC=andl_r32_imm32  
  nop                                                  #  46    0xae734  1      OPC=nop             
  nop                                                  #  47    0xae735  1      OPC=nop             
  nop                                                  #  48    0xae736  1      OPC=nop             
  nop                                                  #  49    0xae737  1      OPC=nop             
  addq %r15, %r11                                      #  50    0xae738  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  51    0xae73b  3      OPC=jmpq_r64        
  nop                                                  #  52    0xae73e  1      OPC=nop             
  nop                                                  #  53    0xae73f  1      OPC=nop             
  nop                                                  #  54    0xae740  1      OPC=nop             
  nop                                                  #  55    0xae741  1      OPC=nop             
  nop                                                  #  56    0xae742  1      OPC=nop             
  nop                                                  #  57    0xae743  1      OPC=nop             
  nop                                                  #  58    0xae744  1      OPC=nop             
  nop                                                  #  59    0xae745  1      OPC=nop             
  nop                                                  #  60    0xae746  1      OPC=nop             
                                                                                                    
.size _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, .-_ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc

