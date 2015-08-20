  .text
  .globl _ZNKSs6_M_repEv
  .type _ZNKSs6_M_repEv, @function

#! file-offset 0xea560
#! rip-offset  0xaa560
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs6_M_repEv:           #        0xaa560  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa560  2      OPC=movl_r32_r32    
  popq %r11                 #  2     0xaa562  2      OPC=popq_r64_1      
  movl %edi, %edi           #  3     0xaa564  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa566  4      OPC=movl_r32_m32    
  subl $0xc, %eax           #  5     0xaa56a  3      OPC=subl_r32_imm8   
  andl $0xffffffe0, %r11d   #  6     0xaa56d  7      OPC=andl_r32_imm32  
  nop                       #  7     0xaa574  1      OPC=nop             
  nop                       #  8     0xaa575  1      OPC=nop             
  nop                       #  9     0xaa576  1      OPC=nop             
  nop                       #  10    0xaa577  1      OPC=nop             
  addq %r15, %r11           #  11    0xaa578  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0xaa57b  3      OPC=jmpq_r64        
  nop                       #  13    0xaa57e  1      OPC=nop             
  nop                       #  14    0xaa57f  1      OPC=nop             
  nop                       #  15    0xaa580  1      OPC=nop             
  nop                       #  16    0xaa581  1      OPC=nop             
  nop                       #  17    0xaa582  1      OPC=nop             
  nop                       #  18    0xaa583  1      OPC=nop             
  nop                       #  19    0xaa584  1      OPC=nop             
  nop                       #  20    0xaa585  1      OPC=nop             
  nop                       #  21    0xaa586  1      OPC=nop             
                                                                         
.size _ZNKSs6_M_repEv, .-_ZNKSs6_M_repEv

