  .text
  .globl iswupper
  .type iswupper, @function

#! file-offset 0x15faa0
#! rip-offset  0x11faa0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswupper:                 #        0x11faa0  0      OPC=<label>         
  pushq %rbx               #  1     0x11faa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11faa1  2      OPC=movl_r32_r32    
  nop                      #  3     0x11faa3  1      OPC=nop             
  nop                      #  4     0x11faa4  1      OPC=nop             
  nop                      #  5     0x11faa5  1      OPC=nop             
  nop                      #  6     0x11faa6  1      OPC=nop             
  nop                      #  7     0x11faa7  1      OPC=nop             
  nop                      #  8     0x11faa8  1      OPC=nop             
  nop                      #  9     0x11faa9  1      OPC=nop             
  nop                      #  10    0x11faaa  1      OPC=nop             
  nop                      #  11    0x11faab  1      OPC=nop             
  nop                      #  12    0x11faac  1      OPC=nop             
  nop                      #  13    0x11faad  1      OPC=nop             
  nop                      #  14    0x11faae  1      OPC=nop             
  nop                      #  15    0x11faaf  1      OPC=nop             
  nop                      #  16    0x11fab0  1      OPC=nop             
  nop                      #  17    0x11fab1  1      OPC=nop             
  nop                      #  18    0x11fab2  1      OPC=nop             
  nop                      #  19    0x11fab3  1      OPC=nop             
  nop                      #  20    0x11fab4  1      OPC=nop             
  nop                      #  21    0x11fab5  1      OPC=nop             
  nop                      #  22    0x11fab6  1      OPC=nop             
  nop                      #  23    0x11fab7  1      OPC=nop             
  nop                      #  24    0x11fab8  1      OPC=nop             
  nop                      #  25    0x11fab9  1      OPC=nop             
  nop                      #  26    0x11faba  1      OPC=nop             
  callq .towlower          #  27    0x11fabb  5      OPC=callq_label     
  cmpl %ebx, %eax          #  28    0x11fac0  2      OPC=cmpl_r32_r32    
  popq %rbx                #  29    0x11fac2  1      OPC=popq_r64_1      
  popq %r11                #  30    0x11fac3  2      OPC=popq_r64_1      
  setne %al                #  31    0x11fac5  3      OPC=setne_r8        
  movzbl %al, %eax         #  32    0x11fac8  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  33    0x11facb  7      OPC=andl_r32_imm32  
  nop                      #  34    0x11fad2  1      OPC=nop             
  nop                      #  35    0x11fad3  1      OPC=nop             
  nop                      #  36    0x11fad4  1      OPC=nop             
  nop                      #  37    0x11fad5  1      OPC=nop             
  addq %r15, %r11          #  38    0x11fad6  3      OPC=addq_r64_r64    
  jmpq %r11                #  39    0x11fad9  3      OPC=jmpq_r64        
  nop                      #  40    0x11fadc  1      OPC=nop             
  nop                      #  41    0x11fadd  1      OPC=nop             
  nop                      #  42    0x11fade  1      OPC=nop             
  nop                      #  43    0x11fadf  1      OPC=nop             
  nop                      #  44    0x11fae0  1      OPC=nop             
  nop                      #  45    0x11fae1  1      OPC=nop             
  nop                      #  46    0x11fae2  1      OPC=nop             
  nop                      #  47    0x11fae3  1      OPC=nop             
  nop                      #  48    0x11fae4  1      OPC=nop             
  nop                      #  49    0x11fae5  1      OPC=nop             
  nop                      #  50    0x11fae6  1      OPC=nop             
                                                                         
.size iswupper, .-iswupper

