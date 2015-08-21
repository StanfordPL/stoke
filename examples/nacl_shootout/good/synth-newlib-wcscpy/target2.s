  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.wcscpy:                 #        0     0      OPC=<label>         
  addq $0x4, %rsi        #  14    0x1c  4      OPC=addq_r64_imm8   
  leal (%rsi), %edx
  movl (%r15,%rdx), %edx #  2     0x6   2      OPC=movl_r32_m32    
  movq %rdi, %rcx        #  4     0xb   3      OPC=movq_r64_r64    
  addq $0x4, %rcx        #  13    0x18  4      OPC=addq_r64_imm8   
  leal (%rcx), %r8d
  movl %edx, (%r15,%r8)  #  15    0x20  3      OPC=movl_m32_r32    
  movl $0x0, %eax
  retq                   #  20    0x2f  1      OPC=retq            
                                                                   
.size wcscpy, .-wcscpy

