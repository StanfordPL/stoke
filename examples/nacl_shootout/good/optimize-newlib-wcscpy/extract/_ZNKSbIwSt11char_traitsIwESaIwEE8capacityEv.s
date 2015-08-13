  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv, @function

#! file-offset 0x115420
#! rip-offset  0xd5420
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv:  #        0xd5420  0      OPC=<label>         
  movl %edi, %edi                              #  1     0xd5420  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0xd5422  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                     #  3     0xd5424  4      OPC=movl_r32_m32    
  popq %r11                                    #  4     0xd5428  2      OPC=popq_r64_1      
  subl $0xc, %eax                              #  5     0xd542a  3      OPC=subl_r32_imm8   
  movl %eax, %eax                              #  6     0xd542d  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                  #  7     0xd542f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  8     0xd5434  7      OPC=andl_r32_imm32  
  nop                                          #  9     0xd543b  1      OPC=nop             
  nop                                          #  10    0xd543c  1      OPC=nop             
  nop                                          #  11    0xd543d  1      OPC=nop             
  nop                                          #  12    0xd543e  1      OPC=nop             
  addq %r15, %r11                              #  13    0xd543f  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  14    0xd5442  3      OPC=jmpq_r64        
  nop                                          #  15    0xd5445  1      OPC=nop             
  nop                                          #  16    0xd5446  1      OPC=nop             
                                                                                            
.size _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv

