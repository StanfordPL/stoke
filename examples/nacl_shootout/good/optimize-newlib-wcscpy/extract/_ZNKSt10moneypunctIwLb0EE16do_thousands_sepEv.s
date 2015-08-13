  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv, @function

#! file-offset 0xefb20
#! rip-offset  0xafb20
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv:  #        0xafb20  0      OPC=<label>         
  movl %edi, %edi                                #  1     0xafb20  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0xafb22  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xafb24  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0xafb29  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0xafb2b  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                   #  6     0xafb2d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                        #  7     0xafb32  7      OPC=andl_r32_imm32  
  nop                                            #  8     0xafb39  1      OPC=nop             
  nop                                            #  9     0xafb3a  1      OPC=nop             
  nop                                            #  10    0xafb3b  1      OPC=nop             
  nop                                            #  11    0xafb3c  1      OPC=nop             
  addq %r15, %r11                                #  12    0xafb3d  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0xafb40  3      OPC=jmpq_r64        
  nop                                            #  14    0xafb43  1      OPC=nop             
  nop                                            #  15    0xafb44  1      OPC=nop             
  nop                                            #  16    0xafb45  1      OPC=nop             
  nop                                            #  17    0xafb46  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv

