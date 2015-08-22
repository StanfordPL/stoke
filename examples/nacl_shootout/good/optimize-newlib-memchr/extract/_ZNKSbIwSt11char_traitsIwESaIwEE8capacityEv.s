  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv, @function

#! file-offset 0x115e40
#! rip-offset  0xd5e40
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv:  #        0xd5e40  0      OPC=<label>         
  movl %edi, %edi                              #  1     0xd5e40  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0xd5e42  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                     #  3     0xd5e44  4      OPC=movl_r32_m32    
  popq %r11                                    #  4     0xd5e48  2      OPC=popq_r64_1      
  subl $0xc, %eax                              #  5     0xd5e4a  3      OPC=subl_r32_imm8   
  movl %eax, %eax                              #  6     0xd5e4d  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                  #  7     0xd5e4f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  8     0xd5e54  7      OPC=andl_r32_imm32  
  nop                                          #  9     0xd5e5b  1      OPC=nop             
  nop                                          #  10    0xd5e5c  1      OPC=nop             
  nop                                          #  11    0xd5e5d  1      OPC=nop             
  nop                                          #  12    0xd5e5e  1      OPC=nop             
  addq %r15, %r11                              #  13    0xd5e5f  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  14    0xd5e62  3      OPC=jmpq_r64        
  nop                                          #  15    0xd5e65  1      OPC=nop             
  nop                                          #  16    0xd5e66  1      OPC=nop             
                                                                                            
.size _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv

