  .text
  .globl _ZNKSs6lengthEv
  .type _ZNKSs6lengthEv, @function

#! file-offset 0xeaec0
#! rip-offset  0xaaec0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs6lengthEv:           #        0xaaec0  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaaec0  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaaec2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaaec4  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaaec8  2      OPC=popq_r64_1      
  subl $0xc, %eax           #  5     0xaaeca  3      OPC=subl_r32_imm8   
  movl %eax, %eax           #  6     0xaaecd  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  7     0xaaecf  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  8     0xaaed3  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaaeda  1      OPC=nop             
  nop                       #  10    0xaaedb  1      OPC=nop             
  nop                       #  11    0xaaedc  1      OPC=nop             
  nop                       #  12    0xaaedd  1      OPC=nop             
  addq %r15, %r11           #  13    0xaaede  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaaee1  3      OPC=jmpq_r64        
  nop                       #  15    0xaaee4  1      OPC=nop             
  nop                       #  16    0xaaee5  1      OPC=nop             
  nop                       #  17    0xaaee6  1      OPC=nop             
                                                                         
.size _ZNKSs6lengthEv, .-_ZNKSs6lengthEv

