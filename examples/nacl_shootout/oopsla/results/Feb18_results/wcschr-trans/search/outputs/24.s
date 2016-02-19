  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    28 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wcschr:                   #        0     0      OPC=<label>         
  nop                      #  1     0     1      OPC=nop             
.L_0:                      #        0x1   0      OPC=<label>         
  leal (%rdi), %r8d        #  2     0x1   3      OPC=leal_r32_m64    
  movl (%r15,%r8,1), %eax  #  3     0x4   4      OPC=movl_r32_m32    
  cmpl %esi, %eax          #  4     0x8   2      OPC=cmpl_r32_r32    
  je .L_18                 #  5     0xa   2      OPC=je_label        
  addq $0x4, %rdi          #  6     0xc   4      OPC=addq_r64_imm8   
  testl %eax, %eax         #  7     0x10  2      OPC=testl_r32_r32   
  jne .L_0                 #  8     0x12  2      OPC=jne_label       
  retq                     #  9     0x14  1      OPC=retq            
  nop                      #  10    0x15  1      OPC=nop             
  nop                      #  11    0x16  1      OPC=nop             
.L_18:                     #        0x17  0      OPC=<label>         
  movq %r8, %rax           #  12    0x17  3      OPC=movq_r64_r64_1  
  nop                      #  13    0x1a  1      OPC=nop             
  nop                      #  14    0x1b  1      OPC=nop             
  retq                     #  15    0x1c  1      OPC=retq            
                                                                     
.size wcschr, .-wcschr
