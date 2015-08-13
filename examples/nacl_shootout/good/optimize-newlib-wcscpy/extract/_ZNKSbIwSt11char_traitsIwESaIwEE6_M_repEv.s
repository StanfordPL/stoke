  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv, @function

#! file-offset 0x1151a0
#! rip-offset  0xd51a0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv:  #        0xd51a0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0xd51a0  2      OPC=movl_r32_r32    
  popq %r11                                  #  2     0xd51a2  2      OPC=popq_r64_1      
  movl %edi, %edi                            #  3     0xd51a4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                   #  4     0xd51a6  4      OPC=movl_r32_m32    
  subl $0xc, %eax                            #  5     0xd51aa  3      OPC=subl_r32_imm8   
  andl $0xffffffe0, %r11d                    #  6     0xd51ad  7      OPC=andl_r32_imm32  
  nop                                        #  7     0xd51b4  1      OPC=nop             
  nop                                        #  8     0xd51b5  1      OPC=nop             
  nop                                        #  9     0xd51b6  1      OPC=nop             
  nop                                        #  10    0xd51b7  1      OPC=nop             
  addq %r15, %r11                            #  11    0xd51b8  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0xd51bb  3      OPC=jmpq_r64        
  nop                                        #  13    0xd51be  1      OPC=nop             
  nop                                        #  14    0xd51bf  1      OPC=nop             
  nop                                        #  15    0xd51c0  1      OPC=nop             
  nop                                        #  16    0xd51c1  1      OPC=nop             
  nop                                        #  17    0xd51c2  1      OPC=nop             
  nop                                        #  18    0xd51c3  1      OPC=nop             
  nop                                        #  19    0xd51c4  1      OPC=nop             
  nop                                        #  20    0xd51c5  1      OPC=nop             
  nop                                        #  21    0xd51c6  1      OPC=nop             
                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv

