  .text
  .globl _ZTv0_n12_NSiD0Ev
  .type _ZTv0_n12_NSiD0Ev, @function

#! file-offset 0xa7d80
#! rip-offset  0x67d80
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode            
._ZTv0_n12_NSiD0Ev:             #        0x67d80  0      OPC=<label>       
  movl %edi, %edi               #  1     0x67d80  2      OPC=movl_r32_r32  
  movq (%r15,%rdi,1), %r10      #  2     0x67d82  4      OPC=movq_r64_m64  
  movl %r10d, %r10d             #  3     0x67d86  3      OPC=movl_r32_r32  
  addq -0xc(%r15,%r10,1), %rdi  #  4     0x67d89  5      OPC=addq_r64_m64  
  jmpq ._ZNSiD0Ev               #  5     0x67d8e  2      OPC=jmpq_label    
  nop                           #  6     0x67d90  1      OPC=nop           
  nop                           #  7     0x67d91  1      OPC=nop           
  nop                           #  8     0x67d92  1      OPC=nop           
  nop                           #  9     0x67d93  1      OPC=nop           
  nop                           #  10    0x67d94  1      OPC=nop           
  nop                           #  11    0x67d95  1      OPC=nop           
  nop                           #  12    0x67d96  1      OPC=nop           
  nop                           #  13    0x67d97  1      OPC=nop           
  nop                           #  14    0x67d98  1      OPC=nop           
  nop                           #  15    0x67d99  1      OPC=nop           
  nop                           #  16    0x67d9a  1      OPC=nop           
  nop                           #  17    0x67d9b  1      OPC=nop           
  nop                           #  18    0x67d9c  1      OPC=nop           
  nop                           #  19    0x67d9d  1      OPC=nop           
  nop                           #  20    0x67d9e  1      OPC=nop           
  nop                           #  21    0x67d9f  1      OPC=nop           
                                                                           
.size _ZTv0_n12_NSiD0Ev, .-_ZTv0_n12_NSiD0Ev

