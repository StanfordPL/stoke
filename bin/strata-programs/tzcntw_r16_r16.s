  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                  #  Line  RIP   Bytes  Opcode                
.target:                #        0     0      OPC=<label>           
  movswl %cx, %eax      #  1     0     3      OPC=movswl_r32_r16    
  tzcntl %eax, %ebx     #  2     0x3   4      OPC=tzcntl_r32_r32    
  movq $0x10, %r12      #  3     0x7   10     OPC=movq_r64_imm64    
  cmovnael %r12d, %ebx  #  4     0x11  4      OPC=cmovnael_r32_r32  
  retq                  #  5     0x15  1      OPC=retq              
                                                                    
.size target, .-target
