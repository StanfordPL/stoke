  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E, @function

#! file-offset 0xa70a0
#! rip-offset  0x670a0
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E:  #        0x670a0  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x670a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x670a1  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                 #  3     0x670a3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  4     0x670a5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                        #  5     0x670a7  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                 #  6     0x670ab  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                 #  7     0x670ae  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                        #  8     0x670b0  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                 #  9     0x670b4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                  #  10    0x670b6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                          #  11    0x670b8  6      OPC=andl_r32_imm32  
  nop                                                             #  12    0x670be  1      OPC=nop             
  nop                                                             #  13    0x670bf  1      OPC=nop             
  nop                                                             #  14    0x670c0  1      OPC=nop             
  addq %r15, %rsi                                                 #  15    0x670c1  3      OPC=addq_r64_r64    
  callq %rsi                                                      #  16    0x670c4  2      OPC=callq_r64       
  movl %ebx, %eax                                                 #  17    0x670c6  2      OPC=movl_r32_r32    
  popq %rbx                                                       #  18    0x670c8  1      OPC=popq_r64_1      
  popq %r11                                                       #  19    0x670c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  20    0x670cb  7      OPC=andl_r32_imm32  
  nop                                                             #  21    0x670d2  1      OPC=nop             
  nop                                                             #  22    0x670d3  1      OPC=nop             
  nop                                                             #  23    0x670d4  1      OPC=nop             
  nop                                                             #  24    0x670d5  1      OPC=nop             
  addq %r15, %r11                                                 #  25    0x670d6  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  26    0x670d9  3      OPC=jmpq_r64        
  nop                                                             #  27    0x670dc  1      OPC=nop             
  nop                                                             #  28    0x670dd  1      OPC=nop             
  nop                                                             #  29    0x670de  1      OPC=nop             
  nop                                                             #  30    0x670df  1      OPC=nop             
  nop                                                             #  31    0x670e0  1      OPC=nop             
  nop                                                             #  32    0x670e1  1      OPC=nop             
  nop                                                             #  33    0x670e2  1      OPC=nop             
  nop                                                             #  34    0x670e3  1      OPC=nop             
  nop                                                             #  35    0x670e4  1      OPC=nop             
  nop                                                             #  36    0x670e5  1      OPC=nop             
  nop                                                             #  37    0x670e6  1      OPC=nop             
  nop                                                             #  38    0x670e7  1      OPC=nop             
  nop                                                             #  39    0x670e8  1      OPC=nop             
  nop                                                             #  40    0x670e9  1      OPC=nop             
  nop                                                             #  41    0x670ea  1      OPC=nop             
  nop                                                             #  42    0x670eb  1      OPC=nop             
  nop                                                             #  43    0x670ec  1      OPC=nop             
                                                                                                               
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt8ios_baseS4_E

