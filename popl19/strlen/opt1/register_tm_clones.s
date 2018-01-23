  .text
  .globl register_tm_clones
  .type register_tm_clones, @function

#! file-offset 0x470
#! rip-offset  0x400470
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.register_tm_clones:    #        0x400470  0      OPC=<label>         
  movl $0x601038, %esi  #  1     0x400470  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x400475  1      OPC=pushq_r64_1     
  subq $0x601038, %rsi  #  3     0x400476  7      OPC=subq_r64_imm32  
  sarq $0x3, %rsi       #  4     0x40047d  4      OPC=sarq_r64_imm8   
  movq %rsp, %rbp       #  5     0x400481  3      OPC=movq_r64_r64    
  movq %rsi, %rax       #  6     0x400484  3      OPC=movq_r64_r64    
  shrq $0x3f, %rax      #  7     0x400487  4      OPC=shrq_r64_imm8   
  addq %rax, %rsi       #  8     0x40048b  3      OPC=addq_r64_r64    
  sarq $0x1, %rsi       #  9     0x40048e  3      OPC=sarq_r64_one    
  je .L_4004a8          #  10    0x400491  2      OPC=je_label        
  movl $0x0, %eax       #  11    0x400493  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  12    0x400498  3      OPC=testq_r64_r64   
  je .L_4004a8          #  13    0x40049b  2      OPC=je_label        
  popq %rbp             #  14    0x40049d  1      OPC=popq_r64_1      
  movl $0x601038, %edi  #  15    0x40049e  5      OPC=movl_r32_imm32  
  jmpq %rax             #  16    0x4004a3  2      OPC=jmpq_r64        
  nop                   #  17    0x4004a5  1      OPC=nop             
  nop                   #  18    0x4004a6  1      OPC=nop             
  nop                   #  19    0x4004a7  1      OPC=nop             
.L_4004a8:              #        0x4004a8  0      OPC=<label>         
  popq %rbp             #  20    0x4004a8  1      OPC=popq_r64_1      
  retq                  #  21    0x4004a9  1      OPC=retq            
  nop                   #  22    0x4004aa  1      OPC=nop             
  nop                   #  23    0x4004ab  1      OPC=nop             
  nop                   #  24    0x4004ac  1      OPC=nop             
  nop                   #  25    0x4004ad  1      OPC=nop             
  nop                   #  26    0x4004ae  1      OPC=nop             
  nop                   #  27    0x4004af  1      OPC=nop             
                                                                      
.size register_tm_clones, .-register_tm_clones

