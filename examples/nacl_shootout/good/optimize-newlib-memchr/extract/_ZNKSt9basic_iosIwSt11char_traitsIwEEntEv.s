  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv, @function

#! file-offset 0xa5340
#! rip-offset  0x65340
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEEntEv:  #        0x65340  0      OPC=<label>         
  movl %edi, %edi                            #  1     0x65340  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  2     0x65342  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)              #  3     0x65344  6      OPC=testb_m8_imm8   
  popq %r11                                  #  4     0x6534a  2      OPC=popq_r64_1      
  setne %al                                  #  5     0x6534c  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                    #  6     0x6534f  7      OPC=andl_r32_imm32  
  nop                                        #  7     0x65356  1      OPC=nop             
  nop                                        #  8     0x65357  1      OPC=nop             
  nop                                        #  9     0x65358  1      OPC=nop             
  nop                                        #  10    0x65359  1      OPC=nop             
  addq %r15, %r11                            #  11    0x6535a  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0x6535d  3      OPC=jmpq_r64        
  nop                                        #  13    0x65360  1      OPC=nop             
  nop                                        #  14    0x65361  1      OPC=nop             
  nop                                        #  15    0x65362  1      OPC=nop             
  nop                                        #  16    0x65363  1      OPC=nop             
  nop                                        #  17    0x65364  1      OPC=nop             
  nop                                        #  18    0x65365  1      OPC=nop             
  nop                                        #  19    0x65366  1      OPC=nop             
                                                                                          
.size _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEEntEv

