  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv, @function

#! file-offset 0xefda0
#! rip-offset  0xafda0
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv:  #        0xafda0  0      OPC=<label>         
  movl %edi, %edi                                #  1     0xafda0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0xafda2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xafda4  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0xafda9  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0xafdab  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                   #  6     0xafdad  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                        #  7     0xafdb2  7      OPC=andl_r32_imm32  
  nop                                            #  8     0xafdb9  1      OPC=nop             
  nop                                            #  9     0xafdba  1      OPC=nop             
  nop                                            #  10    0xafdbb  1      OPC=nop             
  nop                                            #  11    0xafdbc  1      OPC=nop             
  addq %r15, %r11                                #  12    0xafdbd  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0xafdc0  3      OPC=jmpq_r64        
  nop                                            #  14    0xafdc3  1      OPC=nop             
  nop                                            #  15    0xafdc4  1      OPC=nop             
  nop                                            #  16    0xafdc5  1      OPC=nop             
  nop                                            #  17    0xafdc6  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv

