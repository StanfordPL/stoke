  .text
  .globl tp_add_job
  .type tp_add_job, @function

#! file-offset 0x430b
#! rip-offset  0x40430b
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.tp_add_job:            #        0x40430b  0      OPC=0     
  movl 0xc(%rdi), %ecx  #  1     0x40430b  3      OPC=1156  
  cmpl 0x8(%rdi), %ecx  #  2     0x40430e  3      OPC=471   
  jge .L_40432a         #  3     0x404311  6      OPC=907   
  nop                   #  4     0x404317  1      OPC=1343  
  nop                   #  5     0x404318  1      OPC=1343  
  movslq %ecx, %rax     #  6     0x404319  3      OPC=1289  
  shlq $0x4, %rax       #  7     0x40431c  4      OPC=2272  
  addq (%rdi), %rax     #  8     0x404320  3      OPC=71    
  movq %rsi, (%rax)     #  9     0x404323  3      OPC=1138  
  movq %rdx, 0x8(%rax)  #  10    0x404326  4      OPC=1138  
  addl $0x1, %ecx       #  11    0x40432a  3      OPC=65    
  movl %ecx, 0xc(%rdi)  #  12    0x40432d  3      OPC=1136  
.L_40432a:              #        0x404330  0      OPC=0     
  retq                  #  13    0x404330  1      OPC=1978  
                                                            
.size tp_add_job, .-tp_add_job

