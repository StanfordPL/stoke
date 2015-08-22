  .text
  .globl _ZNKSt8messagesIcE5closeEi
  .type _ZNKSt8messagesIcE5closeEi, @function

#! file-offset 0xb97e0
#! rip-offset  0x797e0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE5closeEi:    #        0x797e0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x797e0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x797e2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax      #  3     0x797e4  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  4     0x797e8  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax  #  5     0x797ea  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax        #  6     0x797ef  6      OPC=andl_r32_imm32  
  nop                           #  7     0x797f5  1      OPC=nop             
  nop                           #  8     0x797f6  1      OPC=nop             
  nop                           #  9     0x797f7  1      OPC=nop             
  addq %r15, %rax               #  10    0x797f8  3      OPC=addq_r64_r64    
  jmpq %rax                     #  11    0x797fb  2      OPC=jmpq_r64        
  nop                           #  12    0x797fd  1      OPC=nop             
  nop                           #  13    0x797fe  1      OPC=nop             
  nop                           #  14    0x797ff  1      OPC=nop             
  nop                           #  15    0x79800  1      OPC=nop             
  nop                           #  16    0x79801  1      OPC=nop             
  nop                           #  17    0x79802  1      OPC=nop             
  nop                           #  18    0x79803  1      OPC=nop             
  nop                           #  19    0x79804  1      OPC=nop             
  nop                           #  20    0x79805  1      OPC=nop             
                                                                             
.size _ZNKSt8messagesIcE5closeEi, .-_ZNKSt8messagesIcE5closeEi

