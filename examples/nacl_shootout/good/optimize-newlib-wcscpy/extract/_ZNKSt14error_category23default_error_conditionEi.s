  .text
  .globl _ZNKSt14error_category23default_error_conditionEi
  .type _ZNKSt14error_category23default_error_conditionEi, @function

#! file-offset 0x129920
#! rip-offset  0xe9920
#! capacity    32 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt14error_category23default_error_conditionEi:  #        0xe9920  0      OPC=<label>         
  popq %r11                                          #  1     0xe9920  2      OPC=popq_r64_1      
  movq %rdi, %rax                                    #  2     0xe9922  3      OPC=movq_r64_r64    
  movl %esi, %esi                                    #  3     0xe9925  2      OPC=movl_r32_r32    
  shlq $0x20, %rax                                   #  4     0xe9927  4      OPC=shlq_r64_imm8   
  orq %rsi, %rax                                     #  5     0xe992b  3      OPC=orq_r64_r64     
  andl $0xffffffe0, %r11d                            #  6     0xe992e  7      OPC=andl_r32_imm32  
  nop                                                #  7     0xe9935  1      OPC=nop             
  nop                                                #  8     0xe9936  1      OPC=nop             
  nop                                                #  9     0xe9937  1      OPC=nop             
  nop                                                #  10    0xe9938  1      OPC=nop             
  addq %r15, %r11                                    #  11    0xe9939  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  12    0xe993c  3      OPC=jmpq_r64        
  nop                                                #  13    0xe993f  1      OPC=nop             
  nop                                                #  14    0xe9940  1      OPC=nop             
  nop                                                #  15    0xe9941  1      OPC=nop             
  nop                                                #  16    0xe9942  1      OPC=nop             
  nop                                                #  17    0xe9943  1      OPC=nop             
  nop                                                #  18    0xe9944  1      OPC=nop             
  nop                                                #  19    0xe9945  1      OPC=nop             
  nop                                                #  20    0xe9946  1      OPC=nop             
                                                                                                  
.size _ZNKSt14error_category23default_error_conditionEi, .-_ZNKSt14error_category23default_error_conditionEi

