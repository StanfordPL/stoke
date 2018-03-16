  .text
  .globl random_pointer
  .type random_pointer, @function

#! file-offset 0xd0
#! rip-offset  0x90
#! capacity    28 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.random_pointer:     #        0x90  0      OPC=<label>         
  pushq %rbx         #  1     0x90  1      OPC=pushq_r64_1     
  callq .L_96        #  2     0x91  5      OPC=callq_label     
.L_96:               #        0x96  0      OPC=<label>         
  movl %eax, %ebx    #  3     0x96  2      OPC=movl_r32_r32    
  callq .L_9d        #  4     0x98  5      OPC=callq_label     
.L_9d:               #        0x9d  0      OPC=<label>         
  movslq %eax, %rdx  #  5     0x9d  3      OPC=movslq_r64_r32  
  movq %rbx, %rax    #  6     0xa0  3      OPC=movq_r64_r64    
  shlq $0x20, %rax   #  7     0xa3  4      OPC=shlq_r64_imm8   
  orq %rdx, %rax     #  8     0xa7  3      OPC=orq_r64_r64     
  popq %rbx          #  9     0xaa  1      OPC=popq_r64_1      
  retq               #  10    0xab  1      OPC=retq            
                                                               
.size random_pointer, .-random_pointer

