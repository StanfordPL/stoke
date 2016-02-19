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
  nop                       #  5     0xb   1      OPC=nop            
  nop                       #  6     0xc   1      OPC=nop            
  je .L_22                  #  7     0xd   2      OPC=je_label       
  nop                       #  8     0xf   1      OPC=nop            
  nop                       #  9     0x10  1      OPC=nop            
.L_10:                      #        0x11  0      OPC=<label>        
  addq $0x4, %rax           #  10    0x11  4      OPC=addq_r64_imm8  
  leal (%rax), %edx         #  11    0x15  2      OPC=leal_r32_m64   
  movl (%r15,%rdx,1), %edx  #  12    0x17  4      OPC=movl_r32_m32   
  testl %edx, %edx          #  13    0x1b  2      OPC=testl_r32_r32  
  jne .L_10                 #  14    0x1d  2      OPC=jne_label      
  nop                       #  15    0x1f  1      OPC=nop            
  nop                       #  16    0x20  1      OPC=nop            
  nop                       #  17    0x21  1      OPC=nop            
  nop                       #  18    0x22  1      OPC=nop            
  nop                       #  19    0x23  1      OPC=nop            
  subq %rdi, %rax           #  20    0x24  3      OPC=subq_r64_r64   
  sarq $0x2, %rax           #  21    0x27  4      OPC=sarq_r64_imm8  
  retq                      #  22    0x2b  1      OPC=retq           
  nop                       #  23    0x2c  1      OPC=nop            
.L_22:                      #        0x2d  0      OPC=<label>        
  nopl %eax                 #  24    0x2d  3      OPC=nopl_r32       
  nop                       #  25    0x30  1      OPC=nop            
  xorl %eax, %eax           #  26    0x31  2      OPC=xorl_r32_r32   
  nop                       #  27    0x33  1      OPC=nop            
  nop                       #  28    0x34  1      OPC=nop            
  nop                       #  29    0x35  1      OPC=nop            
  nop                       #  30    0x36  1      OPC=nop            
  nop                       #  31    0x37  1      OPC=nop            
  retq                      #  32    0x38  1      OPC=retq           
                                                                     
.size wcslen, .-wcslen
