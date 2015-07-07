  .text
  .globl List_At
  .type List_At, @function

#! file-offset 0x59ae
#! rip-offset  0x4059ae
#! capacity    50 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.List_At:                   #        0x4059ae  0      OPC=0     
  subq $0x8, %rsp           #  1     0x4059ae  4      OPC=2389  
  testl %esi, %esi          #  2     0x4059b2  2      OPC=2436  
  js .L_4059d6              #  3     0x4059b4  6      OPC=1043  
  nop                       #  4     0x4059ba  1      OPC=1343  
  nop                       #  5     0x4059bb  1      OPC=1343  
  movl 0xc(%rdi), %edx      #  6     0x4059bc  3      OPC=1156  
  movl 0x10(%rdi), %eax     #  7     0x4059bf  3      OPC=1156  
  subl %edx, %eax           #  8     0x4059c2  2      OPC=2386  
  addl $0x1, %eax           #  9     0x4059c4  3      OPC=65    
  cmpl %eax, %esi           #  10    0x4059c7  2      OPC=472   
  jg .L_4059d6              #  11    0x4059c9  6      OPC=901   
  nop                       #  12    0x4059cf  1      OPC=1343  
  nop                       #  13    0x4059d0  1      OPC=1343  
  addl %esi, %edx           #  14    0x4059d1  2      OPC=67    
  movslq %edx, %rdx         #  15    0x4059d3  3      OPC=1289  
  movq (%rdi), %rax         #  16    0x4059d6  3      OPC=1161  
  movq (%rax,%rdx,8), %rax  #  17    0x4059d9  4      OPC=1161  
  addq $0x8, %rsp           #  18    0x4059dd  4      OPC=70    
  retq                      #  19    0x4059e1  1      OPC=1978  
.L_4059d6:                  #        0x4059e2  0      OPC=0     
  movl $0x408aaf, %edi      #  20    0x4059e2  5      OPC=1154  
  callq .Error              #  21    0x4059e7  5      OPC=260   
                                                                
.size List_At, .-List_At

