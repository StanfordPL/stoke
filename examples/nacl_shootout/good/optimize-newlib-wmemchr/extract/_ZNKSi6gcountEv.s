  .text
  .globl _ZNKSi6gcountEv
  .type _ZNKSi6gcountEv, @function

#! file-offset 0xa7160
#! rip-offset  0x67160
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSi6gcountEv:              #        0x67160  0      OPC=<label>         
  popq %r11                    #  1     0x67160  2      OPC=popq_r64_1      
  movl %edi, %edi              #  2     0x67162  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0x67164  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  4     0x67166  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d      #  5     0x6716b  7      OPC=andl_r32_imm32  
  nop                          #  6     0x67172  1      OPC=nop             
  nop                          #  7     0x67173  1      OPC=nop             
  nop                          #  8     0x67174  1      OPC=nop             
  nop                          #  9     0x67175  1      OPC=nop             
  addq %r15, %r11              #  10    0x67176  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0x67179  3      OPC=jmpq_r64        
  nop                          #  12    0x6717c  1      OPC=nop             
  nop                          #  13    0x6717d  1      OPC=nop             
  nop                          #  14    0x6717e  1      OPC=nop             
  nop                          #  15    0x6717f  1      OPC=nop             
  nop                          #  16    0x67180  1      OPC=nop             
  nop                          #  17    0x67181  1      OPC=nop             
  nop                          #  18    0x67182  1      OPC=nop             
  nop                          #  19    0x67183  1      OPC=nop             
  nop                          #  20    0x67184  1      OPC=nop             
  nop                          #  21    0x67185  1      OPC=nop             
  nop                          #  22    0x67186  1      OPC=nop             
                                                                            
.size _ZNKSi6gcountEv, .-_ZNKSi6gcountEv

