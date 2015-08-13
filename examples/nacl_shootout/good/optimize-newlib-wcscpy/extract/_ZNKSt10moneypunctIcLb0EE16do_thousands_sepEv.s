  .text
  .globl _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv, @function

#! file-offset 0xb6b60
#! rip-offset  0x76b60
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv:  #        0x76b60  0      OPC=<label>         
  movl %edi, %edi                                #  1     0x76b60  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x76b62  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0x76b64  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0x76b69  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0x76b6b  2      OPC=movl_r32_r32    
  movzbl 0x12(%r15,%rax,1), %eax                 #  6     0x76b6d  6      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                        #  7     0x76b73  7      OPC=andl_r32_imm32  
  nop                                            #  8     0x76b7a  1      OPC=nop             
  nop                                            #  9     0x76b7b  1      OPC=nop             
  nop                                            #  10    0x76b7c  1      OPC=nop             
  nop                                            #  11    0x76b7d  1      OPC=nop             
  addq %r15, %r11                                #  12    0x76b7e  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0x76b81  3      OPC=jmpq_r64        
  nop                                            #  14    0x76b84  1      OPC=nop             
  nop                                            #  15    0x76b85  1      OPC=nop             
  nop                                            #  16    0x76b86  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv

