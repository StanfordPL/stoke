  .text
  .globl __nacl_add_tp
  .type __nacl_add_tp, @function

#! file-offset 0x158fc0
#! rip-offset  0x118fc0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__nacl_add_tp:            #        0x118fc0  0      OPC=<label>         
  pushq %rbx               #  1     0x118fc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x118fc1  2      OPC=movl_r32_r32    
  nop                      #  3     0x118fc3  1      OPC=nop             
  nop                      #  4     0x118fc4  1      OPC=nop             
  nop                      #  5     0x118fc5  1      OPC=nop             
  nop                      #  6     0x118fc6  1      OPC=nop             
  nop                      #  7     0x118fc7  1      OPC=nop             
  nop                      #  8     0x118fc8  1      OPC=nop             
  nop                      #  9     0x118fc9  1      OPC=nop             
  nop                      #  10    0x118fca  1      OPC=nop             
  nop                      #  11    0x118fcb  1      OPC=nop             
  nop                      #  12    0x118fcc  1      OPC=nop             
  nop                      #  13    0x118fcd  1      OPC=nop             
  nop                      #  14    0x118fce  1      OPC=nop             
  nop                      #  15    0x118fcf  1      OPC=nop             
  nop                      #  16    0x118fd0  1      OPC=nop             
  nop                      #  17    0x118fd1  1      OPC=nop             
  nop                      #  18    0x118fd2  1      OPC=nop             
  nop                      #  19    0x118fd3  1      OPC=nop             
  nop                      #  20    0x118fd4  1      OPC=nop             
  nop                      #  21    0x118fd5  1      OPC=nop             
  nop                      #  22    0x118fd6  1      OPC=nop             
  nop                      #  23    0x118fd7  1      OPC=nop             
  nop                      #  24    0x118fd8  1      OPC=nop             
  nop                      #  25    0x118fd9  1      OPC=nop             
  nop                      #  26    0x118fda  1      OPC=nop             
  callq .nacl_tls_get      #  27    0x118fdb  5      OPC=callq_label     
  addl %ebx, %eax          #  28    0x118fe0  2      OPC=addl_r32_r32    
  popq %rbx                #  29    0x118fe2  1      OPC=popq_r64_1      
  popq %r11                #  30    0x118fe3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  31    0x118fe5  7      OPC=andl_r32_imm32  
  nop                      #  32    0x118fec  1      OPC=nop             
  nop                      #  33    0x118fed  1      OPC=nop             
  nop                      #  34    0x118fee  1      OPC=nop             
  nop                      #  35    0x118fef  1      OPC=nop             
  addq %r15, %r11          #  36    0x118ff0  3      OPC=addq_r64_r64    
  jmpq %r11                #  37    0x118ff3  3      OPC=jmpq_r64        
  nop                      #  38    0x118ff6  1      OPC=nop             
  nop                      #  39    0x118ff7  1      OPC=nop             
  nop                      #  40    0x118ff8  1      OPC=nop             
  nop                      #  41    0x118ff9  1      OPC=nop             
  nop                      #  42    0x118ffa  1      OPC=nop             
  nop                      #  43    0x118ffb  1      OPC=nop             
  nop                      #  44    0x118ffc  1      OPC=nop             
  nop                      #  45    0x118ffd  1      OPC=nop             
  nop                      #  46    0x118ffe  1      OPC=nop             
  nop                      #  47    0x118fff  1      OPC=nop             
  nop                      #  48    0x119000  1      OPC=nop             
  nop                      #  49    0x119001  1      OPC=nop             
  nop                      #  50    0x119002  1      OPC=nop             
  nop                      #  51    0x119003  1      OPC=nop             
  nop                      #  52    0x119004  1      OPC=nop             
  nop                      #  53    0x119005  1      OPC=nop             
  nop                      #  54    0x119006  1      OPC=nop             
                                                                         
.size __nacl_add_tp, .-__nacl_add_tp

