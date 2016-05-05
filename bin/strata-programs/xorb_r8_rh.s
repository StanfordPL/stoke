  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movzbl %ah, %ebp       #  1     0     3      OPC=movzbl_r32_rh   
  xorq %rax, %rax        #  2     0x3   3      OPC=xorq_r64_r64    
  setc %bh               #  3     0x6   3      OPC=setc_rh         
  movswq %bx, %rdx       #  4     0x9   4      OPC=movswq_r64_r16  
  xorq %rbp, %rdx        #  5     0xd   3      OPC=xorq_r64_r64    
  movslq %edx, %rbx      #  6     0x10  3      OPC=movslq_r64_r32  
  callq .set_szp_for_bl  #  7     0x13  5      OPC=callq_label     
  retq                   #  8     0x18  1      OPC=retq            
                                                                   
.size target, .-target
