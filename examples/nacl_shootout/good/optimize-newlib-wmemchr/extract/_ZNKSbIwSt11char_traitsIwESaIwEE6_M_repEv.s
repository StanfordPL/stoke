  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv, @function

#! file-offset 0x1154a0
#! rip-offset  0xd54a0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv:  #        0xd54a0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0xd54a0  2      OPC=movl_r32_r32    
  popq %r11                                  #  2     0xd54a2  2      OPC=popq_r64_1      
  movl %edi, %edi                            #  3     0xd54a4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                   #  4     0xd54a6  4      OPC=movl_r32_m32    
  subl $0xc, %eax                            #  5     0xd54aa  3      OPC=subl_r32_imm8   
  andl $0xffffffe0, %r11d                    #  6     0xd54ad  7      OPC=andl_r32_imm32  
  nop                                        #  7     0xd54b4  1      OPC=nop             
  nop                                        #  8     0xd54b5  1      OPC=nop             
  nop                                        #  9     0xd54b6  1      OPC=nop             
  nop                                        #  10    0xd54b7  1      OPC=nop             
  addq %r15, %r11                            #  11    0xd54b8  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0xd54bb  3      OPC=jmpq_r64        
  nop                                        #  13    0xd54be  1      OPC=nop             
  nop                                        #  14    0xd54bf  1      OPC=nop             
  nop                                        #  15    0xd54c0  1      OPC=nop             
  nop                                        #  16    0xd54c1  1      OPC=nop             
  nop                                        #  17    0xd54c2  1      OPC=nop             
  nop                                        #  18    0xd54c3  1      OPC=nop             
  nop                                        #  19    0xd54c4  1      OPC=nop             
  nop                                        #  20    0xd54c5  1      OPC=nop             
  nop                                        #  21    0xd54c6  1      OPC=nop             
                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv

