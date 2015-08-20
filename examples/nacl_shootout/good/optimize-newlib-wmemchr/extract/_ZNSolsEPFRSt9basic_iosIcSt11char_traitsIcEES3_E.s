  .text
  .globl _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E
  .type _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, @function

#! file-offset 0xdcea0
#! rip-offset  0x9cea0
#! capacity    64 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E:  #        0x9cea0  0      OPC=<label>         
  pushq %rbx                                        #  1     0x9cea0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                   #  2     0x9cea1  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  3     0x9cea3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  4     0x9cea5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                          #  5     0x9cea7  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  6     0x9ceab  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                   #  7     0x9ceae  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  8     0x9ceb0  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                   #  9     0x9ceb4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                    #  10    0x9ceb6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                            #  11    0x9ceb8  6      OPC=andl_r32_imm32  
  nop                                               #  12    0x9cebe  1      OPC=nop             
  nop                                               #  13    0x9cebf  1      OPC=nop             
  nop                                               #  14    0x9cec0  1      OPC=nop             
  addq %r15, %rsi                                   #  15    0x9cec1  3      OPC=addq_r64_r64    
  callq %rsi                                        #  16    0x9cec4  2      OPC=callq_r64       
  movl %ebx, %eax                                   #  17    0x9cec6  2      OPC=movl_r32_r32    
  popq %rbx                                         #  18    0x9cec8  1      OPC=popq_r64_1      
  popq %r11                                         #  19    0x9cec9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  20    0x9cecb  7      OPC=andl_r32_imm32  
  nop                                               #  21    0x9ced2  1      OPC=nop             
  nop                                               #  22    0x9ced3  1      OPC=nop             
  nop                                               #  23    0x9ced4  1      OPC=nop             
  nop                                               #  24    0x9ced5  1      OPC=nop             
  addq %r15, %r11                                   #  25    0x9ced6  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  26    0x9ced9  3      OPC=jmpq_r64        
  nop                                               #  27    0x9cedc  1      OPC=nop             
  nop                                               #  28    0x9cedd  1      OPC=nop             
  nop                                               #  29    0x9cede  1      OPC=nop             
  nop                                               #  30    0x9cedf  1      OPC=nop             
  nop                                               #  31    0x9cee0  1      OPC=nop             
  nop                                               #  32    0x9cee1  1      OPC=nop             
  nop                                               #  33    0x9cee2  1      OPC=nop             
  nop                                               #  34    0x9cee3  1      OPC=nop             
  nop                                               #  35    0x9cee4  1      OPC=nop             
  nop                                               #  36    0x9cee5  1      OPC=nop             
  nop                                               #  37    0x9cee6  1      OPC=nop             
  nop                                               #  38    0x9cee7  1      OPC=nop             
  nop                                               #  39    0x9cee8  1      OPC=nop             
  nop                                               #  40    0x9cee9  1      OPC=nop             
  nop                                               #  41    0x9ceea  1      OPC=nop             
  nop                                               #  42    0x9ceeb  1      OPC=nop             
  nop                                               #  43    0x9ceec  1      OPC=nop             
                                                                                                 
.size _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, .-_ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E

