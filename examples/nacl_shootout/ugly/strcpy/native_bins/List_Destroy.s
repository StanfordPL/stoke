  .text
  .globl List_Destroy
  .type List_Destroy, @function

#! file-offset 0x596e
#! rip-offset  0x40596e
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.List_Destroy:                  #        0x40596e  0      OPC=0     
  pushq %rbx                    #  1     0x40596e  1      OPC=1861  
  movq %rdi, %rbx               #  2     0x40596f  3      OPC=1162  
  movq (%rdi), %rdi             #  3     0x405972  3      OPC=1161  
  testq %rdi, %rdi              #  4     0x405975  3      OPC=2438  
  je .L_4059a4                  #  5     0x405978  6      OPC=893   
  nop                           #  6     0x40597e  1      OPC=1343  
  nop                           #  7     0x40597f  1      OPC=1343  
  callq .free_plt               #  8     0x405980  5      OPC=260   
  movq $0x0, (%rbx)             #  9     0x405985  7      OPC=1137  
  movl $0x0, 0x8(%rbx)          #  10    0x40598c  7      OPC=1135  
  movl $0x0, 0xc(%rbx)          #  11    0x405993  7      OPC=1135  
  movl $0xffffffff, 0x10(%rbx)  #  12    0x40599a  7      OPC=1135  
  movq %rbx, %rdi               #  13    0x4059a1  3      OPC=1162  
  popq %rbx                     #  14    0x4059a4  1      OPC=1694  
  jmpq .free_plt                #  15    0x4059a5  5      OPC=930   
.L_4059a4:                      #        0x4059aa  0      OPC=0     
  movl $0x408bf8, %edi          #  16    0x4059aa  5      OPC=1154  
  callq .Error                  #  17    0x4059af  5      OPC=260   
                                                                    
.size List_Destroy, .-List_Destroy

