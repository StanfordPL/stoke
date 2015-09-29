  .text
  .globl _ZNKSt7collateIcE10_M_compareEPKcS2_
  .type _ZNKSt7collateIcE10_M_compareEPKcS2_, @function

#! file-offset 0x11bb80
#! rip-offset  0xdbb80
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE10_M_compareEPKcS2_:  #        0xdbb80  0      OPC=<label>         
  subl $0x8, %esp                       #  1     0xdbb80  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  2     0xdbb83  3      OPC=addq_r64_r64    
  movl %esi, %edi                       #  3     0xdbb86  2      OPC=movl_r32_r32    
  movl %edx, %esi                       #  4     0xdbb88  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                        #  5     0xdbb8a  2      OPC=xchgw_ax_r16    
  nop                                   #  6     0xdbb8c  1      OPC=nop             
  nop                                   #  7     0xdbb8d  1      OPC=nop             
  nop                                   #  8     0xdbb8e  1      OPC=nop             
  nop                                   #  9     0xdbb8f  1      OPC=nop             
  nop                                   #  10    0xdbb90  1      OPC=nop             
  nop                                   #  11    0xdbb91  1      OPC=nop             
  nop                                   #  12    0xdbb92  1      OPC=nop             
  nop                                   #  13    0xdbb93  1      OPC=nop             
  nop                                   #  14    0xdbb94  1      OPC=nop             
  nop                                   #  15    0xdbb95  1      OPC=nop             
  nop                                   #  16    0xdbb96  1      OPC=nop             
  nop                                   #  17    0xdbb97  1      OPC=nop             
  nop                                   #  18    0xdbb98  1      OPC=nop             
  nop                                   #  19    0xdbb99  1      OPC=nop             
  nop                                   #  20    0xdbb9a  1      OPC=nop             
  callq .strcoll                        #  21    0xdbb9b  5      OPC=callq_label     
  movl %eax, %edx                       #  22    0xdbba0  2      OPC=movl_r32_r32    
  xorl %eax, %eax                       #  23    0xdbba2  2      OPC=xorl_r32_r32    
  testl %edx, %edx                      #  24    0xdbba4  2      OPC=testl_r32_r32   
  setne %al                             #  25    0xdbba6  3      OPC=setne_r8        
  addl $0x8, %esp                       #  26    0xdbba9  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  27    0xdbbac  3      OPC=addq_r64_r64    
  sarl $0x1e, %edx                      #  28    0xdbbaf  3      OPC=sarl_r32_imm8   
  popq %r11                             #  29    0xdbbb2  2      OPC=popq_r64_1      
  orl %edx, %eax                        #  30    0xdbbb4  2      OPC=orl_r32_r32     
  andl $0xffffffe0, %r11d               #  31    0xdbbb6  7      OPC=andl_r32_imm32  
  nop                                   #  32    0xdbbbd  1      OPC=nop             
  nop                                   #  33    0xdbbbe  1      OPC=nop             
  nop                                   #  34    0xdbbbf  1      OPC=nop             
  nop                                   #  35    0xdbbc0  1      OPC=nop             
  addq %r15, %r11                       #  36    0xdbbc1  3      OPC=addq_r64_r64    
  jmpq %r11                             #  37    0xdbbc4  3      OPC=jmpq_r64        
                                                                                     
.size _ZNKSt7collateIcE10_M_compareEPKcS2_, .-_ZNKSt7collateIcE10_M_compareEPKcS2_

