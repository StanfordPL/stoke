  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv, @function

#! file-offset 0x115bc0
#! rip-offset  0xd5bc0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv:  #        0xd5bc0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0xd5bc0  2      OPC=movl_r32_r32    
  popq %r11                                  #  2     0xd5bc2  2      OPC=popq_r64_1      
  movl %edi, %edi                            #  3     0xd5bc4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                   #  4     0xd5bc6  4      OPC=movl_r32_m32    
  subl $0xc, %eax                            #  5     0xd5bca  3      OPC=subl_r32_imm8   
  andl $0xffffffe0, %r11d                    #  6     0xd5bcd  7      OPC=andl_r32_imm32  
  nop                                        #  7     0xd5bd4  1      OPC=nop             
  nop                                        #  8     0xd5bd5  1      OPC=nop             
  nop                                        #  9     0xd5bd6  1      OPC=nop             
  nop                                        #  10    0xd5bd7  1      OPC=nop             
  addq %r15, %r11                            #  11    0xd5bd8  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0xd5bdb  3      OPC=jmpq_r64        
  nop                                        #  13    0xd5bde  1      OPC=nop             
  nop                                        #  14    0xd5bdf  1      OPC=nop             
  nop                                        #  15    0xd5be0  1      OPC=nop             
  nop                                        #  16    0xd5be1  1      OPC=nop             
  nop                                        #  17    0xd5be2  1      OPC=nop             
  nop                                        #  18    0xd5be3  1      OPC=nop             
  nop                                        #  19    0xd5be4  1      OPC=nop             
  nop                                        #  20    0xd5be5  1      OPC=nop             
  nop                                        #  21    0xd5be6  1      OPC=nop             
                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE6_M_repEv

