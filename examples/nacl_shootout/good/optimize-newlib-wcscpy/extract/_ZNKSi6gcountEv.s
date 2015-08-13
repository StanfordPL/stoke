  .text
  .globl _ZNKSi6gcountEv
  .type _ZNKSi6gcountEv, @function

#! file-offset 0xa6e60
#! rip-offset  0x66e60
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSi6gcountEv:              #        0x66e60  0      OPC=<label>         
  popq %r11                    #  1     0x66e60  2      OPC=popq_r64_1      
  movl %edi, %edi              #  2     0x66e62  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0x66e64  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  4     0x66e66  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d      #  5     0x66e6b  7      OPC=andl_r32_imm32  
  nop                          #  6     0x66e72  1      OPC=nop             
  nop                          #  7     0x66e73  1      OPC=nop             
  nop                          #  8     0x66e74  1      OPC=nop             
  nop                          #  9     0x66e75  1      OPC=nop             
  addq %r15, %r11              #  10    0x66e76  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0x66e79  3      OPC=jmpq_r64        
  nop                          #  12    0x66e7c  1      OPC=nop             
  nop                          #  13    0x66e7d  1      OPC=nop             
  nop                          #  14    0x66e7e  1      OPC=nop             
  nop                          #  15    0x66e7f  1      OPC=nop             
  nop                          #  16    0x66e80  1      OPC=nop             
  nop                          #  17    0x66e81  1      OPC=nop             
  nop                          #  18    0x66e82  1      OPC=nop             
  nop                          #  19    0x66e83  1      OPC=nop             
  nop                          #  20    0x66e84  1      OPC=nop             
  nop                          #  21    0x66e85  1      OPC=nop             
  nop                          #  22    0x66e86  1      OPC=nop             
                                                                            
.size _ZNKSi6gcountEv, .-_ZNKSi6gcountEv

