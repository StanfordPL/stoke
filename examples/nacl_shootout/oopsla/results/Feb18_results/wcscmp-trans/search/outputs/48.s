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
  nop                      #  3     0x3   1      OPC=nop            
  nop                      #  4     0x4   1      OPC=nop            
.L_8:                      #        0x5   0      OPC=<label>        
  addq $0x4, %rdi          #  5     0x5   4      OPC=addq_r64_imm8  
  testl %eax, %eax         #  6     0x9   2      OPC=testl_r32_r32  
  je .L_1f                 #  7     0xb   2      OPC=je_label       
.L_10:                     #        0xd   0      OPC=<label>        
  addq $0x4, %rsi          #  8     0xd   4      OPC=addq_r64_imm8  
  leal (%rdi), %r8d        #  9     0x11  3      OPC=leal_r32_m32   
  movl (%r15,%r8,1), %eax  #  10    0x14  4      OPC=movl_r32_m32   
  leal -0x4(%rsi), %r8d    #  11    0x18  4      OPC=leal_r32_m16   
  movl (%r15,%r8,1), %edx  #  12    0x1c  4      OPC=movl_r32_m32   
  cmpl %edx, %eax          #  13    0x20  2      OPC=cmpl_r32_r32   
  je .L_8                  #  14    0x22  2      OPC=je_label       
  nop                      #  15    0x24  1      OPC=nop            
  subl %edx, %eax          #  16    0x25  2      OPC=subl_r32_r32   
.L_1f:                     #        0x27  0      OPC=<label>        
  retq                     #  17    0x27  1      OPC=retq           
                                                                    
.size wcscmp, .-wcscmp
