  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    31 bytes

# Text                   #  Line  RIP   Bytes  Opcode             
.wcpcpy:                 #        0     0      OPC=<label>        
  movq %rdi, %rax        #  1     0     3      OPC=movq_r64_r64   
  jmpq .L_b              #  2     0x3   2      OPC=jmpq_label     
  nop                    #  3     0x5   1      OPC=nop            
  nop                    #  4     0x6   1      OPC=nop            
  nop                    #  5     0x7   1      OPC=nop            
.L_8:                    #        0x8   0      OPC=<label>        
  movq %rcx, %rax        #  6     0x8   3      OPC=movq_r64_r64   
.L_b:                    #        0xb   0      OPC=<label>        
  addq $0x4, %rsi        #  7     0xb   4      OPC=addq_r64_imm8  
  movl -0x4(%rsi), %edx  #  8     0xf   3      OPC=movl_r32_m32   
  leaq 0x4(%rax), %rcx   #  9     0x12  4      OPC=leaq_r64_m16   
  testl %edx, %edx       #  10    0x16  2      OPC=testl_r32_r32  
  movl %edx, -0x4(%rcx)  #  11    0x18  3      OPC=movl_m32_r32   
  jne .L_8               #  12    0x1b  2      OPC=jne_label      
  retq                   #  13    0x1d  1      OPC=retq           
  nop                    #  14    0x1e  1      OPC=nop            
                                                                  
.size wcpcpy, .-wcpcpy

