  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    43 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wcsnlen:                  #        0     0      OPC=<label>         
  testl %esi, %esi         #  1     0     2      OPC=testl_r32_r32   
  movq %rdi, %rax          #  2     0x2   3      OPC=movq_r64_r64    
  je .L_28                 #  3     0x5   2      OPC=je_label        
  jmpq .L_16               #  4     0x7   2      OPC=jmpq_label      
.L_10:                     #        0x9   0      OPC=<label>         
  addl $0x4, %eax          #  5     0x9   6      OPC=addl_r32_imm32  
  subl $0x1, %esi          #  6     0xf   6      OPC=subl_r32_imm32  
  je .L_20                 #  7     0x15  2      OPC=je_label        
.L_16:                     #        0x17  0      OPC=<label>         
  leal (%rax), %r8d        #  8     0x17  3      OPC=leal_r32_m64    
  movl (%r15,%r8,1), %edx  #  9     0x1a  4      OPC=movl_r32_m32    
  testl %edx, %edx         #  10    0x1e  2      OPC=testl_r32_r32   
  jne .L_10                #  11    0x20  2      OPC=jne_label       
  nop                      #  12    0x22  1      OPC=nop             
  nop                      #  13    0x23  1      OPC=nop             
  nop                      #  14    0x24  1      OPC=nop             
  nopl %eax                #  15    0x25  3      OPC=nopl_r32        
.L_20:                     #        0x28  0      OPC=<label>         
  subq %rdi, %rax          #  16    0x28  3      OPC=subq_r64_r64    
  shrl $0x2, %eax          #  17    0x2b  3      OPC=shrl_r32_imm8   
  nop                      #  18    0x2e  1      OPC=nop             
  nop                      #  19    0x2f  1      OPC=nop             
  retq                     #  20    0x30  1      OPC=retq            
  nop                      #  21    0x31  1      OPC=nop             
  nop                      #  22    0x32  1      OPC=nop             
  nop                      #  23    0x33  1      OPC=nop             
  nop                      #  24    0x34  1      OPC=nop             
.L_28:                     #        0x35  0      OPC=<label>         
  nop                      #  25    0x35  1      OPC=nop             
  andl %esi, %eax          #  26    0x36  2      OPC=andl_r32_r32_1  
  nop                      #  27    0x38  1      OPC=nop             
  nop                      #  28    0x39  1      OPC=nop             
  nop                      #  29    0x3a  1      OPC=nop             
  nop                      #  30    0x3b  1      OPC=nop             
  nop                      #  31    0x3c  1      OPC=nop             
  nop                      #  32    0x3d  1      OPC=nop             
  retq                     #  33    0x3e  1      OPC=retq            
                                                                     
.size wcsnlen, .-wcsnlen
