  .text
  .globl _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E
  .type _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, @function

#! file-offset 0xdcba0
#! rip-offset  0x9cba0
#! capacity    64 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E:  #        0x9cba0  0      OPC=<label>         
  pushq %rbx                                        #  1     0x9cba0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                   #  2     0x9cba1  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  3     0x9cba3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  4     0x9cba5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                          #  5     0x9cba7  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  6     0x9cbab  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                   #  7     0x9cbae  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  8     0x9cbb0  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                   #  9     0x9cbb4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                    #  10    0x9cbb6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                            #  11    0x9cbb8  6      OPC=andl_r32_imm32  
  nop                                               #  12    0x9cbbe  1      OPC=nop             
  nop                                               #  13    0x9cbbf  1      OPC=nop             
  nop                                               #  14    0x9cbc0  1      OPC=nop             
  addq %r15, %rsi                                   #  15    0x9cbc1  3      OPC=addq_r64_r64    
  callq %rsi                                        #  16    0x9cbc4  2      OPC=callq_r64       
  movl %ebx, %eax                                   #  17    0x9cbc6  2      OPC=movl_r32_r32    
  popq %rbx                                         #  18    0x9cbc8  1      OPC=popq_r64_1      
  popq %r11                                         #  19    0x9cbc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  20    0x9cbcb  7      OPC=andl_r32_imm32  
  nop                                               #  21    0x9cbd2  1      OPC=nop             
  nop                                               #  22    0x9cbd3  1      OPC=nop             
  nop                                               #  23    0x9cbd4  1      OPC=nop             
  nop                                               #  24    0x9cbd5  1      OPC=nop             
  addq %r15, %r11                                   #  25    0x9cbd6  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  26    0x9cbd9  3      OPC=jmpq_r64        
  nop                                               #  27    0x9cbdc  1      OPC=nop             
  nop                                               #  28    0x9cbdd  1      OPC=nop             
  nop                                               #  29    0x9cbde  1      OPC=nop             
  nop                                               #  30    0x9cbdf  1      OPC=nop             
  nop                                               #  31    0x9cbe0  1      OPC=nop             
  nop                                               #  32    0x9cbe1  1      OPC=nop             
  nop                                               #  33    0x9cbe2  1      OPC=nop             
  nop                                               #  34    0x9cbe3  1      OPC=nop             
  nop                                               #  35    0x9cbe4  1      OPC=nop             
  nop                                               #  36    0x9cbe5  1      OPC=nop             
  nop                                               #  37    0x9cbe6  1      OPC=nop             
  nop                                               #  38    0x9cbe7  1      OPC=nop             
  nop                                               #  39    0x9cbe8  1      OPC=nop             
  nop                                               #  40    0x9cbe9  1      OPC=nop             
  nop                                               #  41    0x9cbea  1      OPC=nop             
  nop                                               #  42    0x9cbeb  1      OPC=nop             
  nop                                               #  43    0x9cbec  1      OPC=nop             
                                                                                                 
.size _ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, .-_ZNSolsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E

