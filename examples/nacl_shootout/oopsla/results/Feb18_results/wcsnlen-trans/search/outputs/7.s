  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    43 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wcsnlen:                  #        0     0      OPC=<label>         
  movq %rdi, %rax          #  1     0     3      OPC=movq_r64_r64    
  testl %esi, %esi         #  2     0x3   2      OPC=testl_r32_r32   
  je .L_28                 #  3     0x5   2      OPC=je_label        
  nop                      #  4     0x7   1      OPC=nop             
  nop                      #  5     0x8   1      OPC=nop             
  nop                      #  6     0x9   1      OPC=nop             
  nop                      #  7     0xa   1      OPC=nop             
  jmpq .L_16               #  8     0xb   2      OPC=jmpq_label      
.L_10:                     #        0xd   0      OPC=<label>         
  addq $0x4, %rax          #  9     0xd   4      OPC=addq_r64_imm8   
  subl $0x1, %esi          #  10    0x11  6      OPC=subl_r32_imm32  
  je .L_20                 #  11    0x17  2      OPC=je_label        
.L_16:                     #        0x19  0      OPC=<label>         
  leal (%rax), %r8d        #  12    0x19  3      OPC=leal_r32_m32    
  movl (%r15,%r8,1), %edx  #  13    0x1c  4      OPC=movl_r32_m32    
  testl %edx, %edx         #  14    0x20  2      OPC=testl_r32_r32   
  jne .L_10                #  15    0x22  2      OPC=jne_label       
.L_20:                     #        0x24  0      OPC=<label>         
  subq %rdi, %rax          #  16    0x24  3      OPC=subq_r64_r64    
  nop                      #  17    0x27  1      OPC=nop             
  nop                      #  18    0x28  1      OPC=nop             
  nop                      #  19    0x29  1      OPC=nop             
  nop                      #  20    0x2a  1      OPC=nop             
  shrl $0x2, %eax          #  21    0x2b  3      OPC=shrl_r32_imm8   
  nop                      #  22    0x2e  1      OPC=nop             
  retq                     #  23    0x2f  1      OPC=retq            
  nop                      #  24    0x30  1      OPC=nop             
  nop                      #  25    0x31  1      OPC=nop             
  nop                      #  26    0x32  1      OPC=nop             
  nop                      #  27    0x33  1      OPC=nop             
  nop                      #  28    0x34  1      OPC=nop             
  nop                      #  29    0x35  1      OPC=nop             
.L_28:                     #        0x36  0      OPC=<label>         
  subq %rax, %rax          #  30    0x36  3      OPC=subq_r64_r64_1  
  nop                      #  31    0x39  1      OPC=nop             
  nop                      #  32    0x3a  1      OPC=nop             
  nop                      #  33    0x3b  1      OPC=nop             
  nop                      #  34    0x3c  1      OPC=nop             
  nop                      #  35    0x3d  1      OPC=nop             
  nopl %eax                #  36    0x3e  3      OPC=nopl_r32        
  nop                      #  37    0x41  1      OPC=nop             
  nop                      #  38    0x42  1      OPC=nop             
  nop                      #  39    0x43  1      OPC=nop             
  retq                     #  40    0x44  1      OPC=retq            
                                                                     
.size wcsnlen, .-wcsnlen
