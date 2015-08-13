  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv
  .type _ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv, @function

#! file-offset 0xefb00
#! rip-offset  0xafb00
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv:  #        0xafb00  0      OPC=<label>         
  movl %edi, %edi                                #  1     0xafb00  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0xafb02  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xafb04  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0xafb09  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0xafb0b  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                   #  6     0xafb0d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                        #  7     0xafb12  7      OPC=andl_r32_imm32  
  nop                                            #  8     0xafb19  1      OPC=nop             
  nop                                            #  9     0xafb1a  1      OPC=nop             
  nop                                            #  10    0xafb1b  1      OPC=nop             
  nop                                            #  11    0xafb1c  1      OPC=nop             
  addq %r15, %r11                                #  12    0xafb1d  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0xafb20  3      OPC=jmpq_r64        
  nop                                            #  14    0xafb23  1      OPC=nop             
  nop                                            #  15    0xafb24  1      OPC=nop             
  nop                                            #  16    0xafb25  1      OPC=nop             
  nop                                            #  17    0xafb26  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv, .-_ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv

