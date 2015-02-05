  .text
  .globl _Z6popcntm
  .type _Z6popcntm, @function
._Z6popcntm:               
  popcntq %rdi, %rcx  # 1  
  cmpb %al, %dil      # 2  
  btsl $0xfa, %ecx    # 3  
  sete %r10b          # 4  
  movsbl %cl, %eax    # 5  
  retq                # 6  

.size _Z6popcntm, .-_Z6popcntm
