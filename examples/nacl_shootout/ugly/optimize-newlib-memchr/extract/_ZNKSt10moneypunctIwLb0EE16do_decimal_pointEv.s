  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv
  .type _ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv, @function

#! file-offset 0xf0520
#! rip-offset  0xb0520
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv:  #        0xb0520  0      OPC=<label>         
  movl %edi, %edi                                #  1     0xb0520  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0xb0522  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xb0524  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0xb0529  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0xb052b  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                   #  6     0xb052d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                        #  7     0xb0532  7      OPC=andl_r32_imm32  
  nop                                            #  8     0xb0539  1      OPC=nop             
  nop                                            #  9     0xb053a  1      OPC=nop             
  nop                                            #  10    0xb053b  1      OPC=nop             
  nop                                            #  11    0xb053c  1      OPC=nop             
  addq %r15, %r11                                #  12    0xb053d  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0xb0540  3      OPC=jmpq_r64        
  nop                                            #  14    0xb0543  1      OPC=nop             
  nop                                            #  15    0xb0544  1      OPC=nop             
  nop                                            #  16    0xb0545  1      OPC=nop             
  nop                                            #  17    0xb0546  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv, .-_ZNKSt10moneypunctIwLb0EE16do_decimal_pointEv

