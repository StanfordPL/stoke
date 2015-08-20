  .text
  .globl _ZNKSt14error_category23default_error_conditionEi
  .type _ZNKSt14error_category23default_error_conditionEi, @function

#! file-offset 0x129c20
#! rip-offset  0xe9c20
#! capacity    32 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt14error_category23default_error_conditionEi:  #        0xe9c20  0      OPC=<label>         
  popq %r11                                          #  1     0xe9c20  2      OPC=popq_r64_1      
  movq %rdi, %rax                                    #  2     0xe9c22  3      OPC=movq_r64_r64    
  movl %esi, %esi                                    #  3     0xe9c25  2      OPC=movl_r32_r32    
  shlq $0x20, %rax                                   #  4     0xe9c27  4      OPC=shlq_r64_imm8   
  orq %rsi, %rax                                     #  5     0xe9c2b  3      OPC=orq_r64_r64     
  andl $0xffffffe0, %r11d                            #  6     0xe9c2e  7      OPC=andl_r32_imm32  
  nop                                                #  7     0xe9c35  1      OPC=nop             
  nop                                                #  8     0xe9c36  1      OPC=nop             
  nop                                                #  9     0xe9c37  1      OPC=nop             
  nop                                                #  10    0xe9c38  1      OPC=nop             
  addq %r15, %r11                                    #  11    0xe9c39  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  12    0xe9c3c  3      OPC=jmpq_r64        
  nop                                                #  13    0xe9c3f  1      OPC=nop             
  nop                                                #  14    0xe9c40  1      OPC=nop             
  nop                                                #  15    0xe9c41  1      OPC=nop             
  nop                                                #  16    0xe9c42  1      OPC=nop             
  nop                                                #  17    0xe9c43  1      OPC=nop             
  nop                                                #  18    0xe9c44  1      OPC=nop             
  nop                                                #  19    0xe9c45  1      OPC=nop             
  nop                                                #  20    0xe9c46  1      OPC=nop             
                                                                                                  
.size _ZNKSt14error_category23default_error_conditionEi, .-_ZNKSt14error_category23default_error_conditionEi

