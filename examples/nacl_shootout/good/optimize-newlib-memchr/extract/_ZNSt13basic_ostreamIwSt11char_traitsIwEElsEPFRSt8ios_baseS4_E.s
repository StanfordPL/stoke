  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E, @function

#! file-offset 0xdd860
#! rip-offset  0x9d860
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E:  #        0x9d860  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x9d860  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x9d861  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                 #  3     0x9d863  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  4     0x9d865  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                        #  5     0x9d867  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                 #  6     0x9d86b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                 #  7     0x9d86e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                        #  8     0x9d870  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                 #  9     0x9d874  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                  #  10    0x9d876  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                          #  11    0x9d878  6      OPC=andl_r32_imm32  
  nop                                                             #  12    0x9d87e  1      OPC=nop             
  nop                                                             #  13    0x9d87f  1      OPC=nop             
  nop                                                             #  14    0x9d880  1      OPC=nop             
  addq %r15, %rsi                                                 #  15    0x9d881  3      OPC=addq_r64_r64    
  callq %rsi                                                      #  16    0x9d884  2      OPC=callq_r64       
  movl %ebx, %eax                                                 #  17    0x9d886  2      OPC=movl_r32_r32    
  popq %rbx                                                       #  18    0x9d888  1      OPC=popq_r64_1      
  popq %r11                                                       #  19    0x9d889  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  20    0x9d88b  7      OPC=andl_r32_imm32  
  nop                                                             #  21    0x9d892  1      OPC=nop             
  nop                                                             #  22    0x9d893  1      OPC=nop             
  nop                                                             #  23    0x9d894  1      OPC=nop             
  nop                                                             #  24    0x9d895  1      OPC=nop             
  addq %r15, %r11                                                 #  25    0x9d896  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  26    0x9d899  3      OPC=jmpq_r64        
  nop                                                             #  27    0x9d89c  1      OPC=nop             
  nop                                                             #  28    0x9d89d  1      OPC=nop             
  nop                                                             #  29    0x9d89e  1      OPC=nop             
  nop                                                             #  30    0x9d89f  1      OPC=nop             
  nop                                                             #  31    0x9d8a0  1      OPC=nop             
  nop                                                             #  32    0x9d8a1  1      OPC=nop             
  nop                                                             #  33    0x9d8a2  1      OPC=nop             
  nop                                                             #  34    0x9d8a3  1      OPC=nop             
  nop                                                             #  35    0x9d8a4  1      OPC=nop             
  nop                                                             #  36    0x9d8a5  1      OPC=nop             
  nop                                                             #  37    0x9d8a6  1      OPC=nop             
  nop                                                             #  38    0x9d8a7  1      OPC=nop             
  nop                                                             #  39    0x9d8a8  1      OPC=nop             
  nop                                                             #  40    0x9d8a9  1      OPC=nop             
  nop                                                             #  41    0x9d8aa  1      OPC=nop             
  nop                                                             #  42    0x9d8ab  1      OPC=nop             
  nop                                                             #  43    0x9d8ac  1      OPC=nop             
                                                                                                               
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E

