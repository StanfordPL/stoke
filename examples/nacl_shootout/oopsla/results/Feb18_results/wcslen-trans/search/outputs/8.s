  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    37 bytes

# Text                      #  Line  RIP   Bytes  Opcode             
.wcslen:                    #        0     0      OPC=<label>        
  leal (%rdi), %ecx         #  1     0     2      OPC=leal_r32_m64   
  movl (%r15,%rcx,1), %ecx  #  2     0x2   4      OPC=movl_r32_m32   
  testl %ecx, %ecx          #  3     0x6   2      OPC=testl_r32_r32  
  je .L_22                  #  4     0x8   2      OPC=je_label       
  nop                       #  5     0xa   1      OPC=nop            
  nop                       #  6     0xb   1      OPC=nop            
  movq %rdi, %rax           #  7     0xc   3      OPC=movq_r64_r64   
.L_10:                      #        0xf   0      OPC=<label>        
  addq $0x4, %rax           #  8     0xf   4      OPC=addq_r64_imm8  
  leal (%rax), %edx         #  9     0x13  2      OPC=leal_r32_m32   
  movl (%r15,%rdx,1), %edx  #  10    0x15  4      OPC=movl_r32_m32   
  testl %edx, %edx          #  11    0x19  2      OPC=testl_r32_r32  
  jne .L_10                 #  12    0x1b  2      OPC=jne_label      
  subq %rdi, %rax           #  13    0x1d  3      OPC=subq_r64_r64   
  sarq $0x2, %rax           #  14    0x20  4      OPC=sarq_r64_imm8  
  retq                      #  15    0x24  1      OPC=retq           
.L_22:                      #        0x25  0      OPC=<label>        
  xorl %eax, %eax           #  16    0x25  2      OPC=xorl_r32_r32   
  retq                      #  17    0x27  1      OPC=retq           
                                                                     
.size wcslen, .-wcslen
