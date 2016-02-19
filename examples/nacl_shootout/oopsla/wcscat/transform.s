  .text
  .globl wcscat
  .type wcscat, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    56 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.wcscat:                 #        0     0      OPC=<label>         
  movq %rdi, %rax        #  1     0     3      OPC=movq_r64_r64    
  movq %rdi, %rdx        #  2     0x3   3      OPC=movq_r64_r64    
  leal (%rdi), %r8d
  movl (%r15, %r8), %edi      #  3     0x6   2      OPC=movl_r32_m32    
  testl %edi, %edi       #  4     0x8   2      OPC=testl_r32_r32   
  je .L_2b               #  5     0xa   2      OPC=je_label        
  nop                    #  6     0xc   1      OPC=nop             
  nop                    #  7     0xd   1      OPC=nop             
  nop                    #  8     0xe   1      OPC=nop             
  nop                    #  9     0xf   1      OPC=nop             
.L_10:                   #        0x10  0      OPC=<label>         
  addq $0x4, %rdx        #  10    0x10  4      OPC=addq_r64_imm8   
  leal (%rdx), %r8d
  movl (%r15, %r8), %ecx      #  11    0x14  2      OPC=movl_r32_m32    
  testl %ecx, %ecx       #  12    0x16  2      OPC=testl_r32_r32   
  jne .L_10              #  13    0x18  2      OPC=jne_label       
  leal (%rsi), %r8d
  movl (%r15, %r8), %ecx      #  14    0x1a  2      OPC=movl_r32_m32    
  testl %ecx, %ecx       #  15    0x1c  2      OPC=testl_r32_r32   
  je .L_31               #  16    0x1e  2      OPC=je_label        
.L_20:                   #        0x20  0      OPC=<label>         
  addq $0x4, %rdx        #  17    0x20  4      OPC=addq_r64_imm8   
  addq $0x4, %rsi        #  18    0x24  4      OPC=addq_r64_imm8   
  leal (%rdx), %r8d
  movl %ecx, -0x4(%r15, %r8)  #  19    0x28  3      OPC=movl_m32_r32    
.L_2b:                   #        0x2b  0      OPC=<label>         
  leal (%rsi), %r8d
  movl (%r15,%r8), %ecx      #  20    0x2b  2      OPC=movl_r32_m32    
  testl %ecx, %ecx       #  21    0x2d  2      OPC=testl_r32_r32   
  jne .L_20              #  22    0x2f  2      OPC=jne_label       
.L_31:                   #        0x31  0      OPC=<label>         
  leal (%rdx), %r8d
  movl $0x0, (%r15,%r8)      #  23    0x31  6      OPC=movl_m32_imm32  
  retq                   #  24    0x37  1      OPC=retq            
                                                                   
.size wcscat, .-wcscat

