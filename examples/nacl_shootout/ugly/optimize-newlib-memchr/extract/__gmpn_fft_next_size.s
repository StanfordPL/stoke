  .text
  .globl __gmpn_fft_next_size
  .type __gmpn_fft_next_size, @function

#! file-offset 0x96880
#! rip-offset  0x56880
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.__gmpn_fft_next_size:     #        0x56880  0      OPC=<label>         
  leal -0x1(%rdi), %eax    #  1     0x56880  3      OPC=leal_r32_m16    
  movl %esi, %ecx          #  2     0x56883  2      OPC=movl_r32_r32    
  popq %r11                #  3     0x56885  2      OPC=popq_r64_1      
  sarl %cl, %eax           #  4     0x56887  2      OPC=sarl_r32_cl     
  addl $0x1, %eax          #  5     0x56889  3      OPC=addl_r32_imm8   
  shll %cl, %eax           #  6     0x5688c  2      OPC=shll_r32_cl     
  andl $0xffffffe0, %r11d  #  7     0x5688e  7      OPC=andl_r32_imm32  
  nop                      #  8     0x56895  1      OPC=nop             
  nop                      #  9     0x56896  1      OPC=nop             
  nop                      #  10    0x56897  1      OPC=nop             
  nop                      #  11    0x56898  1      OPC=nop             
  addq %r15, %r11          #  12    0x56899  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x5689c  3      OPC=jmpq_r64        
  nop                      #  14    0x5689f  1      OPC=nop             
  nop                      #  15    0x568a0  1      OPC=nop             
  nop                      #  16    0x568a1  1      OPC=nop             
  nop                      #  17    0x568a2  1      OPC=nop             
  nop                      #  18    0x568a3  1      OPC=nop             
  nop                      #  19    0x568a4  1      OPC=nop             
  nop                      #  20    0x568a5  1      OPC=nop             
  nop                      #  21    0x568a6  1      OPC=nop             
                                                                        
.size __gmpn_fft_next_size, .-__gmpn_fft_next_size

