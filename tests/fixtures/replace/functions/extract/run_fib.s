  .text
  .globl run_fib
  .type run_fib, @function

#! file-offset 0x587
#! rip-offset  0x400587
#! capacity    56 bytes

# Text                   #  Line  RIP       Bytes  Opcode              
.run_fib:                #        0x400587  0      OPC=<label>         
  pushq %rbp             #  1     0x400587  1      OPC=pushq_r64_1     
  pushq %rbx             #  2     0x400588  1      OPC=pushq_r64_1     
  subq $0x8, %rsp        #  3     0x400589  4      OPC=subq_r64_imm8   
  movl %edi, %ebp        #  4     0x40058d  2      OPC=movl_r32_r32    
  movl $0x1, %ebx        #  5     0x40058f  5      OPC=movl_r32_imm32  
  cmpl $0x1, %edi        #  6     0x400594  3      OPC=cmpl_r32_imm8   
  jbe .L_4005ad          #  7     0x400597  2      OPC=jbe_label       
  leal -0x2(%rdi), %edi  #  8     0x400599  3      OPC=leal_r32_m16    
  callq .run_fib         #  9     0x40059c  5      OPC=callq_label     
  movl %eax, %ebx        #  10    0x4005a1  2      OPC=movl_r32_r32    
  leal -0x1(%rbp), %edi  #  11    0x4005a3  3      OPC=leal_r32_m16    
  callq .run_fib         #  12    0x4005a6  5      OPC=callq_label     
  addl %eax, %ebx        #  13    0x4005ab  2      OPC=addl_r32_r32    
.L_4005ad:               #        0x4005ad  0      OPC=<label>         
  movl %ebx, %esi        #  14    0x4005ad  2      OPC=movl_r32_r32    
  movl %ebp, %edi        #  15    0x4005af  2      OPC=movl_r32_r32    
  callq .print           #  16    0x4005b1  5      OPC=callq_label     
  movl %ebx, %eax        #  17    0x4005b6  2      OPC=movl_r32_r32    
  addq $0x8, %rsp        #  18    0x4005b8  4      OPC=addq_r64_imm8   
  popq %rbx              #  19    0x4005bc  1      OPC=popq_r64_1      
  popq %rbp              #  20    0x4005bd  1      OPC=popq_r64_1      
  retq                   #  21    0x4005be  1      OPC=retq            
                                                                       
.size run_fib, .-run_fib

