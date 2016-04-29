  .text
  .globl print
  .type print, @function

#! file-offset 0x566
#! rip-offset  0x400566
#! capacity    33 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.print:                    #        0x400566  0      OPC=<label>         
  subq $0x8, %rsp          #  1     0x400566  4      OPC=subq_r64_imm8   
  movl %edi, %edx          #  2     0x40056a  2      OPC=movl_r32_r32    
  movl %esi, %ecx          #  3     0x40056c  2      OPC=movl_r32_r32    
  movl $0x400664, %esi     #  4     0x40056e  5      OPC=movl_r32_imm32  
  movl $0x1, %edi          #  5     0x400573  5      OPC=movl_r32_imm32  
  movl $0x0, %eax          #  6     0x400578  5      OPC=movl_r32_imm32  
  callq .__printf_chk_plt  #  7     0x40057d  5      OPC=callq_label     
  addq $0x8, %rsp          #  8     0x400582  4      OPC=addq_r64_imm8   
  retq                     #  9     0x400586  1      OPC=retq            
                                                                         
.size print, .-print

