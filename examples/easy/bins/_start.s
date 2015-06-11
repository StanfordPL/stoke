  .text
  .globl _start
  .type _start, @function

#! file-offset 0x4a3
#! rip-offset  0x4004a3
#! capacity    45 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._start:                        #        0x4004a3  0      OPC=0     
  xorl %ebp, %ebp               #  1     0x4004a3  2      OPC=3758  
  movq %rdx, %r9                #  2     0x4004a5  3      OPC=1162  
  popq %rsi                     #  3     0x4004a8  1      OPC=1694  
  movq %rsp, %rdx               #  4     0x4004a9  3      OPC=1162  
  andq $0xf0, %rsp              #  5     0x4004ac  4      OPC=137   
  pushq %rax                    #  6     0x4004b0  1      OPC=1861  
  pushq %rsp                    #  7     0x4004b1  1      OPC=1861  
  movq $0x400620, %r8           #  8     0x4004b2  7      OPC=1159  
  movq $0x4005b0, %rcx          #  9     0x4004b9  7      OPC=1159  
  movq $0x400470, %rdi          #  10    0x4004c0  7      OPC=1159  
  callq .__libc_start_main_plt  #  11    0x4004c7  5      OPC=260   
  retq                          #  12    0x4004cc  1      OPC=1978  
  nop                           #  13    0x4004cd  1      OPC=1343  
  nop                           #  14    0x4004ce  1      OPC=1343  
  nop                           #  15    0x4004cf  1      OPC=1343  
                                                                    
.size _start, .-_start

