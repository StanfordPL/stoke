  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x1930
#! rip-offset  0x401930
#! capacity    38 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.frame_dummy:               #        0x401930  0      OPC=0     
  movl $0x624de0, %edi      #  1     0x401930  5      OPC=1154  
  cmpq $0x0, (%rdi)         #  2     0x401935  4      OPC=459   
  jne .L_401940             #  3     0x401939  6      OPC=963   
  nop                       #  4     0x40193f  1      OPC=1343  
  nop                       #  5     0x401940  1      OPC=1343  
.L_40193b:                  #        0x401941  0      OPC=0     
  jmpq .register_tm_clones  #  6     0x401941  5      OPC=930   
  nop                       #  7     0x401946  1      OPC=1343  
  nop                       #  8     0x401947  1      OPC=1343  
  nop                       #  9     0x401948  1      OPC=1343  
  nop                       #  10    0x401949  1      OPC=1343  
  nop                       #  11    0x40194a  1      OPC=1343  
.L_401940:                  #        0x40194b  0      OPC=0     
  movl $0x0, %eax           #  12    0x40194b  5      OPC=1154  
  testq %rax, %rax          #  13    0x401950  3      OPC=2438  
  je .L_40193b              #  14    0x401953  6      OPC=893   
  nop                       #  15    0x401959  1      OPC=1343  
  nop                       #  16    0x40195a  1      OPC=1343  
  pushq %rbp                #  17    0x40195b  1      OPC=1861  
  movq %rsp, %rbp           #  18    0x40195c  3      OPC=1162  
  callq %rax                #  19    0x40195f  2      OPC=258   
  popq %rbp                 #  20    0x401961  1      OPC=1694  
  jmpq .register_tm_clones  #  21    0x401962  5      OPC=930   
                                                                
.size frame_dummy, .-frame_dummy

