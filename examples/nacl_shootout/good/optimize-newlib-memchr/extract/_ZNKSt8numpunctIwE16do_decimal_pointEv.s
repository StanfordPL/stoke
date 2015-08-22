  .text
  .globl _ZNKSt8numpunctIwE16do_decimal_pointEv
  .type _ZNKSt8numpunctIwE16do_decimal_pointEv, @function

#! file-offset 0xf10c0
#! rip-offset  0xb10c0
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE16do_decimal_pointEv:  #        0xb10c0  0      OPC=<label>         
  movl %edi, %edi                         #  1     0xb10c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  2     0xb10c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax             #  3     0xb10c4  5      OPC=movl_r32_m32    
  popq %r11                               #  4     0xb10c9  2      OPC=popq_r64_1      
  movl %eax, %eax                         #  5     0xb10cb  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax            #  6     0xb10cd  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                 #  7     0xb10d2  7      OPC=andl_r32_imm32  
  nop                                     #  8     0xb10d9  1      OPC=nop             
  nop                                     #  9     0xb10da  1      OPC=nop             
  nop                                     #  10    0xb10db  1      OPC=nop             
  nop                                     #  11    0xb10dc  1      OPC=nop             
  addq %r15, %r11                         #  12    0xb10dd  3      OPC=addq_r64_r64    
  jmpq %r11                               #  13    0xb10e0  3      OPC=jmpq_r64        
  nop                                     #  14    0xb10e3  1      OPC=nop             
  nop                                     #  15    0xb10e4  1      OPC=nop             
  nop                                     #  16    0xb10e5  1      OPC=nop             
  nop                                     #  17    0xb10e6  1      OPC=nop             
                                                                                       
.size _ZNKSt8numpunctIwE16do_decimal_pointEv, .-_ZNKSt8numpunctIwE16do_decimal_pointEv

