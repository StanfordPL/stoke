  .text
  .globl _ZTv0_n12_NSiD1Ev
  .type _ZTv0_n12_NSiD1Ev, @function

#! file-offset 0xa7e00
#! rip-offset  0x67e00
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode            
._ZTv0_n12_NSiD1Ev:             #        0x67e00  0      OPC=<label>       
  movl %edi, %edi               #  1     0x67e00  2      OPC=movl_r32_r32  
  movq (%r15,%rdi,1), %r10      #  2     0x67e02  4      OPC=movq_r64_m64  
  movl %r10d, %r10d             #  3     0x67e06  3      OPC=movl_r32_r32  
  addq -0xc(%r15,%r10,1), %rdi  #  4     0x67e09  5      OPC=addq_r64_m64  
  jmpq ._ZNSiD1Ev               #  5     0x67e0e  2      OPC=jmpq_label    
  nop                           #  6     0x67e10  1      OPC=nop           
  nop                           #  7     0x67e11  1      OPC=nop           
  nop                           #  8     0x67e12  1      OPC=nop           
  nop                           #  9     0x67e13  1      OPC=nop           
  nop                           #  10    0x67e14  1      OPC=nop           
  nop                           #  11    0x67e15  1      OPC=nop           
  nop                           #  12    0x67e16  1      OPC=nop           
  nop                           #  13    0x67e17  1      OPC=nop           
  nop                           #  14    0x67e18  1      OPC=nop           
  nop                           #  15    0x67e19  1      OPC=nop           
  nop                           #  16    0x67e1a  1      OPC=nop           
  nop                           #  17    0x67e1b  1      OPC=nop           
  nop                           #  18    0x67e1c  1      OPC=nop           
  nop                           #  19    0x67e1d  1      OPC=nop           
  nop                           #  20    0x67e1e  1      OPC=nop           
  nop                           #  21    0x67e1f  1      OPC=nop           
                                                                           
.size _ZTv0_n12_NSiD1Ev, .-_ZTv0_n12_NSiD1Ev

