  .text
  .globl _ZNKSt8messagesIcE3getEiiiRKSs
  .type _ZNKSt8messagesIcE3getEiiiRKSs, @function

#! file-offset 0xb97a0
#! rip-offset  0x797a0
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE3getEiiiRKSs:  #        0x797a0  0      OPC=<label>         
  movl %esi, %esi                 #  1     0x797a0  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0x797a2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0x797a3  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0x797a5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0x797a7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0x797ab  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0x797ad  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax     #  8     0x797af  5      OPC=movl_r32_m32    
  nop                             #  9     0x797b4  1      OPC=nop             
  nop                             #  10    0x797b5  1      OPC=nop             
  nop                             #  11    0x797b6  1      OPC=nop             
  nop                             #  12    0x797b7  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0x797b8  6      OPC=andl_r32_imm32  
  nop                             #  14    0x797be  1      OPC=nop             
  nop                             #  15    0x797bf  1      OPC=nop             
  nop                             #  16    0x797c0  1      OPC=nop             
  addq %r15, %rax                 #  17    0x797c1  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0x797c4  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0x797c6  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0x797c8  1      OPC=popq_r64_1      
  popq %r11                       #  21    0x797c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0x797cb  7      OPC=andl_r32_imm32  
  nop                             #  23    0x797d2  1      OPC=nop             
  nop                             #  24    0x797d3  1      OPC=nop             
  nop                             #  25    0x797d4  1      OPC=nop             
  nop                             #  26    0x797d5  1      OPC=nop             
  addq %r15, %r11                 #  27    0x797d6  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0x797d9  3      OPC=jmpq_r64        
  nop                             #  29    0x797dc  1      OPC=nop             
  nop                             #  30    0x797dd  1      OPC=nop             
  nop                             #  31    0x797de  1      OPC=nop             
  nop                             #  32    0x797df  1      OPC=nop             
  nop                             #  33    0x797e0  1      OPC=nop             
  nop                             #  34    0x797e1  1      OPC=nop             
  nop                             #  35    0x797e2  1      OPC=nop             
  nop                             #  36    0x797e3  1      OPC=nop             
  nop                             #  37    0x797e4  1      OPC=nop             
  nop                             #  38    0x797e5  1      OPC=nop             
  nop                             #  39    0x797e6  1      OPC=nop             
  nop                             #  40    0x797e7  1      OPC=nop             
  nop                             #  41    0x797e8  1      OPC=nop             
  nop                             #  42    0x797e9  1      OPC=nop             
  nop                             #  43    0x797ea  1      OPC=nop             
  nop                             #  44    0x797eb  1      OPC=nop             
  nop                             #  45    0x797ec  1      OPC=nop             
                                                                               
.size _ZNKSt8messagesIcE3getEiiiRKSs, .-_ZNKSt8messagesIcE3getEiiiRKSs

