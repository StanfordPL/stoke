  .text
  .globl __gmpn_fft_next_size
  .type __gmpn_fft_next_size, @function

#! file-offset 0x95e60
#! rip-offset  0x55e60
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.__gmpn_fft_next_size:     #        0x55e60  0      OPC=<label>         
  leal -0x1(%rdi), %eax    #  1     0x55e60  3      OPC=leal_r32_m16    
  movl %esi, %ecx          #  2     0x55e63  2      OPC=movl_r32_r32    
  popq %r11                #  3     0x55e65  2      OPC=popq_r64_1      
  sarl %cl, %eax           #  4     0x55e67  2      OPC=sarl_r32_cl     
  addl $0x1, %eax          #  5     0x55e69  3      OPC=addl_r32_imm8   
  shll %cl, %eax           #  6     0x55e6c  2      OPC=shll_r32_cl     
  andl $0xffffffe0, %r11d  #  7     0x55e6e  7      OPC=andl_r32_imm32  
  nop                      #  8     0x55e75  1      OPC=nop             
  nop                      #  9     0x55e76  1      OPC=nop             
  nop                      #  10    0x55e77  1      OPC=nop             
  nop                      #  11    0x55e78  1      OPC=nop             
  addq %r15, %r11          #  12    0x55e79  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x55e7c  3      OPC=jmpq_r64        
  nop                      #  14    0x55e7f  1      OPC=nop             
  nop                      #  15    0x55e80  1      OPC=nop             
  nop                      #  16    0x55e81  1      OPC=nop             
  nop                      #  17    0x55e82  1      OPC=nop             
  nop                      #  18    0x55e83  1      OPC=nop             
  nop                      #  19    0x55e84  1      OPC=nop             
  nop                      #  20    0x55e85  1      OPC=nop             
  nop                      #  21    0x55e86  1      OPC=nop             
                                                                        
.size __gmpn_fft_next_size, .-__gmpn_fft_next_size

