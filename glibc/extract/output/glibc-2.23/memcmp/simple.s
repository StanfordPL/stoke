  .text
  .globl simple_memcmp
  .type simple_memcmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.simple_memcmp:            #        0     0      OPC=<label>        
  addq %rsi, %rdx          #  1     0     3      OPC=addq_r64_r64   
  jmpq .L_1c               #  2     0x3   2      OPC=jmpq_label     
  nop                      #  3     0x5   1      OPC=nop            
  nop                      #  4     0x6   1      OPC=nop            
  nop                      #  5     0x7   1      OPC=nop            
.L_8:                      #        0x8   0      OPC=<label>        
  addq $0x1, %rdi          #  6     0x8   4      OPC=addq_r64_imm8  
  addq $0x1, %rsi          #  7     0xc   4      OPC=addq_r64_imm8  
  movzbl -0x1(%rdi), %eax  #  8     0x10  4      OPC=movzbl_r32_m8  
  movzbl -0x1(%rsi), %ecx  #  9     0x14  4      OPC=movzbl_r32_m8  
  subl %ecx, %eax          #  10    0x18  2      OPC=subl_r32_r32   
  jne .L_28                #  11    0x1a  2      OPC=jne_label      
.L_1c:                     #        0x1c  0      OPC=<label>        
  cmpq %rdx, %rsi          #  12    0x1c  3      OPC=cmpq_r64_r64   
  jne .L_8                 #  13    0x1f  2      OPC=jne_label      
  xorl %eax, %eax          #  14    0x21  2      OPC=xorl_r32_r32   
  retq                     #  15    0x23  1      OPC=retq           
  nop                      #  16    0x24  1      OPC=nop            
  nop                      #  17    0x25  1      OPC=nop            
  nop                      #  18    0x26  1      OPC=nop            
  nop                      #  19    0x27  1      OPC=nop            
.L_28:                     #        0x28  0      OPC=<label>        
  retq                     #  20    0x28  1      OPC=retq           
  nop                      #  21    0x29  1      OPC=nop            
  nop                      #  22    0x2a  1      OPC=nop            
  nop                      #  23    0x2b  1      OPC=nop            
  nop                      #  24    0x2c  1      OPC=nop            
  nop                      #  25    0x2d  1      OPC=nop            
  nop                      #  26    0x2e  1      OPC=nop            
  nop                      #  27    0x2f  1      OPC=nop            
                                                                    
.size simple_memcmp, .-simple_memcmp

