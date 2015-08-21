  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    28 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.wcschr:             #        0     0      OPC=<label>        
.L_0:                #        0     0      OPC=<label>        
  leal (%rdi), %r8d
  movl (%r15, %r8), %eax  #  1     0     2      OPC=movl_r32_m32   
  cmpl %esi, %eax    #  2     0x2   2      OPC=cmpl_r32_r32   
  je .L_18           #  3     0x4   2      OPC=je_label       
  addq $0x4, %rdi    #  4     0x6   4      OPC=addq_r64_imm8  
  testl %eax, %eax   #  5     0xa   2      OPC=testl_r32_r32  
  jne .L_0           #  6     0xc   2      OPC=jne_label      
  xorl %eax, %eax    #  7     0xe   2      OPC=xorl_r32_r32   
  retq               #  8     0x10  1      OPC=retq           
  nop                #  9     0x11  1      OPC=nop            
  nop                #  10    0x12  1      OPC=nop            
  nop                #  11    0x13  1      OPC=nop            
  nop                #  12    0x14  1      OPC=nop            
  nop                #  13    0x15  1      OPC=nop            
  nop                #  14    0x16  1      OPC=nop            
  nop                #  15    0x17  1      OPC=nop            
.L_18:               #        0x18  0      OPC=<label>        
  movq %rdi, %rax    #  16    0x18  3      OPC=movq_r64_r64   
  retq               #  17    0x1b  1      OPC=retq           
                                                              
.size wcschr, .-wcschr

