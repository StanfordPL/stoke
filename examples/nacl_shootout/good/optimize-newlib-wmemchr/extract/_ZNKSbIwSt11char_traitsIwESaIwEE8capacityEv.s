  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv, @function

#! file-offset 0x115720
#! rip-offset  0xd5720
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv:  #        0xd5720  0      OPC=<label>         
  movl %edi, %edi                              #  1     0xd5720  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0xd5722  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                     #  3     0xd5724  4      OPC=movl_r32_m32    
  popq %r11                                    #  4     0xd5728  2      OPC=popq_r64_1      
  subl $0xc, %eax                              #  5     0xd572a  3      OPC=subl_r32_imm8   
  movl %eax, %eax                              #  6     0xd572d  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                  #  7     0xd572f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                      #  8     0xd5734  7      OPC=andl_r32_imm32  
  nop                                          #  9     0xd573b  1      OPC=nop             
  nop                                          #  10    0xd573c  1      OPC=nop             
  nop                                          #  11    0xd573d  1      OPC=nop             
  nop                                          #  12    0xd573e  1      OPC=nop             
  addq %r15, %r11                              #  13    0xd573f  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  14    0xd5742  3      OPC=jmpq_r64        
  nop                                          #  15    0xd5745  1      OPC=nop             
  nop                                          #  16    0xd5746  1      OPC=nop             
                                                                                            
.size _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv

