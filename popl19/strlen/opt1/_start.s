  .text
  .globl _start
  .type _start, @function

#! file-offset 0x400
#! rip-offset  0x400400
#! capacity    48 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x400400  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x400400  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x400402  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x400405  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x400406  3      OPC=movq_r64_r64    
  andq $0xf0, %rsp              #  5     0x400409  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x40040d  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x40040e  1      OPC=pushq_r64_1     
  movq $0x4005b0, %r8           #  8     0x40040f  7      OPC=movq_r64_imm32  
  movq $0x400540, %rcx          #  9     0x400416  7      OPC=movq_r64_imm32  
  movq $0x400532, %rdi          #  10    0x40041d  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x400424  5      OPC=callq_label     
  retq                          #  12    0x400429  1      OPC=retq            
  nop                           #  13    0x40042a  1      OPC=nop             
  nop                           #  14    0x40042b  1      OPC=nop             
  nop                           #  15    0x40042c  1      OPC=nop             
  nop                           #  16    0x40042d  1      OPC=nop             
  nop                           #  17    0x40042e  1      OPC=nop             
  nop                           #  18    0x40042f  1      OPC=nop             
                                                                              
.size _start, .-_start

