  .text
  .globl random_pointer
  .type random_pointer, @function

#! file-offset 0xc0
#! rip-offset  0x80
#! capacity    28 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.random_pointer:     #        0x80  0      OPC=<label>         
  pushq %rbx         #  1     0x80  1      OPC=pushq_r64_1     
  callq .L_86        #  2     0x81  5      OPC=callq_label     
.L_86:               #        0x86  0      OPC=<label>         
  movl %eax, %ebx    #  3     0x86  2      OPC=movl_r32_r32    
  callq .L_8d        #  4     0x88  5      OPC=callq_label     
.L_8d:               #        0x8d  0      OPC=<label>         
  movslq %eax, %rdx  #  5     0x8d  3      OPC=movslq_r64_r32  
  movq %rbx, %rax    #  6     0x90  3      OPC=movq_r64_r64    
  shlq $0x20, %rax   #  7     0x93  4      OPC=shlq_r64_imm8   
  orq %rdx, %rax     #  8     0x97  3      OPC=orq_r64_r64     
  popq %rbx          #  9     0x9a  1      OPC=popq_r64_1      
  retq               #  10    0x9b  1      OPC=retq            
                                                               
.size random_pointer, .-random_pointer

