  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    37 bytes

# Text                      #  Line  RIP   Bytes  Opcode             
.wcslen:                    #        0     0      OPC=<label>        
  movq %rdi, %rax           #  1     0     3      OPC=movq_r64_r64   
  leal (%rdi), %ecx         #  2     0x3   2      OPC=leal_r32_m16   
  movl (%r15,%rcx,1), %ecx  #  3     0x5   4      OPC=movl_r32_m32   
  testl %ecx, %ecx          #  4     0x9   2      OPC=testl_r32_r32  
  je .L_22                  #  5     0xb   2      OPC=je_label       
.L_10:                      #        0xd   0      OPC=<label>        
  addq $0x4, %rax           #  6     0xd   4      OPC=addq_r64_imm8  
  leal (%rax), %edx         #  7     0x11  2      OPC=leal_r32_m64   
  movl (%r15,%rdx,1), %edx  #  8     0x13  4      OPC=movl_r32_m32   
  testl %edx, %edx          #  9     0x17  2      OPC=testl_r32_r32  
  jne .L_10                 #  10    0x19  2      OPC=jne_label      
  subq %rdi, %rax           #  11    0x1b  3      OPC=subq_r64_r64   
  nop                       #  12    0x1e  1      OPC=nop            
  nop                       #  13    0x1f  1      OPC=nop            
  nop                       #  14    0x20  1      OPC=nop            
  nop                       #  15    0x21  1      OPC=nop            
  sarq $0x2, %rax           #  16    0x22  4      OPC=sarq_r64_imm8  
  retq                      #  17    0x26  1      OPC=retq           
  nop                       #  18    0x27  1      OPC=nop            
.L_22:                      #        0x28  0      OPC=<label>        
  nop                       #  19    0x28  1      OPC=nop            
  nop                       #  20    0x29  1      OPC=nop            
  nop                       #  21    0x2a  1      OPC=nop            
  nop                       #  22    0x2b  1      OPC=nop            
  nop                       #  23    0x2c  1      OPC=nop            
  xorl %eax, %eax           #  24    0x2d  2      OPC=xorl_r32_r32   
  nop                       #  25    0x2f  1      OPC=nop            
  nop                       #  26    0x30  1      OPC=nop            
  nop                       #  27    0x31  1      OPC=nop            
  nop                       #  28    0x32  1      OPC=nop            
  nop                       #  29    0x33  1      OPC=nop            
  nop                       #  30    0x34  1      OPC=nop            
  nop                       #  31    0x35  1      OPC=nop            
  nop                       #  32    0x36  1      OPC=nop            
  nop                       #  33    0x37  1      OPC=nop            
  retq                      #  34    0x38  1      OPC=retq           
                                                                     
.size wcslen, .-wcslen
