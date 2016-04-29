  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x4a0
#! rip-offset  0x4004a0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.deregister_tm_clones:  #        0x4004a0  0      OPC=<label>         
  movl $0x601047, %eax  #  1     0x4004a0  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x4004a5  1      OPC=pushq_r64_1     
  subq $0x601040, %rax  #  3     0x4004a6  6      OPC=subq_rax_imm32  
  cmpq $0xe, %rax       #  4     0x4004ac  4      OPC=cmpq_r64_imm8   
  movq %rsp, %rbp       #  5     0x4004b0  3      OPC=movq_r64_r64    
  jbe .L_4004d0         #  6     0x4004b3  2      OPC=jbe_label       
  movl $0x0, %eax       #  7     0x4004b5  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  8     0x4004ba  3      OPC=testq_r64_r64   
  je .L_4004d0          #  9     0x4004bd  2      OPC=je_label        
  popq %rbp             #  10    0x4004bf  1      OPC=popq_r64_1      
  movl $0x601040, %edi  #  11    0x4004c0  5      OPC=movl_r32_imm32  
  jmpq %rax             #  12    0x4004c5  2      OPC=jmpq_r64        
  nop                   #  13    0x4004c7  1      OPC=nop             
  nop                   #  14    0x4004c8  1      OPC=nop             
  nop                   #  15    0x4004c9  1      OPC=nop             
  nop                   #  16    0x4004ca  1      OPC=nop             
  nop                   #  17    0x4004cb  1      OPC=nop             
  nop                   #  18    0x4004cc  1      OPC=nop             
  nop                   #  19    0x4004cd  1      OPC=nop             
  nop                   #  20    0x4004ce  1      OPC=nop             
  nop                   #  21    0x4004cf  1      OPC=nop             
.L_4004d0:              #        0x4004d0  0      OPC=<label>         
  popq %rbp             #  22    0x4004d0  1      OPC=popq_r64_1      
  retq                  #  23    0x4004d1  1      OPC=retq            
  nop                   #  24    0x4004d2  1      OPC=nop             
  nop                   #  25    0x4004d3  1      OPC=nop             
  nop                   #  26    0x4004d4  1      OPC=nop             
  nop                   #  27    0x4004d5  1      OPC=nop             
  nop                   #  28    0x4004d6  1      OPC=nop             
  nop                   #  29    0x4004d7  1      OPC=nop             
  nop                   #  30    0x4004d8  1      OPC=nop             
  nop                   #  31    0x4004d9  1      OPC=nop             
  nop                   #  32    0x4004da  1      OPC=nop             
  nop                   #  33    0x4004db  1      OPC=nop             
  nop                   #  34    0x4004dc  1      OPC=nop             
  nop                   #  35    0x4004dd  1      OPC=nop             
  nop                   #  36    0x4004de  1      OPC=nop             
  nop                   #  37    0x4004df  1      OPC=nop             
                                                                      
.size deregister_tm_clones, .-deregister_tm_clones

