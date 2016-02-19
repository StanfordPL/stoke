  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    28 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wcschr:                   #        0     0      OPC=<label>         
.L_0:                      #        0     0      OPC=<label>         
  leal (%rdi), %r8d        #  1     0     3      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %eax  #  2     0x3   4      OPC=movl_r32_m32    
  addq $0x4, %rdi          #  3     0x7   4      OPC=addq_r64_imm8   
  cmpl %esi, %eax          #  4     0xb   2      OPC=cmpl_r32_r32    
  je .L_18                 #  5     0xd   2      OPC=je_label        
  andl %eax, %eax          #  6     0xf   2      OPC=andl_r32_r32_1  
  jne .L_0                 #  7     0x11  2      OPC=jne_label       
  nop                      #  8     0x13  1      OPC=nop             
  retq                     #  9     0x14  1      OPC=retq            
.L_18:                     #        0x15  0      OPC=<label>         
  movq %r8, %rax           #  10    0x15  3      OPC=movq_r64_r64    
  retq                     #  11    0x18  1      OPC=retq            
                                                                     
.size wcschr, .-wcschr
