  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tED1Ev
  .type _ZNSt7codecvtIcc10_mbstate_tED1Ev, @function

#! file-offset 0x124360
#! rip-offset  0xe4360
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tED1Ev:                   #        0xe4360  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe4360  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe4361  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe4363  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe4366  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe4369  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe436c  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                     #  7     0xe436e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe4376  1      OPC=nop             
  nop                                                 #  9     0xe4377  1      OPC=nop             
  nop                                                 #  10    0xe4378  1      OPC=nop             
  nop                                                 #  11    0xe4379  1      OPC=nop             
  nop                                                 #  12    0xe437a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe437b  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe4380  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                     #  15    0xe4382  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe438a  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe438c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe438f  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe4392  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe4393  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe4398  1      OPC=nop             
  nop                                                 #  22    0xe4399  1      OPC=nop             
  nop                                                 #  23    0xe439a  1      OPC=nop             
  nop                                                 #  24    0xe439b  1      OPC=nop             
  nop                                                 #  25    0xe439c  1      OPC=nop             
  nop                                                 #  26    0xe439d  1      OPC=nop             
  nop                                                 #  27    0xe439e  1      OPC=nop             
  nop                                                 #  28    0xe439f  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe43a0  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe43a2  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                     #  31    0xe43a4  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe43ac  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe43b0  1      OPC=nop             
  nop                                                 #  34    0xe43b1  1      OPC=nop             
  nop                                                 #  35    0xe43b2  1      OPC=nop             
  nop                                                 #  36    0xe43b3  1      OPC=nop             
  nop                                                 #  37    0xe43b4  1      OPC=nop             
  nop                                                 #  38    0xe43b5  1      OPC=nop             
  nop                                                 #  39    0xe43b6  1      OPC=nop             
  nop                                                 #  40    0xe43b7  1      OPC=nop             
  nop                                                 #  41    0xe43b8  1      OPC=nop             
  nop                                                 #  42    0xe43b9  1      OPC=nop             
  nop                                                 #  43    0xe43ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe43bb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe43c0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe43c4  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe43c6  1      OPC=nop             
  nop                                                 #  48    0xe43c7  1      OPC=nop             
  nop                                                 #  49    0xe43c8  1      OPC=nop             
  nop                                                 #  50    0xe43c9  1      OPC=nop             
  nop                                                 #  51    0xe43ca  1      OPC=nop             
  nop                                                 #  52    0xe43cb  1      OPC=nop             
  nop                                                 #  53    0xe43cc  1      OPC=nop             
  nop                                                 #  54    0xe43cd  1      OPC=nop             
  nop                                                 #  55    0xe43ce  1      OPC=nop             
  nop                                                 #  56    0xe43cf  1      OPC=nop             
  nop                                                 #  57    0xe43d0  1      OPC=nop             
  nop                                                 #  58    0xe43d1  1      OPC=nop             
  nop                                                 #  59    0xe43d2  1      OPC=nop             
  nop                                                 #  60    0xe43d3  1      OPC=nop             
  nop                                                 #  61    0xe43d4  1      OPC=nop             
  nop                                                 #  62    0xe43d5  1      OPC=nop             
  nop                                                 #  63    0xe43d6  1      OPC=nop             
  nop                                                 #  64    0xe43d7  1      OPC=nop             
  nop                                                 #  65    0xe43d8  1      OPC=nop             
  nop                                                 #  66    0xe43d9  1      OPC=nop             
  nop                                                 #  67    0xe43da  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe43db  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7codecvtIcc10_mbstate_tED1Ev, .-_ZNSt7codecvtIcc10_mbstate_tED1Ev

