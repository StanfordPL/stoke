  .text
  .globl _ZNKSt7collateIcE10_M_compareEPKcS2_
  .type _ZNKSt7collateIcE10_M_compareEPKcS2_, @function

#! file-offset 0x11b160
#! rip-offset  0xdb160
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE10_M_compareEPKcS2_:  #        0xdb160  0      OPC=<label>         
  subl $0x8, %esp                       #  1     0xdb160  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  2     0xdb163  3      OPC=addq_r64_r64    
  movl %esi, %edi                       #  3     0xdb166  2      OPC=movl_r32_r32    
  movl %edx, %esi                       #  4     0xdb168  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                        #  5     0xdb16a  2      OPC=xchgw_ax_r16    
  nop                                   #  6     0xdb16c  1      OPC=nop             
  nop                                   #  7     0xdb16d  1      OPC=nop             
  nop                                   #  8     0xdb16e  1      OPC=nop             
  nop                                   #  9     0xdb16f  1      OPC=nop             
  nop                                   #  10    0xdb170  1      OPC=nop             
  nop                                   #  11    0xdb171  1      OPC=nop             
  nop                                   #  12    0xdb172  1      OPC=nop             
  nop                                   #  13    0xdb173  1      OPC=nop             
  nop                                   #  14    0xdb174  1      OPC=nop             
  nop                                   #  15    0xdb175  1      OPC=nop             
  nop                                   #  16    0xdb176  1      OPC=nop             
  nop                                   #  17    0xdb177  1      OPC=nop             
  nop                                   #  18    0xdb178  1      OPC=nop             
  nop                                   #  19    0xdb179  1      OPC=nop             
  nop                                   #  20    0xdb17a  1      OPC=nop             
  callq .strcoll                        #  21    0xdb17b  5      OPC=callq_label     
  movl %eax, %edx                       #  22    0xdb180  2      OPC=movl_r32_r32    
  xorl %eax, %eax                       #  23    0xdb182  2      OPC=xorl_r32_r32    
  testl %edx, %edx                      #  24    0xdb184  2      OPC=testl_r32_r32   
  setne %al                             #  25    0xdb186  3      OPC=setne_r8        
  addl $0x8, %esp                       #  26    0xdb189  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  27    0xdb18c  3      OPC=addq_r64_r64    
  sarl $0x1e, %edx                      #  28    0xdb18f  3      OPC=sarl_r32_imm8   
  popq %r11                             #  29    0xdb192  2      OPC=popq_r64_1      
  orl %edx, %eax                        #  30    0xdb194  2      OPC=orl_r32_r32     
  andl $0xffffffe0, %r11d               #  31    0xdb196  7      OPC=andl_r32_imm32  
  nop                                   #  32    0xdb19d  1      OPC=nop             
  nop                                   #  33    0xdb19e  1      OPC=nop             
  nop                                   #  34    0xdb19f  1      OPC=nop             
  nop                                   #  35    0xdb1a0  1      OPC=nop             
  addq %r15, %r11                       #  36    0xdb1a1  3      OPC=addq_r64_r64    
  jmpq %r11                             #  37    0xdb1a4  3      OPC=jmpq_r64        
                                                                                     
.size _ZNKSt7collateIcE10_M_compareEPKcS2_, .-_ZNKSt7collateIcE10_M_compareEPKcS2_

