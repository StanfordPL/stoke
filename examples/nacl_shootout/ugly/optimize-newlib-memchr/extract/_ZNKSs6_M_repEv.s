  .text
  .globl _ZNKSs6_M_repEv
  .type _ZNKSs6_M_repEv, @function

#! file-offset 0xeac80
#! rip-offset  0xaac80
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs6_M_repEv:           #        0xaac80  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaac80  2      OPC=movl_r32_r32    
  popq %r11                 #  2     0xaac82  2      OPC=popq_r64_1      
  movl %edi, %edi           #  3     0xaac84  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaac86  4      OPC=movl_r32_m32    
  subl $0xc, %eax           #  5     0xaac8a  3      OPC=subl_r32_imm8   
  andl $0xffffffe0, %r11d   #  6     0xaac8d  7      OPC=andl_r32_imm32  
  nop                       #  7     0xaac94  1      OPC=nop             
  nop                       #  8     0xaac95  1      OPC=nop             
  nop                       #  9     0xaac96  1      OPC=nop             
  nop                       #  10    0xaac97  1      OPC=nop             
  addq %r15, %r11           #  11    0xaac98  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0xaac9b  3      OPC=jmpq_r64        
  nop                       #  13    0xaac9e  1      OPC=nop             
  nop                       #  14    0xaac9f  1      OPC=nop             
  nop                       #  15    0xaaca0  1      OPC=nop             
  nop                       #  16    0xaaca1  1      OPC=nop             
  nop                       #  17    0xaaca2  1      OPC=nop             
  nop                       #  18    0xaaca3  1      OPC=nop             
  nop                       #  19    0xaaca4  1      OPC=nop             
  nop                       #  20    0xaaca5  1      OPC=nop             
  nop                       #  21    0xaaca6  1      OPC=nop             
                                                                         
.size _ZNKSs6_M_repEv, .-_ZNKSs6_M_repEv

