  .text
  .globl main
  .type main, @function

#! file-offset 0x5bf
#! rip-offset  0x4005bf
#! capacity    33 bytes

# Text             #  Line  RIP       Bytes  Opcode              
.main:             #        0x4005bf  0      OPC=<label>         
  pushq %rbx       #  1     0x4005bf  1      OPC=pushq_r64_1     
  movl $0x0, %ebx  #  2     0x4005c0  5      OPC=movl_r32_imm32  
.L_4005c5:         #        0x4005c5  0      OPC=<label>         
  movl %ebx, %edi  #  3     0x4005c5  2      OPC=movl_r32_r32    
  callq .run_fib   #  4     0x4005c7  5      OPC=callq_label     
  addq $0x1, %rbx  #  5     0x4005cc  4      OPC=addq_r64_imm8   
  cmpq $0xa, %rbx  #  6     0x4005d0  4      OPC=cmpq_r64_imm8   
  jne .L_4005c5    #  7     0x4005d4  2      OPC=jne_label       
  movl $0x0, %eax  #  8     0x4005d6  5      OPC=movl_r32_imm32  
  popq %rbx        #  9     0x4005db  1      OPC=popq_r64_1      
  retq             #  10    0x4005dc  1      OPC=retq            
  nop              #  11    0x4005dd  1      OPC=nop             
  nop              #  12    0x4005de  1      OPC=nop             
  nop              #  13    0x4005df  1      OPC=nop             
                                                                 
.size main, .-main

