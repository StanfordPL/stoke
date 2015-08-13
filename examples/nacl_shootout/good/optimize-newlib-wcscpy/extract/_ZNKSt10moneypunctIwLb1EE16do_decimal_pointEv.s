  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv
  .type _ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv, @function

#! file-offset 0xefd80
#! rip-offset  0xafd80
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv:  #        0xafd80  0      OPC=<label>         
  movl %edi, %edi                                #  1     0xafd80  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0xafd82  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xafd84  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0xafd89  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0xafd8b  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                   #  6     0xafd8d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                        #  7     0xafd92  7      OPC=andl_r32_imm32  
  nop                                            #  8     0xafd99  1      OPC=nop             
  nop                                            #  9     0xafd9a  1      OPC=nop             
  nop                                            #  10    0xafd9b  1      OPC=nop             
  nop                                            #  11    0xafd9c  1      OPC=nop             
  addq %r15, %r11                                #  12    0xafd9d  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0xafda0  3      OPC=jmpq_r64        
  nop                                            #  14    0xafda3  1      OPC=nop             
  nop                                            #  15    0xafda4  1      OPC=nop             
  nop                                            #  16    0xafda5  1      OPC=nop             
  nop                                            #  17    0xafda6  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv, .-_ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv

