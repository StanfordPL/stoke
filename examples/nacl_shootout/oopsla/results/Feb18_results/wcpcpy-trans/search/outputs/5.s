  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    31 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcpcpy:                        #        0     0      OPC=<label>         
  movl %edi, %eax               #  1     0     2      OPC=movl_r32_r32    
  jmpq .L_b                     #  2     0x2   2      OPC=jmpq_label      
  nop                           #  3     0x4   1      OPC=nop             
  nop                           #  4     0x5   1      OPC=nop             
  nop                           #  5     0x6   1      OPC=nop             
  nop                           #  6     0x7   1      OPC=nop             
.L_8:                           #        0x8   0      OPC=<label>         
  movq %rcx, %rax               #  7     0x8   3      OPC=movq_r64_r64_1  
.L_b:                           #        0xb   0      OPC=<label>         
  addl $0x4, %esi               #  8     0xb   3      OPC=addl_r32_imm8   
  movl -0x4(%r15,%rsi,1), %edx  #  9     0xe   5      OPC=movl_r32_m32    
  leal 0x4(%rax), %ecx          #  10    0x13  3      OPC=leal_r32_m16    
  testl %edx, %edx              #  11    0x16  2      OPC=testl_r32_r32   
  leal -0x4(%rcx), %r8d         #  12    0x18  4      OPC=leal_r32_m16    
  movl %edx, (%r15,%r8,1)       #  13    0x1c  4      OPC=movl_m32_r32    
  jne .L_8                      #  14    0x20  2      OPC=jne_label       
  retq                          #  15    0x22  1      OPC=retq            
                                                                          
.size wcpcpy, .-wcpcpy
