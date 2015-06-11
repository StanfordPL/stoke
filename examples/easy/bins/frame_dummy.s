  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x570
#! rip-offset  0x400570
#! capacity    48 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.frame_dummy:               #        0x400570  0      OPC=0     
  movl $0x600e20, %edi      #  1     0x400570  5      OPC=1154  
  cmpq $0x0, (%rdi)         #  2     0x400575  4      OPC=459   
  jne .L_400580             #  3     0x400579  6      OPC=963   
  nop                       #  4     0x40057f  1      OPC=1343  
  nop                       #  5     0x400580  1      OPC=1343  
.L_40057b:                  #        0x400581  0      OPC=0     
  jmpq .register_tm_clones  #  6     0x400581  5      OPC=930   
  nop                       #  7     0x400586  1      OPC=1343  
  nop                       #  8     0x400587  1      OPC=1343  
  nop                       #  9     0x400588  1      OPC=1343  
  nop                       #  10    0x400589  1      OPC=1343  
  nop                       #  11    0x40058a  1      OPC=1343  
.L_400580:                  #        0x40058b  0      OPC=0     
  movl $0x0, %eax           #  12    0x40058b  5      OPC=1154  
  testq %rax, %rax          #  13    0x400590  3      OPC=2438  
  je .L_40057b              #  14    0x400593  6      OPC=893   
  nop                       #  15    0x400599  1      OPC=1343  
  nop                       #  16    0x40059a  1      OPC=1343  
  pushq %rbp                #  17    0x40059b  1      OPC=1861  
  movq %rsp, %rbp           #  18    0x40059c  3      OPC=1162  
  callq %rax                #  19    0x40059f  2      OPC=258   
  popq %rbp                 #  20    0x4005a1  1      OPC=1694  
  jmpq .register_tm_clones  #  21    0x4005a2  5      OPC=930   
  nop                       #  22    0x4005a7  1      OPC=1343  
  nop                       #  23    0x4005a8  1      OPC=1343  
  nop                       #  24    0x4005a9  1      OPC=1343  
  nop                       #  25    0x4005aa  1      OPC=1343  
  nop                       #  26    0x4005ab  1      OPC=1343  
  nop                       #  27    0x4005ac  1      OPC=1343  
  nop                       #  28    0x4005ad  1      OPC=1343  
  nop                       #  29    0x4005ae  1      OPC=1343  
  nop                       #  30    0x4005af  1      OPC=1343  
  nop                       #  31    0x4005b0  1      OPC=1343  
                                                                
.size frame_dummy, .-frame_dummy

