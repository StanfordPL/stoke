  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv, @function

#! file-offset 0xf00a0
#! rip-offset  0xb00a0
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv:  #        0xb00a0  0      OPC=<label>         
  movl %edi, %edi                                #  1     0xb00a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0xb00a2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xb00a4  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0xb00a9  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0xb00ab  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                   #  6     0xb00ad  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                        #  7     0xb00b2  7      OPC=andl_r32_imm32  
  nop                                            #  8     0xb00b9  1      OPC=nop             
  nop                                            #  9     0xb00ba  1      OPC=nop             
  nop                                            #  10    0xb00bb  1      OPC=nop             
  nop                                            #  11    0xb00bc  1      OPC=nop             
  addq %r15, %r11                                #  12    0xb00bd  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0xb00c0  3      OPC=jmpq_r64        
  nop                                            #  14    0xb00c3  1      OPC=nop             
  nop                                            #  15    0xb00c4  1      OPC=nop             
  nop                                            #  16    0xb00c5  1      OPC=nop             
  nop                                            #  17    0xb00c6  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIwLb1EE16do_thousands_sepEv

