  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv, @function

#! file-offset 0x115e00
#! rip-offset  0xd5e00
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv:  #        0xd5e00  0      OPC=<label>         
  movl %edi, %edi                            #  1     0xd5e00  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  2     0xd5e02  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                   #  3     0xd5e04  4      OPC=movl_r32_m32    
  popq %r11                                  #  4     0xd5e08  2      OPC=popq_r64_1      
  subl $0xc, %eax                            #  5     0xd5e0a  3      OPC=subl_r32_imm8   
  movl %eax, %eax                            #  6     0xd5e0d  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                   #  7     0xd5e0f  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                    #  8     0xd5e13  7      OPC=andl_r32_imm32  
  nop                                        #  9     0xd5e1a  1      OPC=nop             
  nop                                        #  10    0xd5e1b  1      OPC=nop             
  nop                                        #  11    0xd5e1c  1      OPC=nop             
  nop                                        #  12    0xd5e1d  1      OPC=nop             
  addq %r15, %r11                            #  13    0xd5e1e  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  14    0xd5e21  3      OPC=jmpq_r64        
  nop                                        #  15    0xd5e24  1      OPC=nop             
  nop                                        #  16    0xd5e25  1      OPC=nop             
  nop                                        #  17    0xd5e26  1      OPC=nop             
                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv

