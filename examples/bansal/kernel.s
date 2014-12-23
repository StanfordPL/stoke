  .text
  .globl _Z6kernel
  .type _Z6kernel, @function
._Z6kernel:               
	###
	### The actual kernel begins here
	###
  movq -0x8(%rsp), %rax  # 5   
  movl (%rax), %ecx      # 6   
  shll $0x1, %ecx        # 7   
  movl %ecx, (%rax)      # 8   
  movq -0x8(%rsp), %rax  # 9   
  movq 0x8(%rax), %rax   # 10  
  movq %rax, -0x8(%rsp)  # 11  
	
	###
	### This line is here for the sake of test case generation
	### This has to look like a stand-alone function
	###
	retq
.size _Z6kernel, .-_Z6kernel

