  .text
  .globl _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E
  .type _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, @function

#! file-offset 0xa70e0
#! rip-offset  0x670e0
#! capacity    64 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E:  #        0x670e0  0      OPC=<label>         
  pushq %rbx                                        #  1     0x670e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                   #  2     0x670e1  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  3     0x670e3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  4     0x670e5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                          #  5     0x670e7  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  6     0x670eb  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                   #  7     0x670ee  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  8     0x670f0  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                   #  9     0x670f4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                    #  10    0x670f6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                            #  11    0x670f8  6      OPC=andl_r32_imm32  
  nop                                               #  12    0x670fe  1      OPC=nop             
  nop                                               #  13    0x670ff  1      OPC=nop             
  nop                                               #  14    0x67100  1      OPC=nop             
  addq %r15, %rsi                                   #  15    0x67101  3      OPC=addq_r64_r64    
  callq %rsi                                        #  16    0x67104  2      OPC=callq_r64       
  movl %ebx, %eax                                   #  17    0x67106  2      OPC=movl_r32_r32    
  popq %rbx                                         #  18    0x67108  1      OPC=popq_r64_1      
  popq %r11                                         #  19    0x67109  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  20    0x6710b  7      OPC=andl_r32_imm32  
  nop                                               #  21    0x67112  1      OPC=nop             
  nop                                               #  22    0x67113  1      OPC=nop             
  nop                                               #  23    0x67114  1      OPC=nop             
  nop                                               #  24    0x67115  1      OPC=nop             
  addq %r15, %r11                                   #  25    0x67116  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  26    0x67119  3      OPC=jmpq_r64        
  nop                                               #  27    0x6711c  1      OPC=nop             
  nop                                               #  28    0x6711d  1      OPC=nop             
  nop                                               #  29    0x6711e  1      OPC=nop             
  nop                                               #  30    0x6711f  1      OPC=nop             
  nop                                               #  31    0x67120  1      OPC=nop             
  nop                                               #  32    0x67121  1      OPC=nop             
  nop                                               #  33    0x67122  1      OPC=nop             
  nop                                               #  34    0x67123  1      OPC=nop             
  nop                                               #  35    0x67124  1      OPC=nop             
  nop                                               #  36    0x67125  1      OPC=nop             
  nop                                               #  37    0x67126  1      OPC=nop             
  nop                                               #  38    0x67127  1      OPC=nop             
  nop                                               #  39    0x67128  1      OPC=nop             
  nop                                               #  40    0x67129  1      OPC=nop             
  nop                                               #  41    0x6712a  1      OPC=nop             
  nop                                               #  42    0x6712b  1      OPC=nop             
  nop                                               #  43    0x6712c  1      OPC=nop             
                                                                                                 
.size _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, .-_ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E

