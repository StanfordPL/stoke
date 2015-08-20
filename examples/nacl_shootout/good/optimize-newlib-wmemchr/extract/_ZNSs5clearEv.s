  .text
  .globl _ZNSs5clearEv
  .type _ZNSs5clearEv, @function

#! file-offset 0xeecc0
#! rip-offset  0xaecc0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode             
._ZNSs5clearEv:              #        0xaecc0  0      OPC=<label>        
  movl %edi, %edi            #  1     0xaecc0  2      OPC=movl_r32_r32   
  xorl %ecx, %ecx            #  2     0xaecc2  2      OPC=xorl_r32_r32   
  xorl %esi, %esi            #  3     0xaecc4  2      OPC=xorl_r32_r32   
  movl %edi, %edi            #  4     0xaecc6  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax   #  5     0xaecc8  4      OPC=movl_r32_m32   
  subl $0xc, %eax            #  6     0xaeccc  3      OPC=subl_r32_imm8  
  movl %eax, %eax            #  7     0xaeccf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx   #  8     0xaecd1  4      OPC=movl_r32_m32   
  jmpq ._ZNSs9_M_mutateEjjj  #  9     0xaecd5  5      OPC=jmpq_label_1   
  nop                        #  10    0xaecda  1      OPC=nop            
  nop                        #  11    0xaecdb  1      OPC=nop            
  nop                        #  12    0xaecdc  1      OPC=nop            
  nop                        #  13    0xaecdd  1      OPC=nop            
  nop                        #  14    0xaecde  1      OPC=nop            
  nop                        #  15    0xaecdf  1      OPC=nop            
                                                                         
.size _ZNSs5clearEv, .-_ZNSs5clearEv

