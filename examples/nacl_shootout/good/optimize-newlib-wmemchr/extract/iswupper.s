  .text
  .globl iswupper
  .type iswupper, @function

#! file-offset 0x15fda0
#! rip-offset  0x11fda0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswupper:                 #        0x11fda0  0      OPC=<label>         
  pushq %rbx               #  1     0x11fda0  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x11fda1  2      OPC=movl_r32_r32    
  nop                      #  3     0x11fda3  1      OPC=nop             
  nop                      #  4     0x11fda4  1      OPC=nop             
  nop                      #  5     0x11fda5  1      OPC=nop             
  nop                      #  6     0x11fda6  1      OPC=nop             
  nop                      #  7     0x11fda7  1      OPC=nop             
  nop                      #  8     0x11fda8  1      OPC=nop             
  nop                      #  9     0x11fda9  1      OPC=nop             
  nop                      #  10    0x11fdaa  1      OPC=nop             
  nop                      #  11    0x11fdab  1      OPC=nop             
  nop                      #  12    0x11fdac  1      OPC=nop             
  nop                      #  13    0x11fdad  1      OPC=nop             
  nop                      #  14    0x11fdae  1      OPC=nop             
  nop                      #  15    0x11fdaf  1      OPC=nop             
  nop                      #  16    0x11fdb0  1      OPC=nop             
  nop                      #  17    0x11fdb1  1      OPC=nop             
  nop                      #  18    0x11fdb2  1      OPC=nop             
  nop                      #  19    0x11fdb3  1      OPC=nop             
  nop                      #  20    0x11fdb4  1      OPC=nop             
  nop                      #  21    0x11fdb5  1      OPC=nop             
  nop                      #  22    0x11fdb6  1      OPC=nop             
  nop                      #  23    0x11fdb7  1      OPC=nop             
  nop                      #  24    0x11fdb8  1      OPC=nop             
  nop                      #  25    0x11fdb9  1      OPC=nop             
  nop                      #  26    0x11fdba  1      OPC=nop             
  callq .towlower          #  27    0x11fdbb  5      OPC=callq_label     
  cmpl %ebx, %eax          #  28    0x11fdc0  2      OPC=cmpl_r32_r32    
  popq %rbx                #  29    0x11fdc2  1      OPC=popq_r64_1      
  popq %r11                #  30    0x11fdc3  2      OPC=popq_r64_1      
  setne %al                #  31    0x11fdc5  3      OPC=setne_r8        
  movzbl %al, %eax         #  32    0x11fdc8  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  33    0x11fdcb  7      OPC=andl_r32_imm32  
  nop                      #  34    0x11fdd2  1      OPC=nop             
  nop                      #  35    0x11fdd3  1      OPC=nop             
  nop                      #  36    0x11fdd4  1      OPC=nop             
  nop                      #  37    0x11fdd5  1      OPC=nop             
  addq %r15, %r11          #  38    0x11fdd6  3      OPC=addq_r64_r64    
  jmpq %r11                #  39    0x11fdd9  3      OPC=jmpq_r64        
  nop                      #  40    0x11fddc  1      OPC=nop             
  nop                      #  41    0x11fddd  1      OPC=nop             
  nop                      #  42    0x11fdde  1      OPC=nop             
  nop                      #  43    0x11fddf  1      OPC=nop             
  nop                      #  44    0x11fde0  1      OPC=nop             
  nop                      #  45    0x11fde1  1      OPC=nop             
  nop                      #  46    0x11fde2  1      OPC=nop             
  nop                      #  47    0x11fde3  1      OPC=nop             
  nop                      #  48    0x11fde4  1      OPC=nop             
  nop                      #  49    0x11fde5  1      OPC=nop             
  nop                      #  50    0x11fde6  1      OPC=nop             
                                                                         
.size iswupper, .-iswupper

