  .text
  .globl __gmpn_fft_next_size
  .type __gmpn_fft_next_size, @function

#! file-offset 0x95920
#! rip-offset  0x55920
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.__gmpn_fft_next_size:     #        0x55920  0      OPC=0     
  leal -0x1(%rdi), %eax    #  1     0x55920  3      OPC=1066  
  movl %esi, %ecx          #  2     0x55923  2      OPC=1157  
  popq %r11                #  3     0x55925  2      OPC=1694  
  sarl %cl, %eax           #  4     0x55927  2      OPC=2095  
  addl $0x1, %eax          #  5     0x55929  3      OPC=65    
  shll %cl, %eax           #  6     0x5592c  2      OPC=2268  
  andl $0xffffffe0, %r11d  #  7     0x5592e  7      OPC=131   
  nop                      #  8     0x55935  1      OPC=1343  
  nop                      #  9     0x55936  1      OPC=1343  
  nop                      #  10    0x55937  1      OPC=1343  
  nop                      #  11    0x55938  1      OPC=1343  
  addq %r15, %r11          #  12    0x55939  3      OPC=72    
  jmpq %r11                #  13    0x5593c  3      OPC=928   
  nop                      #  14    0x5593f  1      OPC=1343  
  nop                      #  15    0x55940  1      OPC=1343  
  nop                      #  16    0x55941  1      OPC=1343  
  nop                      #  17    0x55942  1      OPC=1343  
  nop                      #  18    0x55943  1      OPC=1343  
  nop                      #  19    0x55944  1      OPC=1343  
  nop                      #  20    0x55945  1      OPC=1343  
  nop                      #  21    0x55946  1      OPC=1343  
                                                              
.size __gmpn_fft_next_size, .-__gmpn_fft_next_size

