  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  xorq %rax, %rax                 #  1     0     3      OPC=xorq_r64_r64    
  movq $0xffffffffffffffff, %rsi  #  2     0x3   10     OPC=movq_r64_imm64  
  xchgw %ax, %bx                  #  3     0xd   3      OPC=xchgw_r16_r16   
  callq .read_cf_into_rbx         #  4     0x10  5      OPC=callq_label     
  adcw %bx, %ax                   #  5     0x15  3      OPC=adcw_r16_r16    
  addw %ax, %si                   #  6     0x18  3      OPC=addw_r16_r16    
  movswq %si, %rbx                #  7     0x1b  4      OPC=movswq_r64_r16  
  retq                            #  8     0x1f  1      OPC=retq            
                                                                            
.size target, .-target
