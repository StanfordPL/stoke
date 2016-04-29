  .text
  .globl _start
  .type _start, @function

#! file-offset 0x470
#! rip-offset  0x400470
#! capacity    48 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x400470  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x400470  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x400472  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x400475  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x400476  3      OPC=movq_r64_r64    
  andq $0xf0, %rsp              #  5     0x400479  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x40047d  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x40047e  1      OPC=pushq_r64_1     
  movq $0x400650, %r8           #  8     0x40047f  7      OPC=movq_r64_imm32  
  movq $0x4005e0, %rcx          #  9     0x400486  7      OPC=movq_r64_imm32  
  movq $0x4005bf, %rdi          #  10    0x40048d  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x400494  5      OPC=callq_label     
  retq                          #  12    0x400499  1      OPC=retq            
  nop                           #  13    0x40049a  1      OPC=nop             
  nop                           #  14    0x40049b  1      OPC=nop             
  nop                           #  15    0x40049c  1      OPC=nop             
  nop                           #  16    0x40049d  1      OPC=nop             
  nop                           #  17    0x40049e  1      OPC=nop             
  nop                           #  18    0x40049f  1      OPC=nop             
                                                                              
.size _start, .-_start

