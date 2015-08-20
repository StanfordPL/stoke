  .text
  .globl _ZNKSt8messagesIwE5closeEi
  .type _ZNKSt8messagesIwE5closeEi, @function

#! file-offset 0xf2060
#! rip-offset  0xb2060
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE5closeEi:    #        0xb2060  0      OPC=<label>         
  movl %edi, %edi               #  1     0xb2060  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0xb2062  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax      #  3     0xb2064  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  4     0xb2068  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax  #  5     0xb206a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax        #  6     0xb206f  6      OPC=andl_r32_imm32  
  nop                           #  7     0xb2075  1      OPC=nop             
  nop                           #  8     0xb2076  1      OPC=nop             
  nop                           #  9     0xb2077  1      OPC=nop             
  addq %r15, %rax               #  10    0xb2078  3      OPC=addq_r64_r64    
  jmpq %rax                     #  11    0xb207b  2      OPC=jmpq_r64        
  nop                           #  12    0xb207d  1      OPC=nop             
  nop                           #  13    0xb207e  1      OPC=nop             
  nop                           #  14    0xb207f  1      OPC=nop             
  nop                           #  15    0xb2080  1      OPC=nop             
  nop                           #  16    0xb2081  1      OPC=nop             
  nop                           #  17    0xb2082  1      OPC=nop             
  nop                           #  18    0xb2083  1      OPC=nop             
  nop                           #  19    0xb2084  1      OPC=nop             
  nop                           #  20    0xb2085  1      OPC=nop             
                                                                             
.size _ZNKSt8messagesIwE5closeEi, .-_ZNKSt8messagesIwE5closeEi

