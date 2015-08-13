  .text
  .globl _ZNKSt8messagesIcE5closeEi
  .type _ZNKSt8messagesIcE5closeEi, @function

#! file-offset 0xb8dc0
#! rip-offset  0x78dc0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE5closeEi:    #        0x78dc0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x78dc0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x78dc2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax      #  3     0x78dc4  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  4     0x78dc8  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax  #  5     0x78dca  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax        #  6     0x78dcf  6      OPC=andl_r32_imm32  
  nop                           #  7     0x78dd5  1      OPC=nop             
  nop                           #  8     0x78dd6  1      OPC=nop             
  nop                           #  9     0x78dd7  1      OPC=nop             
  addq %r15, %rax               #  10    0x78dd8  3      OPC=addq_r64_r64    
  jmpq %rax                     #  11    0x78ddb  2      OPC=jmpq_r64        
  nop                           #  12    0x78ddd  1      OPC=nop             
  nop                           #  13    0x78dde  1      OPC=nop             
  nop                           #  14    0x78ddf  1      OPC=nop             
  nop                           #  15    0x78de0  1      OPC=nop             
  nop                           #  16    0x78de1  1      OPC=nop             
  nop                           #  17    0x78de2  1      OPC=nop             
  nop                           #  18    0x78de3  1      OPC=nop             
  nop                           #  19    0x78de4  1      OPC=nop             
  nop                           #  20    0x78de5  1      OPC=nop             
                                                                             
.size _ZNKSt8messagesIcE5closeEi, .-_ZNKSt8messagesIcE5closeEi

