  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.wcscpy:                 #        0     0      OPC=<label>         
  movl $0x0, (%rdi)      #  1     0     6      OPC=movl_m32_imm32  
  movl (%rsi), %edx      #  2     0x6   2      OPC=movl_r32_m32    
  movq %rdi, %rax        #  3     0x8   3      OPC=movq_r64_r64    
  movq %rdi, %rcx        #  4     0xb   3      OPC=movq_r64_r64    
  testl %edx, %edx       #  5     0xe   2      OPC=testl_r32_r32   
  je .L_29               #  6     0x10  2      OPC=je_label        
  nop                    #  7     0x12  1      OPC=nop             
  nop                    #  8     0x13  1      OPC=nop             
  nop                    #  9     0x14  1      OPC=nop             
  nop                    #  10    0x15  1      OPC=nop             
  nop                    #  11    0x16  1      OPC=nop             
  nop                    #  12    0x17  1      OPC=nop             
.L_18:                   #        0x18  0      OPC=<label>         
  addq $0x4, %rcx        #  13    0x18  4      OPC=addq_r64_imm8   
  addq $0x4, %rsi        #  14    0x1c  4      OPC=addq_r64_imm8   
  movl %edx, -0x4(%rcx)  #  15    0x20  3      OPC=movl_m32_r32    
  movl (%rsi), %edx      #  16    0x23  2      OPC=movl_r32_m32    
  testl %edx, %edx       #  17    0x25  2      OPC=testl_r32_r32   
  jne .L_18              #  18    0x27  2      OPC=jne_label       
.L_29:                   #        0x29  0      OPC=<label>         
  movl $0x0, (%rcx)      #  19    0x29  6      OPC=movl_m32_imm32  
  retq                   #  20    0x2f  1      OPC=retq            
                                                                   
.size wcscpy, .-wcscpy

