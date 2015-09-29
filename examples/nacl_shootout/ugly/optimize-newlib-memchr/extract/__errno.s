  .text
  .globl __errno
  .type __errno, @function

#! file-offset 0x159ee0
#! rip-offset  0x119ee0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.__errno:                   #        0x119ee0  0      OPC=<label>         
  nop                       #  1     0x119ee0  1      OPC=nop             
  nop                       #  2     0x119ee1  1      OPC=nop             
  nop                       #  3     0x119ee2  1      OPC=nop             
  nop                       #  4     0x119ee3  1      OPC=nop             
  nop                       #  5     0x119ee4  1      OPC=nop             
  nop                       #  6     0x119ee5  1      OPC=nop             
  nop                       #  7     0x119ee6  1      OPC=nop             
  nop                       #  8     0x119ee7  1      OPC=nop             
  nop                       #  9     0x119ee8  1      OPC=nop             
  nop                       #  10    0x119ee9  1      OPC=nop             
  nop                       #  11    0x119eea  1      OPC=nop             
  nop                       #  12    0x119eeb  1      OPC=nop             
  nop                       #  13    0x119eec  1      OPC=nop             
  nop                       #  14    0x119eed  1      OPC=nop             
  nop                       #  15    0x119eee  1      OPC=nop             
  nop                       #  16    0x119eef  1      OPC=nop             
  nop                       #  17    0x119ef0  1      OPC=nop             
  nop                       #  18    0x119ef1  1      OPC=nop             
  nop                       #  19    0x119ef2  1      OPC=nop             
  nop                       #  20    0x119ef3  1      OPC=nop             
  nop                       #  21    0x119ef4  1      OPC=nop             
  nop                       #  22    0x119ef5  1      OPC=nop             
  nop                       #  23    0x119ef6  1      OPC=nop             
  nop                       #  24    0x119ef7  1      OPC=nop             
  nop                       #  25    0x119ef8  1      OPC=nop             
  nop                       #  26    0x119ef9  1      OPC=nop             
  nop                       #  27    0x119efa  1      OPC=nop             
  callq .__nacl_read_tp     #  28    0x119efb  5      OPC=callq_label     
  popq %r11                 #  29    0x119f00  2      OPC=popq_r64_1      
  leaq -0x480(%rax), %rax   #  30    0x119f02  7      OPC=leaq_r64_m16    
  movl %eax, %eax           #  31    0x119f09  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax  #  32    0x119f0b  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  33    0x119f0f  7      OPC=andl_r32_imm32  
  nop                       #  34    0x119f16  1      OPC=nop             
  nop                       #  35    0x119f17  1      OPC=nop             
  nop                       #  36    0x119f18  1      OPC=nop             
  nop                       #  37    0x119f19  1      OPC=nop             
  addq %r15, %r11           #  38    0x119f1a  3      OPC=addq_r64_r64    
  jmpq %r11                 #  39    0x119f1d  3      OPC=jmpq_r64        
  nop                       #  40    0x119f20  1      OPC=nop             
  nop                       #  41    0x119f21  1      OPC=nop             
  nop                       #  42    0x119f22  1      OPC=nop             
  nop                       #  43    0x119f23  1      OPC=nop             
  nop                       #  44    0x119f24  1      OPC=nop             
  nop                       #  45    0x119f25  1      OPC=nop             
  nop                       #  46    0x119f26  1      OPC=nop             
                                                                          
.size __errno, .-__errno

