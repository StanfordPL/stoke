  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E, @function

#! file-offset 0xdd820
#! rip-offset  0x9d820
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E:  #        0x9d820  0      OPC=<label>         
  pushq %rbx                                                             #  1     0x9d820  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                        #  2     0x9d821  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                        #  3     0x9d823  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                        #  4     0x9d825  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                               #  5     0x9d827  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                        #  6     0x9d82b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                        #  7     0x9d82e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                               #  8     0x9d830  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                        #  9     0x9d834  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                         #  10    0x9d836  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                                 #  11    0x9d838  6      OPC=andl_r32_imm32  
  nop                                                                    #  12    0x9d83e  1      OPC=nop             
  nop                                                                    #  13    0x9d83f  1      OPC=nop             
  nop                                                                    #  14    0x9d840  1      OPC=nop             
  addq %r15, %rsi                                                        #  15    0x9d841  3      OPC=addq_r64_r64    
  callq %rsi                                                             #  16    0x9d844  2      OPC=callq_r64       
  movl %ebx, %eax                                                        #  17    0x9d846  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x9d848  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x9d849  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x9d84b  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x9d852  1      OPC=nop             
  nop                                                                    #  22    0x9d853  1      OPC=nop             
  nop                                                                    #  23    0x9d854  1      OPC=nop             
  nop                                                                    #  24    0x9d855  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x9d856  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x9d859  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x9d85c  1      OPC=nop             
  nop                                                                    #  28    0x9d85d  1      OPC=nop             
  nop                                                                    #  29    0x9d85e  1      OPC=nop             
  nop                                                                    #  30    0x9d85f  1      OPC=nop             
  nop                                                                    #  31    0x9d860  1      OPC=nop             
  nop                                                                    #  32    0x9d861  1      OPC=nop             
  nop                                                                    #  33    0x9d862  1      OPC=nop             
  nop                                                                    #  34    0x9d863  1      OPC=nop             
  nop                                                                    #  35    0x9d864  1      OPC=nop             
  nop                                                                    #  36    0x9d865  1      OPC=nop             
  nop                                                                    #  37    0x9d866  1      OPC=nop             
  nop                                                                    #  38    0x9d867  1      OPC=nop             
  nop                                                                    #  39    0x9d868  1      OPC=nop             
  nop                                                                    #  40    0x9d869  1      OPC=nop             
  nop                                                                    #  41    0x9d86a  1      OPC=nop             
  nop                                                                    #  42    0x9d86b  1      OPC=nop             
  nop                                                                    #  43    0x9d86c  1      OPC=nop             
                                                                                                                      
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E

