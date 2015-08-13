  .text
  .globl _ZTv0_n12_NSiD1Ev
  .type _ZTv0_n12_NSiD1Ev, @function

#! file-offset 0xa7b00
#! rip-offset  0x67b00
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode            
._ZTv0_n12_NSiD1Ev:             #        0x67b00  0      OPC=<label>       
  movl %edi, %edi               #  1     0x67b00  2      OPC=movl_r32_r32  
  movq (%r15,%rdi,1), %r10      #  2     0x67b02  4      OPC=movq_r64_m64  
  movl %r10d, %r10d             #  3     0x67b06  3      OPC=movl_r32_r32  
  addq -0xc(%r15,%r10,1), %rdi  #  4     0x67b09  5      OPC=addq_r64_m64  
  jmpq ._ZNSiD1Ev               #  5     0x67b0e  2      OPC=jmpq_label    
  nop                           #  6     0x67b10  1      OPC=nop           
  nop                           #  7     0x67b11  1      OPC=nop           
  nop                           #  8     0x67b12  1      OPC=nop           
  nop                           #  9     0x67b13  1      OPC=nop           
  nop                           #  10    0x67b14  1      OPC=nop           
  nop                           #  11    0x67b15  1      OPC=nop           
  nop                           #  12    0x67b16  1      OPC=nop           
  nop                           #  13    0x67b17  1      OPC=nop           
  nop                           #  14    0x67b18  1      OPC=nop           
  nop                           #  15    0x67b19  1      OPC=nop           
  nop                           #  16    0x67b1a  1      OPC=nop           
  nop                           #  17    0x67b1b  1      OPC=nop           
  nop                           #  18    0x67b1c  1      OPC=nop           
  nop                           #  19    0x67b1d  1      OPC=nop           
  nop                           #  20    0x67b1e  1      OPC=nop           
  nop                           #  21    0x67b1f  1      OPC=nop           
                                                                           
.size _ZTv0_n12_NSiD1Ev, .-_ZTv0_n12_NSiD1Ev

