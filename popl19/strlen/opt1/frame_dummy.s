  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x4d0
#! rip-offset  0x4004d0
#! capacity    38 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.frame_dummy:               #        0x4004d0  0      OPC=<label>         
  movl $0x600e20, %edi      #  1     0x4004d0  5      OPC=movl_r32_imm32  
  cmpq $0x0, (%rdi)         #  2     0x4004d5  4      OPC=cmpq_m64_imm8   
  jne .L_4004e0             #  3     0x4004d9  2      OPC=jne_label       
.L_4004db:                  #        0x4004db  0      OPC=<label>         
  jmpq .register_tm_clones  #  4     0x4004db  2      OPC=jmpq_label      
  nop                       #  5     0x4004dd  1      OPC=nop             
  nop                       #  6     0x4004de  1      OPC=nop             
  nop                       #  7     0x4004df  1      OPC=nop             
.L_4004e0:                  #        0x4004e0  0      OPC=<label>         
  movl $0x0, %eax           #  8     0x4004e0  5      OPC=movl_r32_imm32  
  testq %rax, %rax          #  9     0x4004e5  3      OPC=testq_r64_r64   
  je .L_4004db              #  10    0x4004e8  2      OPC=je_label        
  pushq %rbp                #  11    0x4004ea  1      OPC=pushq_r64_1     
  movq %rsp, %rbp           #  12    0x4004eb  3      OPC=movq_r64_r64    
  callq %rax                #  13    0x4004ee  2      OPC=callq_r64       
  popq %rbp                 #  14    0x4004f0  1      OPC=popq_r64_1      
  jmpq .register_tm_clones  #  15    0x4004f1  5      OPC=jmpq_label_1    
                                                                          
.size frame_dummy, .-frame_dummy

