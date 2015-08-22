  .text
  .globl _ZNKSs4sizeEv
  .type _ZNKSs4sizeEv, @function

#! file-offset 0xeaea0
#! rip-offset  0xaaea0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs4sizeEv:             #        0xaaea0  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaaea0  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaaea2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaaea4  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaaea8  2      OPC=popq_r64_1      
  subl $0xc, %eax           #  5     0xaaeaa  3      OPC=subl_r32_imm8   
  movl %eax, %eax           #  6     0xaaead  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  7     0xaaeaf  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  8     0xaaeb3  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaaeba  1      OPC=nop             
  nop                       #  10    0xaaebb  1      OPC=nop             
  nop                       #  11    0xaaebc  1      OPC=nop             
  nop                       #  12    0xaaebd  1      OPC=nop             
  addq %r15, %r11           #  13    0xaaebe  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaaec1  3      OPC=jmpq_r64        
  nop                       #  15    0xaaec4  1      OPC=nop             
  nop                       #  16    0xaaec5  1      OPC=nop             
  nop                       #  17    0xaaec6  1      OPC=nop             
                                                                         
.size _ZNKSs4sizeEv, .-_ZNKSs4sizeEv

