  .text
  .globl _ZNKSs7_M_dataEv
  .type _ZNKSs7_M_dataEv, @function

#! file-offset 0xea220
#! rip-offset  0xaa220
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs7_M_dataEv:          #        0xaa220  0      OPC=<label>         
  popq %r11                 #  1     0xaa220  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa222  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa224  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa226  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa22a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa231  1      OPC=nop             
  nop                       #  7     0xaa232  1      OPC=nop             
  nop                       #  8     0xaa233  1      OPC=nop             
  nop                       #  9     0xaa234  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa235  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa238  3      OPC=jmpq_r64        
  nop                       #  12    0xaa23b  1      OPC=nop             
  nop                       #  13    0xaa23c  1      OPC=nop             
  nop                       #  14    0xaa23d  1      OPC=nop             
  nop                       #  15    0xaa23e  1      OPC=nop             
  nop                       #  16    0xaa23f  1      OPC=nop             
  nop                       #  17    0xaa240  1      OPC=nop             
  nop                       #  18    0xaa241  1      OPC=nop             
  nop                       #  19    0xaa242  1      OPC=nop             
  nop                       #  20    0xaa243  1      OPC=nop             
  nop                       #  21    0xaa244  1      OPC=nop             
  nop                       #  22    0xaa245  1      OPC=nop             
  nop                       #  23    0xaa246  1      OPC=nop             
                                                                         
.size _ZNKSs7_M_dataEv, .-_ZNKSs7_M_dataEv

