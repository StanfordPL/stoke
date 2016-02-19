  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    33 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.wcscmp:                   #        0     0      OPC=<label>        
  jmpq .L_10               #  1     0     2      OPC=jmpq_label     
  nop                      #  2     0x2   1      OPC=nop            
.L_8:                      #        0x3   0      OPC=<label>        
  addq $0x4, %rdi          #  3     0x3   4      OPC=addq_r64_imm8  
  testl %eax, %eax         #  4     0x7   2      OPC=testl_r32_r32  
  je .L_1f                 #  5     0x9   2      OPC=je_label       
.L_10:                     #        0xb   0      OPC=<label>        
  addq $0x4, %rsi          #  6     0xb   4      OPC=addq_r64_imm8  
  leal (%rdi), %r8d        #  7     0xf   3      OPC=leal_r32_m64   
  movl (%r15,%r8,1), %eax  #  8     0x12  4      OPC=movl_r32_m32   
  leal -0x4(%rsi), %r8d    #  9     0x16  4      OPC=leal_r32_m16   
  movl (%r15,%r8,1), %edx  #  10    0x1a  4      OPC=movl_r32_m32   
  cmpl %edx, %eax          #  11    0x1e  2      OPC=cmpl_r32_r32   
  je .L_8                  #  12    0x20  2      OPC=je_label       
  subl %edx, %eax          #  13    0x22  2      OPC=subl_r32_r32   
.L_1f:                     #        0x24  0      OPC=<label>        
  nop                      #  14    0x24  1      OPC=nop            
  nop                      #  15    0x25  1      OPC=nop            
  nop                      #  16    0x26  1      OPC=nop            
  retq                     #  17    0x27  1      OPC=retq           
                                                                    
.size wcscmp, .-wcscmp
