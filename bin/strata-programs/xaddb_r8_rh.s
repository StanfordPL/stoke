  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movzbw %ah, %si                   #  1     0     4      OPC=movzbw_r16_rh    
  movzbq %bl, %r12                  #  2     0x4   4      OPC=movzbq_r64_r8    
  movslq %r12d, %rdx                #  3     0x8   3      OPC=movslq_r64_r32   
  callq .move_016_008_dx_r8b_r9b    #  4     0xb   5      OPC=callq_label      
  movsbl %r12b, %ebx                #  5     0x10  4      OPC=movsbl_r32_r8    
  movb %dl, %ah                     #  6     0x14  2      OPC=movb_rh_r8       
  callq .move_r9b_to_byte_6_of_rbx  #  7     0x16  5      OPC=callq_label      
  popcntq %rdx, %r9                 #  8     0x1b  5      OPC=popcntq_r64_r64  
  adcb %sil, %bl                    #  9     0x20  3      OPC=adcb_r8_r8       
  retq                              #  10    0x23  1      OPC=retq             
                                                                               
.size target, .-target
