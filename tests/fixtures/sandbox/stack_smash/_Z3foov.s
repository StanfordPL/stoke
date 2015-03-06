  .text
  .globl _Z3foov
  .type _Z3foov, @function

#! file-offset 0x4ed
#! rip-offset  0x4004ed
#! capacity    7 bytes

# Text             
._Z3foov:          
	movq $0x0, (%rsp) # <- Stack smash
  retq            
                                             
.size _Z3foov, .-_Z3foov

