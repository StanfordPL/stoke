  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    37 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.wcslen:             #        0     0      OPC=<label>        
  leal (%rdi), %ecx
  movl (%r15, %rcx), %ecx  #  1     0     2      OPC=movl_r32_m32   
  testl %ecx, %ecx   #  2     0x2   2      OPC=testl_r32_r32  
  je .L_22           #  3     0x4   2      OPC=je_label       
  movq %rdi, %rax    #  4     0x6   3      OPC=movq_r64_r64   
  nop                #  5     0x9   1      OPC=nop            
  nop                #  6     0xa   1      OPC=nop            
  nop                #  7     0xb   1      OPC=nop            
  nop                #  8     0xc   1      OPC=nop            
  nop                #  9     0xd   1      OPC=nop            
  nop                #  10    0xe   1      OPC=nop            
  nop                #  11    0xf   1      OPC=nop            
.L_10:               #        0x10  0      OPC=<label>        
  addq $0x4, %rax    #  12    0x10  4      OPC=addq_r64_imm8  
  leal (%rax), %edx
  movl (%r15, %rdx), %edx  #  13    0x14  2      OPC=movl_r32_m32   
  testl %edx, %edx   #  14    0x16  2      OPC=testl_r32_r32  
  jne .L_10          #  15    0x18  2      OPC=jne_label      
  subq %rdi, %rax    #  16    0x1a  3      OPC=subq_r64_r64   
  sarq $0x2, %rax    #  17    0x1d  4      OPC=sarq_r64_imm8  
  retq               #  18    0x21  1      OPC=retq           
.L_22:               #        0x22  0      OPC=<label>        
  xorl %eax, %eax    #  19    0x22  2      OPC=xorl_r32_r32   
  retq               #  20    0x24  1      OPC=retq           
                                                              
.size wcslen, .-wcslen

