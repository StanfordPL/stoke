  .text
  .globl simple_stpcpy
  .type simple_stpcpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    32 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.simple_stpcpy:            #        0     0      OPC=<label>        
  movq %rdi, %rax          #  1     0     3      OPC=movq_r64_r64   
  jmpq .L_b                #  2     0x3   2      OPC=jmpq_label     
  nop                      #  3     0x5   1      OPC=nop            
  nop                      #  4     0x6   1      OPC=nop            
  nop                      #  5     0x7   1      OPC=nop            
.L_8:                      #        0x8   0      OPC=<label>        
  movq %rcx, %rax          #  6     0x8   3      OPC=movq_r64_r64   
.L_b:                      #        0xb   0      OPC=<label>        
  addq $0x1, %rsi          #  7     0xb   4      OPC=addq_r64_imm8  
  movzbl -0x1(%rsi), %edx  #  8     0xf   4      OPC=movzbl_r32_m8  
  leaq 0x1(%rax), %rcx     #  9     0x13  4      OPC=leaq_r64_m16   
  testb %dl, %dl           #  10    0x17  2      OPC=testb_r8_r8    
  movb %dl, -0x1(%rcx)     #  11    0x19  3      OPC=movb_m8_r8     
  jne .L_8                 #  12    0x1c  2      OPC=jne_label      
  retq                     #  13    0x1e  1      OPC=retq           
  nop                      #  14    0x1f  1      OPC=nop            
                                                                    
.size simple_stpcpy, .-simple_stpcpy

