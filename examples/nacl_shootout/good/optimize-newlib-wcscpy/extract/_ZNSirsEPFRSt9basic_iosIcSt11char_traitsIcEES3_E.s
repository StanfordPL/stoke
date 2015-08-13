  .text
  .globl _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E
  .type _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, @function

#! file-offset 0xa6de0
#! rip-offset  0x66de0
#! capacity    64 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E:  #        0x66de0  0      OPC=<label>         
  pushq %rbx                                        #  1     0x66de0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                   #  2     0x66de1  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  3     0x66de3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  4     0x66de5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                          #  5     0x66de7  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  6     0x66deb  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                   #  7     0x66dee  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  8     0x66df0  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                   #  9     0x66df4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                    #  10    0x66df6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                            #  11    0x66df8  6      OPC=andl_r32_imm32  
  nop                                               #  12    0x66dfe  1      OPC=nop             
  nop                                               #  13    0x66dff  1      OPC=nop             
  nop                                               #  14    0x66e00  1      OPC=nop             
  addq %r15, %rsi                                   #  15    0x66e01  3      OPC=addq_r64_r64    
  callq %rsi                                        #  16    0x66e04  2      OPC=callq_r64       
  movl %ebx, %eax                                   #  17    0x66e06  2      OPC=movl_r32_r32    
  popq %rbx                                         #  18    0x66e08  1      OPC=popq_r64_1      
  popq %r11                                         #  19    0x66e09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  20    0x66e0b  7      OPC=andl_r32_imm32  
  nop                                               #  21    0x66e12  1      OPC=nop             
  nop                                               #  22    0x66e13  1      OPC=nop             
  nop                                               #  23    0x66e14  1      OPC=nop             
  nop                                               #  24    0x66e15  1      OPC=nop             
  addq %r15, %r11                                   #  25    0x66e16  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  26    0x66e19  3      OPC=jmpq_r64        
  nop                                               #  27    0x66e1c  1      OPC=nop             
  nop                                               #  28    0x66e1d  1      OPC=nop             
  nop                                               #  29    0x66e1e  1      OPC=nop             
  nop                                               #  30    0x66e1f  1      OPC=nop             
  nop                                               #  31    0x66e20  1      OPC=nop             
  nop                                               #  32    0x66e21  1      OPC=nop             
  nop                                               #  33    0x66e22  1      OPC=nop             
  nop                                               #  34    0x66e23  1      OPC=nop             
  nop                                               #  35    0x66e24  1      OPC=nop             
  nop                                               #  36    0x66e25  1      OPC=nop             
  nop                                               #  37    0x66e26  1      OPC=nop             
  nop                                               #  38    0x66e27  1      OPC=nop             
  nop                                               #  39    0x66e28  1      OPC=nop             
  nop                                               #  40    0x66e29  1      OPC=nop             
  nop                                               #  41    0x66e2a  1      OPC=nop             
  nop                                               #  42    0x66e2b  1      OPC=nop             
  nop                                               #  43    0x66e2c  1      OPC=nop             
                                                                                                 
.size _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, .-_ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E

