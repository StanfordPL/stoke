  .text
  .globl _ZNKSt7collateIwE10_M_compareEPKwS2_
  .type _ZNKSt7collateIwE10_M_compareEPKwS2_, @function

#! file-offset 0x11b400
#! rip-offset  0xdb400
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE10_M_compareEPKwS2_:  #        0xdb400  0      OPC=<label>         
  subl $0x8, %esp                       #  1     0xdb400  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  2     0xdb403  3      OPC=addq_r64_r64    
  movl %esi, %edi                       #  3     0xdb406  2      OPC=movl_r32_r32    
  movl %edx, %esi                       #  4     0xdb408  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                        #  5     0xdb40a  2      OPC=xchgw_ax_r16    
  nop                                   #  6     0xdb40c  1      OPC=nop             
  nop                                   #  7     0xdb40d  1      OPC=nop             
  nop                                   #  8     0xdb40e  1      OPC=nop             
  nop                                   #  9     0xdb40f  1      OPC=nop             
  nop                                   #  10    0xdb410  1      OPC=nop             
  nop                                   #  11    0xdb411  1      OPC=nop             
  nop                                   #  12    0xdb412  1      OPC=nop             
  nop                                   #  13    0xdb413  1      OPC=nop             
  nop                                   #  14    0xdb414  1      OPC=nop             
  nop                                   #  15    0xdb415  1      OPC=nop             
  nop                                   #  16    0xdb416  1      OPC=nop             
  nop                                   #  17    0xdb417  1      OPC=nop             
  nop                                   #  18    0xdb418  1      OPC=nop             
  nop                                   #  19    0xdb419  1      OPC=nop             
  nop                                   #  20    0xdb41a  1      OPC=nop             
  callq .wcscoll                        #  21    0xdb41b  5      OPC=callq_label     
  movl %eax, %edx                       #  22    0xdb420  2      OPC=movl_r32_r32    
  xorl %eax, %eax                       #  23    0xdb422  2      OPC=xorl_r32_r32    
  testl %edx, %edx                      #  24    0xdb424  2      OPC=testl_r32_r32   
  setne %al                             #  25    0xdb426  3      OPC=setne_r8        
  addl $0x8, %esp                       #  26    0xdb429  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  27    0xdb42c  3      OPC=addq_r64_r64    
  sarl $0x1e, %edx                      #  28    0xdb42f  3      OPC=sarl_r32_imm8   
  popq %r11                             #  29    0xdb432  2      OPC=popq_r64_1      
  orl %edx, %eax                        #  30    0xdb434  2      OPC=orl_r32_r32     
  andl $0xffffffe0, %r11d               #  31    0xdb436  7      OPC=andl_r32_imm32  
  nop                                   #  32    0xdb43d  1      OPC=nop             
  nop                                   #  33    0xdb43e  1      OPC=nop             
  nop                                   #  34    0xdb43f  1      OPC=nop             
  nop                                   #  35    0xdb440  1      OPC=nop             
  addq %r15, %r11                       #  36    0xdb441  3      OPC=addq_r64_r64    
  jmpq %r11                             #  37    0xdb444  3      OPC=jmpq_r64        
                                                                                     
.size _ZNKSt7collateIwE10_M_compareEPKwS2_, .-_ZNKSt7collateIwE10_M_compareEPKwS2_

