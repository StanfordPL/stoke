  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode              
.target:                  #        0     0      OPC=<label>         
  movl %ebx, %r8d         #  1     0     3      OPC=movl_r32_r32    
  movswq %cx, %r11        #  2     0x3   4      OPC=movswq_r64_r16  
  xaddl %r11d, %ecx       #  3     0x7   4      OPC=xaddl_r32_r32   
  orq %r11, %r8           #  4     0xb   3      OPC=orq_r64_r64     
  xchgl %ebx, %r8d        #  5     0xe   3      OPC=xchgl_r32_r32   
  callq .set_szp_for_ebx  #  6     0x11  5      OPC=callq_label     
  retq                    #  7     0x16  1      OPC=retq            
                                                                    
.size target, .-target
