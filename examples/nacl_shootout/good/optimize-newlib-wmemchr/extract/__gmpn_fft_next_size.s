  .text
  .globl __gmpn_fft_next_size
  .type __gmpn_fft_next_size, @function

#! file-offset 0x96160
#! rip-offset  0x56160
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.__gmpn_fft_next_size:     #        0x56160  0      OPC=<label>         
  leal -0x1(%rdi), %eax    #  1     0x56160  3      OPC=leal_r32_m16    
  movl %esi, %ecx          #  2     0x56163  2      OPC=movl_r32_r32    
  popq %r11                #  3     0x56165  2      OPC=popq_r64_1      
  sarl %cl, %eax           #  4     0x56167  2      OPC=sarl_r32_cl     
  addl $0x1, %eax          #  5     0x56169  3      OPC=addl_r32_imm8   
  shll %cl, %eax           #  6     0x5616c  2      OPC=shll_r32_cl     
  andl $0xffffffe0, %r11d  #  7     0x5616e  7      OPC=andl_r32_imm32  
  nop                      #  8     0x56175  1      OPC=nop             
  nop                      #  9     0x56176  1      OPC=nop             
  nop                      #  10    0x56177  1      OPC=nop             
  nop                      #  11    0x56178  1      OPC=nop             
  addq %r15, %r11          #  12    0x56179  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x5617c  3      OPC=jmpq_r64        
  nop                      #  14    0x5617f  1      OPC=nop             
  nop                      #  15    0x56180  1      OPC=nop             
  nop                      #  16    0x56181  1      OPC=nop             
  nop                      #  17    0x56182  1      OPC=nop             
  nop                      #  18    0x56183  1      OPC=nop             
  nop                      #  19    0x56184  1      OPC=nop             
  nop                      #  20    0x56185  1      OPC=nop             
  nop                      #  21    0x56186  1      OPC=nop             
                                                                        
.size __gmpn_fft_next_size, .-__gmpn_fft_next_size

