  .text
  .globl _ZNKSs6lengthEv
  .type _ZNKSs6lengthEv, @function

#! file-offset 0xea4a0
#! rip-offset  0xaa4a0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs6lengthEv:           #        0xaa4a0  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa4a0  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaa4a2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaa4a4  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaa4a8  2      OPC=popq_r64_1      
  subl $0xc, %eax           #  5     0xaa4aa  3      OPC=subl_r32_imm8   
  movl %eax, %eax           #  6     0xaa4ad  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  7     0xaa4af  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  8     0xaa4b3  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaa4ba  1      OPC=nop             
  nop                       #  10    0xaa4bb  1      OPC=nop             
  nop                       #  11    0xaa4bc  1      OPC=nop             
  nop                       #  12    0xaa4bd  1      OPC=nop             
  addq %r15, %r11           #  13    0xaa4be  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaa4c1  3      OPC=jmpq_r64        
  nop                       #  15    0xaa4c4  1      OPC=nop             
  nop                       #  16    0xaa4c5  1      OPC=nop             
  nop                       #  17    0xaa4c6  1      OPC=nop             
                                                                         
.size _ZNKSs6lengthEv, .-_ZNKSs6lengthEv

