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
.L_8:                           #        0x5   0      OPC=<label>         
  movq %rcx, %rax               #  4     0x5   3      OPC=movq_r64_r64_1  
.L_b:                           #        0x8   0      OPC=<label>         
  addl $0x4, %esi               #  5     0x8   3      OPC=addl_r32_imm8   
  movl -0x4(%r15,%rsi,1), %edx  #  6     0xb   5      OPC=movl_r32_m32    
  leaq 0x4(%rax), %rcx          #  7     0x10  4      OPC=leaq_r64_m32    
  testl %edx, %edx              #  8     0x14  2      OPC=testl_r32_r32   
  leal -0x4(%rcx), %r8d         #  9     0x16  4      OPC=leal_r32_m64    
  movl %edx, (%r15,%r8,1)       #  10    0x1a  4      OPC=movl_m32_r32    
  jne .L_8                      #  11    0x1e  2      OPC=jne_label       
  retq                          #  12    0x20  1      OPC=retq            
                                                                          
.size wcpcpy, .-wcpcpy
