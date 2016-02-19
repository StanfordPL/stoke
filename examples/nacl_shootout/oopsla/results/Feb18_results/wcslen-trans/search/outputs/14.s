  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    37 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wcslen:                    #        0     0      OPC=<label>         
  nop                       #  1     0     1      OPC=nop             
  nop                       #  2     0x1   1      OPC=nop             
  xorl %eax, %eax           #  3     0x2   2      OPC=xorl_r32_r32    
  leal (%rdi), %ecx         #  4     0x4   2      OPC=leal_r32_m16    
  movl (%r15,%rcx,1), %ecx  #  5     0x6   4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  6     0xa   2      OPC=testl_r32_r32   
  je .L_22                  #  7     0xc   2      OPC=je_label        
  movq %rdi, %rax           #  8     0xe   3      OPC=movq_r64_r64_1  
.L_10:                      #        0x11  0      OPC=<label>         
  addq $0x4, %rax           #  9     0x11  4      OPC=addq_r64_imm8   
  leal (%rax), %edx         #  10    0x15  2      OPC=leal_r32_m16    
  movl (%r15,%rdx,1), %edx  #  11    0x17  4      OPC=movl_r32_m32    
  testl %edi, %edx          #  12    0x1b  2      OPC=testl_r32_r32   
  jne .L_10                 #  13    0x1d  2      OPC=jne_label       
  nop                       #  14    0x1f  1      OPC=nop             
  subq %rdi, %rax           #  15    0x20  3      OPC=subq_r64_r64    
  shrq $0x2, %rax           #  16    0x23  4      OPC=shrq_r64_imm8   
  retq                      #  17    0x27  1      OPC=retq            
.L_22:                      #        0x28  0      OPC=<label>         
  retq                      #  18    0x28  1      OPC=retq            
                                                                      
.size wcslen, .-wcslen
