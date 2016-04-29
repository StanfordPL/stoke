  .text
  .globl register_tm_clones
  .type register_tm_clones, @function

#! file-offset 0x4e0
#! rip-offset  0x4004e0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.register_tm_clones:    #        0x4004e0  0      OPC=<label>         
  movl $0x601040, %esi  #  1     0x4004e0  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x4004e5  1      OPC=pushq_r64_1     
  subq $0x601040, %rsi  #  3     0x4004e6  7      OPC=subq_r64_imm32  
  sarq $0x3, %rsi       #  4     0x4004ed  4      OPC=sarq_r64_imm8   
  movq %rsp, %rbp       #  5     0x4004f1  3      OPC=movq_r64_r64    
  movq %rsi, %rax       #  6     0x4004f4  3      OPC=movq_r64_r64    
  shrq $0x3f, %rax      #  7     0x4004f7  4      OPC=shrq_r64_imm8   
  addq %rax, %rsi       #  8     0x4004fb  3      OPC=addq_r64_r64    
  sarq $0x1, %rsi       #  9     0x4004fe  3      OPC=sarq_r64_one    
  je .L_400518          #  10    0x400501  2      OPC=je_label        
  movl $0x0, %eax       #  11    0x400503  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  12    0x400508  3      OPC=testq_r64_r64   
  je .L_400518          #  13    0x40050b  2      OPC=je_label        
  popq %rbp             #  14    0x40050d  1      OPC=popq_r64_1      
  movl $0x601040, %edi  #  15    0x40050e  5      OPC=movl_r32_imm32  
  jmpq %rax             #  16    0x400513  2      OPC=jmpq_r64        
  nop                   #  17    0x400515  1      OPC=nop             
  nop                   #  18    0x400516  1      OPC=nop             
  nop                   #  19    0x400517  1      OPC=nop             
.L_400518:              #        0x400518  0      OPC=<label>         
  popq %rbp             #  20    0x400518  1      OPC=popq_r64_1      
  retq                  #  21    0x400519  1      OPC=retq            
  nop                   #  22    0x40051a  1      OPC=nop             
  nop                   #  23    0x40051b  1      OPC=nop             
  nop                   #  24    0x40051c  1      OPC=nop             
  nop                   #  25    0x40051d  1      OPC=nop             
  nop                   #  26    0x40051e  1      OPC=nop             
  nop                   #  27    0x40051f  1      OPC=nop             
                                                                      
.size register_tm_clones, .-register_tm_clones

