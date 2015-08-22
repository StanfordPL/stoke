  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj, @function

#! file-offset 0x118540
#! rip-offset  0xd8540
#! capacity    96 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj:        #        0xd8540  0      OPC=<label>         
  movl %esi, %esi                                   #  1     0xd8540  2      OPC=movl_r32_r32    
  pushq %rbx                                        #  2     0xd8542  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                   #  3     0xd8543  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  4     0xd8545  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                          #  5     0xd8547  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  6     0xd854b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                   #  7     0xd854e  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %edx                          #  8     0xd8550  4      OPC=cmpl_r32_m32    
  ja .L_d8580                                       #  9     0xd8554  2      OPC=ja_label        
  movl %ebx, %edi                                   #  10    0xd8556  2      OPC=movl_r32_r32    
  nop                                               #  11    0xd8558  1      OPC=nop             
  nop                                               #  12    0xd8559  1      OPC=nop             
  nop                                               #  13    0xd855a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj  #  14    0xd855b  5      OPC=callq_label     
  movl %ebx, %eax                                   #  15    0xd8560  2      OPC=movl_r32_r32    
  popq %rbx                                         #  16    0xd8562  1      OPC=popq_r64_1      
  popq %r11                                         #  17    0xd8563  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  18    0xd8565  7      OPC=andl_r32_imm32  
  nop                                               #  19    0xd856c  1      OPC=nop             
  nop                                               #  20    0xd856d  1      OPC=nop             
  nop                                               #  21    0xd856e  1      OPC=nop             
  nop                                               #  22    0xd856f  1      OPC=nop             
  addq %r15, %r11                                   #  23    0xd8570  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  24    0xd8573  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                    #  25    0xd8576  2      OPC=xchgw_ax_r16    
  nop                                               #  26    0xd8578  1      OPC=nop             
  nop                                               #  27    0xd8579  1      OPC=nop             
  nop                                               #  28    0xd857a  1      OPC=nop             
  nop                                               #  29    0xd857b  1      OPC=nop             
  nop                                               #  30    0xd857c  1      OPC=nop             
  nop                                               #  31    0xd857d  1      OPC=nop             
  nop                                               #  32    0xd857e  1      OPC=nop             
  nop                                               #  33    0xd857f  1      OPC=nop             
  nop                                               #  34    0xd8580  1      OPC=nop             
  nop                                               #  35    0xd8581  1      OPC=nop             
  nop                                               #  36    0xd8582  1      OPC=nop             
  nop                                               #  37    0xd8583  1      OPC=nop             
  nop                                               #  38    0xd8584  1      OPC=nop             
  nop                                               #  39    0xd8585  1      OPC=nop             
  nop                                               #  40    0xd8586  1      OPC=nop             
.L_d8580:                                           #        0xd8587  0      OPC=<label>         
  movl $0x1003bb16, %edi                            #  41    0xd8587  5      OPC=movl_r32_imm32  
  nop                                               #  42    0xd858c  1      OPC=nop             
  nop                                               #  43    0xd858d  1      OPC=nop             
  nop                                               #  44    0xd858e  1      OPC=nop             
  nop                                               #  45    0xd858f  1      OPC=nop             
  nop                                               #  46    0xd8590  1      OPC=nop             
  nop                                               #  47    0xd8591  1      OPC=nop             
  nop                                               #  48    0xd8592  1      OPC=nop             
  nop                                               #  49    0xd8593  1      OPC=nop             
  nop                                               #  50    0xd8594  1      OPC=nop             
  nop                                               #  51    0xd8595  1      OPC=nop             
  nop                                               #  52    0xd8596  1      OPC=nop             
  nop                                               #  53    0xd8597  1      OPC=nop             
  nop                                               #  54    0xd8598  1      OPC=nop             
  nop                                               #  55    0xd8599  1      OPC=nop             
  nop                                               #  56    0xd859a  1      OPC=nop             
  nop                                               #  57    0xd859b  1      OPC=nop             
  nop                                               #  58    0xd859c  1      OPC=nop             
  nop                                               #  59    0xd859d  1      OPC=nop             
  nop                                               #  60    0xd859e  1      OPC=nop             
  nop                                               #  61    0xd859f  1      OPC=nop             
  nop                                               #  62    0xd85a0  1      OPC=nop             
  nop                                               #  63    0xd85a1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc              #  64    0xd85a2  5      OPC=callq_label     
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj, .-_ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj

