  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv
  .type _ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv, @function

#! file-offset 0xf0080
#! rip-offset  0xb0080
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv:  #        0xb0080  0      OPC=<label>         
  movl %edi, %edi                                #  1     0xb0080  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0xb0082  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xb0084  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0xb0089  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0xb008b  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                   #  6     0xb008d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                        #  7     0xb0092  7      OPC=andl_r32_imm32  
  nop                                            #  8     0xb0099  1      OPC=nop             
  nop                                            #  9     0xb009a  1      OPC=nop             
  nop                                            #  10    0xb009b  1      OPC=nop             
  nop                                            #  11    0xb009c  1      OPC=nop             
  addq %r15, %r11                                #  12    0xb009d  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0xb00a0  3      OPC=jmpq_r64        
  nop                                            #  14    0xb00a3  1      OPC=nop             
  nop                                            #  15    0xb00a4  1      OPC=nop             
  nop                                            #  16    0xb00a5  1      OPC=nop             
  nop                                            #  17    0xb00a6  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv, .-_ZNKSt10moneypunctIwLb1EE16do_decimal_pointEv

