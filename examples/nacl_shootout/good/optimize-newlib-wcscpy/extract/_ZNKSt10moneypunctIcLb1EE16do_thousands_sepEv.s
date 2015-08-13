  .text
  .globl _ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv, @function

#! file-offset 0xb6de0
#! rip-offset  0x76de0
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv:  #        0x76de0  0      OPC=<label>         
  movl %edi, %edi                                #  1     0x76de0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x76de2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0x76de4  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0x76de9  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0x76deb  2      OPC=movl_r32_r32    
  movzbl 0x12(%r15,%rax,1), %eax                 #  6     0x76ded  6      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                        #  7     0x76df3  7      OPC=andl_r32_imm32  
  nop                                            #  8     0x76dfa  1      OPC=nop             
  nop                                            #  9     0x76dfb  1      OPC=nop             
  nop                                            #  10    0x76dfc  1      OPC=nop             
  nop                                            #  11    0x76dfd  1      OPC=nop             
  addq %r15, %r11                                #  12    0x76dfe  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0x76e01  3      OPC=jmpq_r64        
  nop                                            #  14    0x76e04  1      OPC=nop             
  nop                                            #  15    0x76e05  1      OPC=nop             
  nop                                            #  16    0x76e06  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv

