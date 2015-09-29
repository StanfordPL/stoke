  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E, @function

#! file-offset 0xa7ac0
#! rip-offset  0x67ac0
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E:  #        0x67ac0  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x67ac0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x67ac1  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                 #  3     0x67ac3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  4     0x67ac5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                        #  5     0x67ac7  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                 #  6     0x67acb  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                 #  7     0x67ace  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                        #  8     0x67ad0  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                 #  9     0x67ad4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                  #  10    0x67ad6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                          #  11    0x67ad8  6      OPC=andl_r32_imm32  
  nop                                                             #  12    0x67ade  1      OPC=nop             
  nop                                                             #  13    0x67adf  1      OPC=nop             
  nop                                                             #  14    0x67ae0  1      OPC=nop             
  addq %r15, %rsi                                                 #  15    0x67ae1  3      OPC=addq_r64_r64    
  callq %rsi                                                      #  16    0x67ae4  2      OPC=callq_r64       
  movl %ebx, %eax                                                 #  17    0x67ae6  2      OPC=movl_r32_r32    
  popq %rbx                                                       #  18    0x67ae8  1      OPC=popq_r64_1      
  popq %r11                                                       #  19    0x67ae9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  20    0x67aeb  7      OPC=andl_r32_imm32  
  nop                                                             #  21    0x67af2  1      OPC=nop             
  nop                                                             #  22    0x67af3  1      OPC=nop             
  nop                                                             #  23    0x67af4  1      OPC=nop             
  nop                                                             #  24    0x67af5  1      OPC=nop             
  addq %r15, %r11                                                 #  25    0x67af6  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  26    0x67af9  3      OPC=jmpq_r64        
  nop                                                             #  27    0x67afc  1      OPC=nop             
  nop                                                             #  28    0x67afd  1      OPC=nop             
  nop                                                             #  29    0x67afe  1      OPC=nop             
  nop                                                             #  30    0x67aff  1      OPC=nop             
  nop                                                             #  31    0x67b00  1      OPC=nop             
  nop                                                             #  32    0x67b01  1      OPC=nop             
  nop                                                             #  33    0x67b02  1      OPC=nop             
  nop                                                             #  34    0x67b03  1      OPC=nop             
  nop                                                             #  35    0x67b04  1      OPC=nop             
  nop                                                             #  36    0x67b05  1      OPC=nop             
  nop                                                             #  37    0x67b06  1      OPC=nop             
  nop                                                             #  38    0x67b07  1      OPC=nop             
  nop                                                             #  39    0x67b08  1      OPC=nop             
  nop                                                             #  40    0x67b09  1      OPC=nop             
  nop                                                             #  41    0x67b0a  1      OPC=nop             
  nop                                                             #  42    0x67b0b  1      OPC=nop             
  nop                                                             #  43    0x67b0c  1      OPC=nop             
                                                                                                               
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E

