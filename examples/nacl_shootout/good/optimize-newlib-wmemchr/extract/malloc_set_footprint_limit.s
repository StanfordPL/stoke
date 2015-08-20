  .text
  .globl malloc_set_footprint_limit
  .type malloc_set_footprint_limit, @function

#! file-offset 0x151620
#! rip-offset  0x111620
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.malloc_set_footprint_limit:    #        0x111620  0      OPC=<label>         
  xorl %eax, %eax               #  1     0x111620  2      OPC=xorl_r32_r32    
  cmpl $0xffffffff, %edi        #  2     0x111622  6      OPC=cmpl_r32_imm32  
  nop                           #  3     0x111628  1      OPC=nop             
  nop                           #  4     0x111629  1      OPC=nop             
  nop                           #  5     0x11162a  1      OPC=nop             
  je .L_111640                  #  6     0x11162b  2      OPC=je_label        
  movl 0xff6752b(%rip), %edx    #  7     0x11162d  6      OPC=movl_r32_m32    
  leal -0x1(%rdx,%rdi,1), %eax  #  8     0x111633  4      OPC=leal_r32_m16    
  negl %edx                     #  9     0x111637  2      OPC=negl_r32        
  andl %edx, %eax               #  10    0x111639  2      OPC=andl_r32_r32    
  nop                           #  11    0x11163b  1      OPC=nop             
  nop                           #  12    0x11163c  1      OPC=nop             
  nop                           #  13    0x11163d  1      OPC=nop             
  nop                           #  14    0x11163e  1      OPC=nop             
  nop                           #  15    0x11163f  1      OPC=nop             
  nop                           #  16    0x111640  1      OPC=nop             
  nop                           #  17    0x111641  1      OPC=nop             
  nop                           #  18    0x111642  1      OPC=nop             
  nop                           #  19    0x111643  1      OPC=nop             
  nop                           #  20    0x111644  1      OPC=nop             
  nop                           #  21    0x111645  1      OPC=nop             
.L_111640:                      #        0x111646  0      OPC=<label>         
  popq %r11                     #  22    0x111646  2      OPC=popq_r64_1      
  movl %eax, 0xff676f0(%rip)    #  23    0x111648  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d       #  24    0x11164e  7      OPC=andl_r32_imm32  
  nop                           #  25    0x111655  1      OPC=nop             
  nop                           #  26    0x111656  1      OPC=nop             
  nop                           #  27    0x111657  1      OPC=nop             
  nop                           #  28    0x111658  1      OPC=nop             
  addq %r15, %r11               #  29    0x111659  3      OPC=addq_r64_r64    
  jmpq %r11                     #  30    0x11165c  3      OPC=jmpq_r64        
  nop                           #  31    0x11165f  1      OPC=nop             
  nop                           #  32    0x111660  1      OPC=nop             
  nop                           #  33    0x111661  1      OPC=nop             
  nop                           #  34    0x111662  1      OPC=nop             
  nop                           #  35    0x111663  1      OPC=nop             
  nop                           #  36    0x111664  1      OPC=nop             
  nop                           #  37    0x111665  1      OPC=nop             
  nop                           #  38    0x111666  1      OPC=nop             
  nop                           #  39    0x111667  1      OPC=nop             
  nop                           #  40    0x111668  1      OPC=nop             
  nop                           #  41    0x111669  1      OPC=nop             
  nop                           #  42    0x11166a  1      OPC=nop             
  nop                           #  43    0x11166b  1      OPC=nop             
  nop                           #  44    0x11166c  1      OPC=nop             
                                                                              
.size malloc_set_footprint_limit, .-malloc_set_footprint_limit

