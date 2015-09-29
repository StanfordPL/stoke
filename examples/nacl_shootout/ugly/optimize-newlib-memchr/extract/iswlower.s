  .text
  .globl iswlower
  .type iswlower, @function

#! file-offset 0x15f280
#! rip-offset  0x11f280
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswlower:                 #        0x11f280  0      OPC=<label>         
  pushq %rbx               #  1     0x11f280  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11f281  2      OPC=movl_r32_r32    
  nop                      #  3     0x11f283  1      OPC=nop             
  nop                      #  4     0x11f284  1      OPC=nop             
  nop                      #  5     0x11f285  1      OPC=nop             
  nop                      #  6     0x11f286  1      OPC=nop             
  nop                      #  7     0x11f287  1      OPC=nop             
  nop                      #  8     0x11f288  1      OPC=nop             
  nop                      #  9     0x11f289  1      OPC=nop             
  nop                      #  10    0x11f28a  1      OPC=nop             
  nop                      #  11    0x11f28b  1      OPC=nop             
  nop                      #  12    0x11f28c  1      OPC=nop             
  nop                      #  13    0x11f28d  1      OPC=nop             
  nop                      #  14    0x11f28e  1      OPC=nop             
  nop                      #  15    0x11f28f  1      OPC=nop             
  nop                      #  16    0x11f290  1      OPC=nop             
  nop                      #  17    0x11f291  1      OPC=nop             
  nop                      #  18    0x11f292  1      OPC=nop             
  nop                      #  19    0x11f293  1      OPC=nop             
  nop                      #  20    0x11f294  1      OPC=nop             
  nop                      #  21    0x11f295  1      OPC=nop             
  nop                      #  22    0x11f296  1      OPC=nop             
  nop                      #  23    0x11f297  1      OPC=nop             
  nop                      #  24    0x11f298  1      OPC=nop             
  nop                      #  25    0x11f299  1      OPC=nop             
  nop                      #  26    0x11f29a  1      OPC=nop             
  callq .towupper          #  27    0x11f29b  5      OPC=callq_label     
  cmpl %ebx, %eax          #  28    0x11f2a0  2      OPC=cmpl_r32_r32    
  popq %rbx                #  29    0x11f2a2  1      OPC=popq_r64_1      
  popq %r11                #  30    0x11f2a3  2      OPC=popq_r64_1      
  setne %al                #  31    0x11f2a5  3      OPC=setne_r8        
  movzbl %al, %eax         #  32    0x11f2a8  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  33    0x11f2ab  7      OPC=andl_r32_imm32  
  nop                      #  34    0x11f2b2  1      OPC=nop             
  nop                      #  35    0x11f2b3  1      OPC=nop             
  nop                      #  36    0x11f2b4  1      OPC=nop             
  nop                      #  37    0x11f2b5  1      OPC=nop             
  addq %r15, %r11          #  38    0x11f2b6  3      OPC=addq_r64_r64    
  jmpq %r11                #  39    0x11f2b9  3      OPC=jmpq_r64        
  nop                      #  40    0x11f2bc  1      OPC=nop             
  nop                      #  41    0x11f2bd  1      OPC=nop             
  nop                      #  42    0x11f2be  1      OPC=nop             
  nop                      #  43    0x11f2bf  1      OPC=nop             
  nop                      #  44    0x11f2c0  1      OPC=nop             
  nop                      #  45    0x11f2c1  1      OPC=nop             
  nop                      #  46    0x11f2c2  1      OPC=nop             
  nop                      #  47    0x11f2c3  1      OPC=nop             
  nop                      #  48    0x11f2c4  1      OPC=nop             
  nop                      #  49    0x11f2c5  1      OPC=nop             
  nop                      #  50    0x11f2c6  1      OPC=nop             
                                                                         
.size iswlower, .-iswlower

