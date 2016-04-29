  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x540
#! rip-offset  0x400540
#! capacity    38 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.frame_dummy:               #        0x400540  0      OPC=<label>         
  movl $0x600e20, %edi      #  1     0x400540  5      OPC=movl_r32_imm32  
  cmpq $0x0, (%rdi)         #  2     0x400545  4      OPC=cmpq_m64_imm8   
  jne .L_400550             #  3     0x400549  2      OPC=jne_label       
.L_40054b:                  #        0x40054b  0      OPC=<label>         
  jmpq .register_tm_clones  #  4     0x40054b  2      OPC=jmpq_label      
  nop                       #  5     0x40054d  1      OPC=nop             
  nop                       #  6     0x40054e  1      OPC=nop             
  nop                       #  7     0x40054f  1      OPC=nop             
.L_400550:                  #        0x400550  0      OPC=<label>         
  movl $0x0, %eax           #  8     0x400550  5      OPC=movl_r32_imm32  
  testq %rax, %rax          #  9     0x400555  3      OPC=testq_r64_r64   
  je .L_40054b              #  10    0x400558  2      OPC=je_label        
  pushq %rbp                #  11    0x40055a  1      OPC=pushq_r64_1     
  movq %rsp, %rbp           #  12    0x40055b  3      OPC=movq_r64_r64    
  callq %rax                #  13    0x40055e  2      OPC=callq_r64       
  popq %rbp                 #  14    0x400560  1      OPC=popq_r64_1      
  jmpq .register_tm_clones  #  15    0x400561  5      OPC=jmpq_label_1    
                                                                          
.size frame_dummy, .-frame_dummy

