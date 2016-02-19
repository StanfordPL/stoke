  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    28 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.wcschr:                   #        0     0      OPC=<label>        
  nop                      #  1     0     1      OPC=nop            
  nop                      #  2     0x1   1      OPC=nop            
  nop                      #  3     0x2   1      OPC=nop            
  orl $0x0, %edi           #  4     0x3   3      OPC=orl_r32_imm8   
  nop                      #  5     0x6   1      OPC=nop            
  nop                      #  6     0x7   1      OPC=nop            
  nop                      #  7     0x8   1      OPC=nop            
  nop                      #  8     0x9   1      OPC=nop            
  nop                      #  9     0xa   1      OPC=nop            
.L_0:                      #        0xb   0      OPC=<label>        
  leal (%rdi), %r8d        #  10    0xb   3      OPC=leal_r32_m16   
  movl (%r15,%r8,1), %eax  #  11    0xe   4      OPC=movl_r32_m32   
  cmpl %esi, %eax          #  12    0x12  2      OPC=cmpl_r32_r32   
  je .L_18                 #  13    0x14  2      OPC=je_label       
  addq $0x4, %rdi          #  14    0x16  4      OPC=addq_r64_imm8  
  testl %eax, %eax         #  15    0x1a  2      OPC=testl_r32_r32  
  jne .L_0                 #  16    0x1c  2      OPC=jne_label      
  nop                      #  17    0x1e  1      OPC=nop            
  nop                      #  18    0x1f  1      OPC=nop            
  retq                     #  19    0x20  1      OPC=retq           
  nop                      #  20    0x21  1      OPC=nop            
  nop                      #  21    0x22  1      OPC=nop            
.L_18:                     #        0x23  0      OPC=<label>        
  movq %rdi, %rax          #  22    0x23  3      OPC=movq_r64_r64   
  retq                     #  23    0x26  1      OPC=retq           
                                                                    
.size wcschr, .-wcschr
