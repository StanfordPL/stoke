  .text
  .globl pvalloc
  .type pvalloc, @function

#! file-offset 0x1574c0
#! rip-offset  0x1174c0
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.pvalloc:                       #        0x1174c0  0      OPC=0     
  movl 0xff6168a(%rip), %edx    #  1     0x1174c0  6      OPC=1156  
  pushq %rbx                    #  2     0x1174c6  1      OPC=1861  
  movl %edi, %ebx               #  3     0x1174c7  2      OPC=1157  
  testl %edx, %edx              #  4     0x1174c9  2      OPC=2436  
  jne .L_1174e0                 #  5     0x1174cb  6      OPC=963   
  nop                           #  6     0x1174d1  1      OPC=1343  
  nop                           #  7     0x1174d2  1      OPC=1343  
  nop                           #  8     0x1174d3  1      OPC=1343  
  nop                           #  9     0x1174d4  1      OPC=1343  
  nop                           #  10    0x1174d5  1      OPC=1343  
  nop                           #  11    0x1174d6  1      OPC=1343  
  nop                           #  12    0x1174d7  1      OPC=1343  
  nop                           #  13    0x1174d8  1      OPC=1343  
  nop                           #  14    0x1174d9  1      OPC=1343  
  nop                           #  15    0x1174da  1      OPC=1343  
  nop                           #  16    0x1174db  1      OPC=1343  
  nop                           #  17    0x1174dc  1      OPC=1343  
  nop                           #  18    0x1174dd  1      OPC=1343  
  nop                           #  19    0x1174de  1      OPC=1343  
  nop                           #  20    0x1174df  1      OPC=1343  
  nop                           #  21    0x1174e0  1      OPC=1343  
  callq .init_mparams           #  22    0x1174e1  5      OPC=260   
.L_1174e0:                      #        0x1174e6  0      OPC=0     
  movl 0xff6166e(%rip), %edi    #  23    0x1174e6  6      OPC=1156  
  leal -0x1(%rdi,%rbx,1), %esi  #  24    0x1174ec  4      OPC=1066  
  movl %edi, %eax               #  25    0x1174f0  2      OPC=1157  
  popq %rbx                     #  26    0x1174f2  1      OPC=1694  
  negl %eax                     #  27    0x1174f3  2      OPC=1339  
  andl %eax, %esi               #  28    0x1174f5  2      OPC=134   
  jmpq .memalign                #  29    0x1174f7  5      OPC=930   
  nop                           #  30    0x1174fc  1      OPC=1343  
  nop                           #  31    0x1174fd  1      OPC=1343  
  nop                           #  32    0x1174fe  1      OPC=1343  
  nop                           #  33    0x1174ff  1      OPC=1343  
  nop                           #  34    0x117500  1      OPC=1343  
  nop                           #  35    0x117501  1      OPC=1343  
  nop                           #  36    0x117502  1      OPC=1343  
  nop                           #  37    0x117503  1      OPC=1343  
  nop                           #  38    0x117504  1      OPC=1343  
  nop                           #  39    0x117505  1      OPC=1343  
                                                                    
.size pvalloc, .-pvalloc

