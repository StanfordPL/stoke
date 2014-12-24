  .text
  .globl _Z8traverseP4Node
  .type _Z8traverseP4Node, @function
._Z8traverseP4Node:            
  pushq %rbp             # 0   
  movq %rsp, %rbp        # 1   
  movq %rdi, -0x8(%rsp)  # 2   
.L_400868:                     
  cmpq $0x0, -0x8(%rsp)  # 3   
  je .L_400892           # 4   
	###
	### INSERT KERNEL HERE
	###
  jmpq .L_400868         # 12  
.L_400892:                     
  popq %rbp              # 13  
  retq                   # 14  
  nop                    # 15  
  xchgw %ax, %ax         # 16  

.size _Z8traverseP4Node, .-_Z8traverseP4Node
