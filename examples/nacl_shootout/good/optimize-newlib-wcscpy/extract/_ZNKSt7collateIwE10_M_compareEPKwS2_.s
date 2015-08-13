  .text
  .globl _ZNKSt7collateIwE10_M_compareEPKwS2_
  .type _ZNKSt7collateIwE10_M_compareEPKwS2_, @function

#! file-offset 0x11b100
#! rip-offset  0xdb100
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE10_M_compareEPKwS2_:  #        0xdb100  0      OPC=<label>         
  subl $0x8, %esp                       #  1     0xdb100  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  2     0xdb103  3      OPC=addq_r64_r64    
  movl %esi, %edi                       #  3     0xdb106  2      OPC=movl_r32_r32    
  movl %edx, %esi                       #  4     0xdb108  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                        #  5     0xdb10a  2      OPC=xchgw_ax_r16    
  nop                                   #  6     0xdb10c  1      OPC=nop             
  nop                                   #  7     0xdb10d  1      OPC=nop             
  nop                                   #  8     0xdb10e  1      OPC=nop             
  nop                                   #  9     0xdb10f  1      OPC=nop             
  nop                                   #  10    0xdb110  1      OPC=nop             
  nop                                   #  11    0xdb111  1      OPC=nop             
  nop                                   #  12    0xdb112  1      OPC=nop             
  nop                                   #  13    0xdb113  1      OPC=nop             
  nop                                   #  14    0xdb114  1      OPC=nop             
  nop                                   #  15    0xdb115  1      OPC=nop             
  nop                                   #  16    0xdb116  1      OPC=nop             
  nop                                   #  17    0xdb117  1      OPC=nop             
  nop                                   #  18    0xdb118  1      OPC=nop             
  nop                                   #  19    0xdb119  1      OPC=nop             
  nop                                   #  20    0xdb11a  1      OPC=nop             
  callq .wcscoll                        #  21    0xdb11b  5      OPC=callq_label     
  movl %eax, %edx                       #  22    0xdb120  2      OPC=movl_r32_r32    
  xorl %eax, %eax                       #  23    0xdb122  2      OPC=xorl_r32_r32    
  testl %edx, %edx                      #  24    0xdb124  2      OPC=testl_r32_r32   
  setne %al                             #  25    0xdb126  3      OPC=setne_r8        
  addl $0x8, %esp                       #  26    0xdb129  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  27    0xdb12c  3      OPC=addq_r64_r64    
  sarl $0x1e, %edx                      #  28    0xdb12f  3      OPC=sarl_r32_imm8   
  popq %r11                             #  29    0xdb132  2      OPC=popq_r64_1      
  orl %edx, %eax                        #  30    0xdb134  2      OPC=orl_r32_r32     
  andl $0xffffffe0, %r11d               #  31    0xdb136  7      OPC=andl_r32_imm32  
  nop                                   #  32    0xdb13d  1      OPC=nop             
  nop                                   #  33    0xdb13e  1      OPC=nop             
  nop                                   #  34    0xdb13f  1      OPC=nop             
  nop                                   #  35    0xdb140  1      OPC=nop             
  addq %r15, %r11                       #  36    0xdb141  3      OPC=addq_r64_r64    
  jmpq %r11                             #  37    0xdb144  3      OPC=jmpq_r64        
                                                                                     
.size _ZNKSt7collateIwE10_M_compareEPKwS2_, .-_ZNKSt7collateIwE10_M_compareEPKwS2_

