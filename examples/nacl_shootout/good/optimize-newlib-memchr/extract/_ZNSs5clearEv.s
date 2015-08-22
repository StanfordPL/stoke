  .text
  .globl _ZNSs5clearEv
  .type _ZNSs5clearEv, @function

#! file-offset 0xef3e0
#! rip-offset  0xaf3e0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode             
._ZNSs5clearEv:              #        0xaf3e0  0      OPC=<label>        
  movl %edi, %edi            #  1     0xaf3e0  2      OPC=movl_r32_r32   
  xorl %ecx, %ecx            #  2     0xaf3e2  2      OPC=xorl_r32_r32   
  xorl %esi, %esi            #  3     0xaf3e4  2      OPC=xorl_r32_r32   
  movl %edi, %edi            #  4     0xaf3e6  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax   #  5     0xaf3e8  4      OPC=movl_r32_m32   
  subl $0xc, %eax            #  6     0xaf3ec  3      OPC=subl_r32_imm8  
  movl %eax, %eax            #  7     0xaf3ef  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx   #  8     0xaf3f1  4      OPC=movl_r32_m32   
  jmpq ._ZNSs9_M_mutateEjjj  #  9     0xaf3f5  5      OPC=jmpq_label_1   
  nop                        #  10    0xaf3fa  1      OPC=nop            
  nop                        #  11    0xaf3fb  1      OPC=nop            
  nop                        #  12    0xaf3fc  1      OPC=nop            
  nop                        #  13    0xaf3fd  1      OPC=nop            
  nop                        #  14    0xaf3fe  1      OPC=nop            
  nop                        #  15    0xaf3ff  1      OPC=nop            
                                                                         
.size _ZNSs5clearEv, .-_ZNSs5clearEv

