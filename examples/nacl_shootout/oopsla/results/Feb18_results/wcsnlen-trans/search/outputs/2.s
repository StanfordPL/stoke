  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    43 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wcsnlen:                  #        0     0      OPC=<label>         
  testl %esi, %esi         #  1     0     2      OPC=testl_r32_r32   
  je .L_28                 #  2     0x2   2      OPC=je_label        
  nop                      #  3     0x4   1      OPC=nop             
  nop                      #  4     0x5   1      OPC=nop             
  movq %rdi, %rax          #  5     0x6   3      OPC=movq_r64_r64    
  jmpq .L_16               #  6     0x9   2      OPC=jmpq_label      
  nop                      #  7     0xb   1      OPC=nop             
.L_10:                     #        0xc   0      OPC=<label>         
  addl $0x4, %eax          #  8     0xc   5      OPC=addl_eax_imm32  
  subq $0x1, %rsi          #  9     0x11  4      OPC=subq_r64_imm8   
  je .L_20                 #  10    0x15  2      OPC=je_label        
.L_16:                     #        0x17  0      OPC=<label>         
  leal (%rax), %r8d        #  11    0x17  3      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %edx  #  12    0x1a  4      OPC=movl_r32_m32    
  testl %edx, %edx         #  13    0x1e  2      OPC=testl_r32_r32   
  jne .L_10                #  14    0x20  2      OPC=jne_label       
  nop                      #  15    0x22  1      OPC=nop             
  nop                      #  16    0x23  1      OPC=nop             
  nopl %eax                #  17    0x24  3      OPC=nopl_r32        
.L_20:                     #        0x27  0      OPC=<label>         
  nop                      #  18    0x27  1      OPC=nop             
  subq %rdi, %rax          #  19    0x28  3      OPC=subq_r64_r64_1  
  nop                      #  20    0x2b  1      OPC=nop             
  nop                      #  21    0x2c  1      OPC=nop             
  nop                      #  22    0x2d  1      OPC=nop             
  nop                      #  23    0x2e  1      OPC=nop             
  sarl $0x2, %eax          #  24    0x2f  3      OPC=sarl_r32_imm8   
  retq                     #  25    0x32  1      OPC=retq            
  nop                      #  26    0x33  1      OPC=nop             
  nop                      #  27    0x34  1      OPC=nop             
.L_28:                     #        0x35  0      OPC=<label>         
  nop                      #  28    0x35  1      OPC=nop             
  nop                      #  29    0x36  1      OPC=nop             
  nop                      #  30    0x37  1      OPC=nop             
  nop                      #  31    0x38  1      OPC=nop             
  nop                      #  32    0x39  1      OPC=nop             
  xorl %eax, %eax          #  33    0x3a  2      OPC=xorl_r32_r32    
  nop                      #  34    0x3c  1      OPC=nop             
  nop                      #  35    0x3d  1      OPC=nop             
  retq                     #  36    0x3e  1      OPC=retq            
                                                                     
.size wcsnlen, .-wcsnlen
