  .text
  .globl _ZNSs5clearEv
  .type _ZNSs5clearEv, @function

#! file-offset 0xee9c0
#! rip-offset  0xae9c0
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode             
._ZNSs5clearEv:              #        0xae9c0  0      OPC=<label>        
  movl %edi, %edi            #  1     0xae9c0  2      OPC=movl_r32_r32   
  xorl %ecx, %ecx            #  2     0xae9c2  2      OPC=xorl_r32_r32   
  xorl %esi, %esi            #  3     0xae9c4  2      OPC=xorl_r32_r32   
  movl %edi, %edi            #  4     0xae9c6  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax   #  5     0xae9c8  4      OPC=movl_r32_m32   
  subl $0xc, %eax            #  6     0xae9cc  3      OPC=subl_r32_imm8  
  movl %eax, %eax            #  7     0xae9cf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx   #  8     0xae9d1  4      OPC=movl_r32_m32   
  jmpq ._ZNSs9_M_mutateEjjj  #  9     0xae9d5  5      OPC=jmpq_label_1   
  nop                        #  10    0xae9da  1      OPC=nop            
  nop                        #  11    0xae9db  1      OPC=nop            
  nop                        #  12    0xae9dc  1      OPC=nop            
  nop                        #  13    0xae9dd  1      OPC=nop            
  nop                        #  14    0xae9de  1      OPC=nop            
  nop                        #  15    0xae9df  1      OPC=nop            
                                                                         
.size _ZNSs5clearEv, .-_ZNSs5clearEv

