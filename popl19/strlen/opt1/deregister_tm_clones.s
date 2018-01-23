  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x430
#! rip-offset  0x400430
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.deregister_tm_clones:  #        0x400430  0      OPC=<label>         
  movl $0x60103f, %eax  #  1     0x400430  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x400435  1      OPC=pushq_r64_1     
  subq $0x601038, %rax  #  3     0x400436  6      OPC=subq_rax_imm32  
  cmpq $0xe, %rax       #  4     0x40043c  4      OPC=cmpq_r64_imm8   
  movq %rsp, %rbp       #  5     0x400440  3      OPC=movq_r64_r64    
  jbe .L_400460         #  6     0x400443  2      OPC=jbe_label       
  movl $0x0, %eax       #  7     0x400445  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  8     0x40044a  3      OPC=testq_r64_r64   
  je .L_400460          #  9     0x40044d  2      OPC=je_label        
  popq %rbp             #  10    0x40044f  1      OPC=popq_r64_1      
  movl $0x601038, %edi  #  11    0x400450  5      OPC=movl_r32_imm32  
  jmpq %rax             #  12    0x400455  2      OPC=jmpq_r64        
  nop                   #  13    0x400457  1      OPC=nop             
  nop                   #  14    0x400458  1      OPC=nop             
  nop                   #  15    0x400459  1      OPC=nop             
  nop                   #  16    0x40045a  1      OPC=nop             
  nop                   #  17    0x40045b  1      OPC=nop             
  nop                   #  18    0x40045c  1      OPC=nop             
  nop                   #  19    0x40045d  1      OPC=nop             
  nop                   #  20    0x40045e  1      OPC=nop             
  nop                   #  21    0x40045f  1      OPC=nop             
.L_400460:              #        0x400460  0      OPC=<label>         
  popq %rbp             #  22    0x400460  1      OPC=popq_r64_1      
  retq                  #  23    0x400461  1      OPC=retq            
  nop                   #  24    0x400462  1      OPC=nop             
  nop                   #  25    0x400463  1      OPC=nop             
  nop                   #  26    0x400464  1      OPC=nop             
  nop                   #  27    0x400465  1      OPC=nop             
  nop                   #  28    0x400466  1      OPC=nop             
  nop                   #  29    0x400467  1      OPC=nop             
  nop                   #  30    0x400468  1      OPC=nop             
  nop                   #  31    0x400469  1      OPC=nop             
  nop                   #  32    0x40046a  1      OPC=nop             
  nop                   #  33    0x40046b  1      OPC=nop             
  nop                   #  34    0x40046c  1      OPC=nop             
  nop                   #  35    0x40046d  1      OPC=nop             
  nop                   #  36    0x40046e  1      OPC=nop             
  nop                   #  37    0x40046f  1      OPC=nop             
                                                                      
.size deregister_tm_clones, .-deregister_tm_clones

