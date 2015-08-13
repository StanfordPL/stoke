  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E, @function

#! file-offset 0xdce40
#! rip-offset  0x9ce40
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E:  #        0x9ce40  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x9ce40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x9ce41  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                 #  3     0x9ce43  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  4     0x9ce45  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                        #  5     0x9ce47  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                 #  6     0x9ce4b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                 #  7     0x9ce4e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                        #  8     0x9ce50  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                 #  9     0x9ce54  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                  #  10    0x9ce56  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                          #  11    0x9ce58  6      OPC=andl_r32_imm32  
  nop                                                             #  12    0x9ce5e  1      OPC=nop             
  nop                                                             #  13    0x9ce5f  1      OPC=nop             
  nop                                                             #  14    0x9ce60  1      OPC=nop             
  addq %r15, %rsi                                                 #  15    0x9ce61  3      OPC=addq_r64_r64    
  callq %rsi                                                      #  16    0x9ce64  2      OPC=callq_r64       
  movl %ebx, %eax                                                 #  17    0x9ce66  2      OPC=movl_r32_r32    
  popq %rbx                                                       #  18    0x9ce68  1      OPC=popq_r64_1      
  popq %r11                                                       #  19    0x9ce69  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  20    0x9ce6b  7      OPC=andl_r32_imm32  
  nop                                                             #  21    0x9ce72  1      OPC=nop             
  nop                                                             #  22    0x9ce73  1      OPC=nop             
  nop                                                             #  23    0x9ce74  1      OPC=nop             
  nop                                                             #  24    0x9ce75  1      OPC=nop             
  addq %r15, %r11                                                 #  25    0x9ce76  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  26    0x9ce79  3      OPC=jmpq_r64        
  nop                                                             #  27    0x9ce7c  1      OPC=nop             
  nop                                                             #  28    0x9ce7d  1      OPC=nop             
  nop                                                             #  29    0x9ce7e  1      OPC=nop             
  nop                                                             #  30    0x9ce7f  1      OPC=nop             
  nop                                                             #  31    0x9ce80  1      OPC=nop             
  nop                                                             #  32    0x9ce81  1      OPC=nop             
  nop                                                             #  33    0x9ce82  1      OPC=nop             
  nop                                                             #  34    0x9ce83  1      OPC=nop             
  nop                                                             #  35    0x9ce84  1      OPC=nop             
  nop                                                             #  36    0x9ce85  1      OPC=nop             
  nop                                                             #  37    0x9ce86  1      OPC=nop             
  nop                                                             #  38    0x9ce87  1      OPC=nop             
  nop                                                             #  39    0x9ce88  1      OPC=nop             
  nop                                                             #  40    0x9ce89  1      OPC=nop             
  nop                                                             #  41    0x9ce8a  1      OPC=nop             
  nop                                                             #  42    0x9ce8b  1      OPC=nop             
  nop                                                             #  43    0x9ce8c  1      OPC=nop             
                                                                                                               
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt8ios_baseS4_E

