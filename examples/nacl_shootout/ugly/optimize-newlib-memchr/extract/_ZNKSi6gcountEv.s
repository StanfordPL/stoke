  .text
  .globl _ZNKSi6gcountEv
  .type _ZNKSi6gcountEv, @function

#! file-offset 0xa7880
#! rip-offset  0x67880
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSi6gcountEv:              #        0x67880  0      OPC=<label>         
  popq %r11                    #  1     0x67880  2      OPC=popq_r64_1      
  movl %edi, %edi              #  2     0x67882  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0x67884  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  4     0x67886  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d      #  5     0x6788b  7      OPC=andl_r32_imm32  
  nop                          #  6     0x67892  1      OPC=nop             
  nop                          #  7     0x67893  1      OPC=nop             
  nop                          #  8     0x67894  1      OPC=nop             
  nop                          #  9     0x67895  1      OPC=nop             
  addq %r15, %r11              #  10    0x67896  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0x67899  3      OPC=jmpq_r64        
  nop                          #  12    0x6789c  1      OPC=nop             
  nop                          #  13    0x6789d  1      OPC=nop             
  nop                          #  14    0x6789e  1      OPC=nop             
  nop                          #  15    0x6789f  1      OPC=nop             
  nop                          #  16    0x678a0  1      OPC=nop             
  nop                          #  17    0x678a1  1      OPC=nop             
  nop                          #  18    0x678a2  1      OPC=nop             
  nop                          #  19    0x678a3  1      OPC=nop             
  nop                          #  20    0x678a4  1      OPC=nop             
  nop                          #  21    0x678a5  1      OPC=nop             
  nop                          #  22    0x678a6  1      OPC=nop             
                                                                            
.size _ZNKSi6gcountEv, .-_ZNKSi6gcountEv

