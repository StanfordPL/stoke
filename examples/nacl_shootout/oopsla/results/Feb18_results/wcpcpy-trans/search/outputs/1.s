  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    31 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcpcpy:                        #        0     0      OPC=<label>         
  nop                           #  1     0     1      OPC=nop             
  movl %edi, %eax               #  2     0x1   2      OPC=movl_r32_r32_1  
  nop                           #  3     0x3   1      OPC=nop             
  jmpq .L_b                     #  4     0x4   2      OPC=jmpq_label      
.L_8:                           #        0x6   0      OPC=<label>         
  movq %rcx, %rax               #  5     0x6   3      OPC=movq_r64_r64    
.L_b:                           #        0x9   0      OPC=<label>         
  addl $0x4, %esi               #  6     0x9   3      OPC=addl_r32_imm8   
  movl -0x4(%r15,%rsi,1), %edx  #  7     0xc   5      OPC=movl_r32_m32    
  testl %edx, %edx              #  8     0x11  2      OPC=testl_r32_r32   
  leal 0x4(%rax), %ecx          #  9     0x13  3      OPC=leal_r32_m64    
  leal -0x4(%rcx), %r8d         #  10    0x16  4      OPC=leal_r32_m16    
  movl %edx, (%r15,%r8,1)       #  11    0x1a  4      OPC=movl_m32_r32    
  jne .L_8                      #  12    0x1e  2      OPC=jne_label       
  nop                           #  13    0x20  1      OPC=nop             
  nop                           #  14    0x21  1      OPC=nop             
  nop                           #  15    0x22  1      OPC=nop             
  nop                           #  16    0x23  1      OPC=nop             
  nop                           #  17    0x24  1      OPC=nop             
  nop                           #  18    0x25  1      OPC=nop             
  nop                           #  19    0x26  1      OPC=nop             
  retq                          #  20    0x27  1      OPC=retq            
                                                                          
.size wcpcpy, .-wcpcpy
