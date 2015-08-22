  .text
  .globl _ZNKSt10moneypunctIcLb1EE16do_decimal_pointEv
  .type _ZNKSt10moneypunctIcLb1EE16do_decimal_pointEv, @function

#! file-offset 0xb77e0
#! rip-offset  0x777e0
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE16do_decimal_pointEv:  #        0x777e0  0      OPC=<label>         
  movl %edi, %edi                                #  1     0x777e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x777e2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0x777e4  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0x777e9  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0x777eb  2      OPC=movl_r32_r32    
  movzbl 0x11(%r15,%rax,1), %eax                 #  6     0x777ed  6      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d                        #  7     0x777f3  7      OPC=andl_r32_imm32  
  nop                                            #  8     0x777fa  1      OPC=nop             
  nop                                            #  9     0x777fb  1      OPC=nop             
  nop                                            #  10    0x777fc  1      OPC=nop             
  nop                                            #  11    0x777fd  1      OPC=nop             
  addq %r15, %r11                                #  12    0x777fe  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0x77801  3      OPC=jmpq_r64        
  nop                                            #  14    0x77804  1      OPC=nop             
  nop                                            #  15    0x77805  1      OPC=nop             
  nop                                            #  16    0x77806  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIcLb1EE16do_decimal_pointEv, .-_ZNKSt10moneypunctIcLb1EE16do_decimal_pointEv

