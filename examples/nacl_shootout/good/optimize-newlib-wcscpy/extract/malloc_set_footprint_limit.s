  .text
  .globl malloc_set_footprint_limit
  .type malloc_set_footprint_limit, @function

#! file-offset 0x151320
#! rip-offset  0x111320
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.malloc_set_footprint_limit:    #        0x111320  0      OPC=<label>         
  xorl %eax, %eax               #  1     0x111320  2      OPC=xorl_r32_r32    
  cmpl $0xffffffff, %edi        #  2     0x111322  6      OPC=cmpl_r32_imm32  
  nop                           #  3     0x111328  1      OPC=nop             
  nop                           #  4     0x111329  1      OPC=nop             
  nop                           #  5     0x11132a  1      OPC=nop             
  je .L_111340                  #  6     0x11132b  2      OPC=je_label        
  movl 0xff6782b(%rip), %edx    #  7     0x11132d  6      OPC=movl_r32_m32    
  leal -0x1(%rdx,%rdi,1), %eax  #  8     0x111333  4      OPC=leal_r32_m16    
  negl %edx                     #  9     0x111337  2      OPC=negl_r32        
  andl %edx, %eax               #  10    0x111339  2      OPC=andl_r32_r32    
  nop                           #  11    0x11133b  1      OPC=nop             
  nop                           #  12    0x11133c  1      OPC=nop             
  nop                           #  13    0x11133d  1      OPC=nop             
  nop                           #  14    0x11133e  1      OPC=nop             
  nop                           #  15    0x11133f  1      OPC=nop             
  nop                           #  16    0x111340  1      OPC=nop             
  nop                           #  17    0x111341  1      OPC=nop             
  nop                           #  18    0x111342  1      OPC=nop             
  nop                           #  19    0x111343  1      OPC=nop             
  nop                           #  20    0x111344  1      OPC=nop             
  nop                           #  21    0x111345  1      OPC=nop             
.L_111340:                      #        0x111346  0      OPC=<label>         
  popq %r11                     #  22    0x111346  2      OPC=popq_r64_1      
  movl %eax, 0xff679f0(%rip)    #  23    0x111348  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d       #  24    0x11134e  7      OPC=andl_r32_imm32  
  nop                           #  25    0x111355  1      OPC=nop             
  nop                           #  26    0x111356  1      OPC=nop             
  nop                           #  27    0x111357  1      OPC=nop             
  nop                           #  28    0x111358  1      OPC=nop             
  addq %r15, %r11               #  29    0x111359  3      OPC=addq_r64_r64    
  jmpq %r11                     #  30    0x11135c  3      OPC=jmpq_r64        
  nop                           #  31    0x11135f  1      OPC=nop             
  nop                           #  32    0x111360  1      OPC=nop             
  nop                           #  33    0x111361  1      OPC=nop             
  nop                           #  34    0x111362  1      OPC=nop             
  nop                           #  35    0x111363  1      OPC=nop             
  nop                           #  36    0x111364  1      OPC=nop             
  nop                           #  37    0x111365  1      OPC=nop             
  nop                           #  38    0x111366  1      OPC=nop             
  nop                           #  39    0x111367  1      OPC=nop             
  nop                           #  40    0x111368  1      OPC=nop             
  nop                           #  41    0x111369  1      OPC=nop             
  nop                           #  42    0x11136a  1      OPC=nop             
  nop                           #  43    0x11136b  1      OPC=nop             
  nop                           #  44    0x11136c  1      OPC=nop             
                                                                              
.size malloc_set_footprint_limit, .-malloc_set_footprint_limit

