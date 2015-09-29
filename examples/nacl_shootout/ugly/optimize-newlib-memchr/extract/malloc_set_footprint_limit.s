  .text
  .globl malloc_set_footprint_limit
  .type malloc_set_footprint_limit, @function

#! file-offset 0x151d40
#! rip-offset  0x111d40
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.malloc_set_footprint_limit:    #        0x111d40  0      OPC=<label>         
  xorl %eax, %eax               #  1     0x111d40  2      OPC=xorl_r32_r32    
  cmpl $0xffffffff, %edi        #  2     0x111d42  6      OPC=cmpl_r32_imm32  
  nop                           #  3     0x111d48  1      OPC=nop             
  nop                           #  4     0x111d49  1      OPC=nop             
  nop                           #  5     0x111d4a  1      OPC=nop             
  je .L_111d60                  #  6     0x111d4b  2      OPC=je_label        
  movl 0xff66e0b(%rip), %edx    #  7     0x111d4d  6      OPC=movl_r32_m32    
  leal -0x1(%rdx,%rdi,1), %eax  #  8     0x111d53  4      OPC=leal_r32_m16    
  negl %edx                     #  9     0x111d57  2      OPC=negl_r32        
  andl %edx, %eax               #  10    0x111d59  2      OPC=andl_r32_r32    
  nop                           #  11    0x111d5b  1      OPC=nop             
  nop                           #  12    0x111d5c  1      OPC=nop             
  nop                           #  13    0x111d5d  1      OPC=nop             
  nop                           #  14    0x111d5e  1      OPC=nop             
  nop                           #  15    0x111d5f  1      OPC=nop             
  nop                           #  16    0x111d60  1      OPC=nop             
  nop                           #  17    0x111d61  1      OPC=nop             
  nop                           #  18    0x111d62  1      OPC=nop             
  nop                           #  19    0x111d63  1      OPC=nop             
  nop                           #  20    0x111d64  1      OPC=nop             
  nop                           #  21    0x111d65  1      OPC=nop             
.L_111d60:                      #        0x111d66  0      OPC=<label>         
  popq %r11                     #  22    0x111d66  2      OPC=popq_r64_1      
  movl %eax, 0xff66fd0(%rip)    #  23    0x111d68  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d       #  24    0x111d6e  7      OPC=andl_r32_imm32  
  nop                           #  25    0x111d75  1      OPC=nop             
  nop                           #  26    0x111d76  1      OPC=nop             
  nop                           #  27    0x111d77  1      OPC=nop             
  nop                           #  28    0x111d78  1      OPC=nop             
  addq %r15, %r11               #  29    0x111d79  3      OPC=addq_r64_r64    
  jmpq %r11                     #  30    0x111d7c  3      OPC=jmpq_r64        
  nop                           #  31    0x111d7f  1      OPC=nop             
  nop                           #  32    0x111d80  1      OPC=nop             
  nop                           #  33    0x111d81  1      OPC=nop             
  nop                           #  34    0x111d82  1      OPC=nop             
  nop                           #  35    0x111d83  1      OPC=nop             
  nop                           #  36    0x111d84  1      OPC=nop             
  nop                           #  37    0x111d85  1      OPC=nop             
  nop                           #  38    0x111d86  1      OPC=nop             
  nop                           #  39    0x111d87  1      OPC=nop             
  nop                           #  40    0x111d88  1      OPC=nop             
  nop                           #  41    0x111d89  1      OPC=nop             
  nop                           #  42    0x111d8a  1      OPC=nop             
  nop                           #  43    0x111d8b  1      OPC=nop             
  nop                           #  44    0x111d8c  1      OPC=nop             
                                                                              
.size malloc_set_footprint_limit, .-malloc_set_footprint_limit

