  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv, @function

#! file-offset 0xa47c0
#! rip-offset  0x647c0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEEntEv:  #        0x647c0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0x647c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  2     0x647c2  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)              #  3     0x647c4  6      OPC=testb_m8_imm8   
  popq %r11                                  #  4     0x647ca  2      OPC=popq_r64_1      
  setne %al                                  #  5     0x647cc  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                    #  6     0x647cf  7      OPC=andl_r32_imm32  
  nop                                        #  7     0x647d6  1      OPC=nop             
  nop                                        #  8     0x647d7  1      OPC=nop             
  nop                                        #  9     0x647d8  1      OPC=nop             
  nop                                        #  10    0x647d9  1      OPC=nop             
  addq %r15, %r11                            #  11    0x647da  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0x647dd  3      OPC=jmpq_r64        
  nop                                        #  13    0x647e0  1      OPC=nop             
  nop                                        #  14    0x647e1  1      OPC=nop             
  nop                                        #  15    0x647e2  1      OPC=nop             
  nop                                        #  16    0x647e3  1      OPC=nop             
  nop                                        #  17    0x647e4  1      OPC=nop             
  nop                                        #  18    0x647e5  1      OPC=nop             
  nop                                        #  19    0x647e6  1      OPC=nop             
                                                                                          
.size _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv

