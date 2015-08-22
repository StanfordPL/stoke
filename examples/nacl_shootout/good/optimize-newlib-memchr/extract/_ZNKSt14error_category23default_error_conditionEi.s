  .text
  .globl _ZNKSt14error_category23default_error_conditionEi
  .type _ZNKSt14error_category23default_error_conditionEi, @function

#! file-offset 0x12a340
#! rip-offset  0xea340
#! capacity    32 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt14error_category23default_error_conditionEi:  #        0xea340  0      OPC=<label>         
  popq %r11                                          #  1     0xea340  2      OPC=popq_r64_1      
  movq %rdi, %rax                                    #  2     0xea342  3      OPC=movq_r64_r64    
  movl %esi, %esi                                    #  3     0xea345  2      OPC=movl_r32_r32    
  shlq $0x20, %rax                                   #  4     0xea347  4      OPC=shlq_r64_imm8   
  orq %rsi, %rax                                     #  5     0xea34b  3      OPC=orq_r64_r64     
  andl $0xffffffe0, %r11d                            #  6     0xea34e  7      OPC=andl_r32_imm32  
  nop                                                #  7     0xea355  1      OPC=nop             
  nop                                                #  8     0xea356  1      OPC=nop             
  nop                                                #  9     0xea357  1      OPC=nop             
  nop                                                #  10    0xea358  1      OPC=nop             
  addq %r15, %r11                                    #  11    0xea359  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  12    0xea35c  3      OPC=jmpq_r64        
  nop                                                #  13    0xea35f  1      OPC=nop             
  nop                                                #  14    0xea360  1      OPC=nop             
  nop                                                #  15    0xea361  1      OPC=nop             
  nop                                                #  16    0xea362  1      OPC=nop             
  nop                                                #  17    0xea363  1      OPC=nop             
  nop                                                #  18    0xea364  1      OPC=nop             
  nop                                                #  19    0xea365  1      OPC=nop             
  nop                                                #  20    0xea366  1      OPC=nop             
                                                                                                  
.size _ZNKSt14error_category23default_error_conditionEi, .-_ZNKSt14error_category23default_error_conditionEi

