  .text
  .globl _ZNKSs4sizeEv
  .type _ZNKSs4sizeEv, @function

#! file-offset 0xea480
#! rip-offset  0xaa480
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs4sizeEv:             #        0xaa480  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa480  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaa482  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaa484  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaa488  2      OPC=popq_r64_1      
  subl $0xc, %eax           #  5     0xaa48a  3      OPC=subl_r32_imm8   
  movl %eax, %eax           #  6     0xaa48d  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  7     0xaa48f  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  8     0xaa493  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaa49a  1      OPC=nop             
  nop                       #  10    0xaa49b  1      OPC=nop             
  nop                       #  11    0xaa49c  1      OPC=nop             
  nop                       #  12    0xaa49d  1      OPC=nop             
  addq %r15, %r11           #  13    0xaa49e  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaa4a1  3      OPC=jmpq_r64        
  nop                       #  15    0xaa4a4  1      OPC=nop             
  nop                       #  16    0xaa4a5  1      OPC=nop             
  nop                       #  17    0xaa4a6  1      OPC=nop             
                                                                         
.size _ZNKSs4sizeEv, .-_ZNKSs4sizeEv

