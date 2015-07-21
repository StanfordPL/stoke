  .text
  .globl ReportStatus
  .type ReportStatus, @function

#! file-offset 0x8080
#! rip-offset  0x408080
#! capacity    176 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.ReportStatus:               #        0x408080  0      OPC=0     
  subq $0xd8, %rsp           #  1     0x408080  7      OPC=2388  
  movq %rsi, 0x28(%rsp)      #  2     0x408087  5      OPC=1138  
  movq %rdx, 0x30(%rsp)      #  3     0x40808c  5      OPC=1138  
  movq %rcx, 0x38(%rsp)      #  4     0x408091  5      OPC=1138  
  movq %r8, 0x40(%rsp)       #  5     0x408096  5      OPC=1138  
  movq %r9, 0x48(%rsp)       #  6     0x40809b  5      OPC=1138  
  testb %al, %al             #  7     0x4080a0  2      OPC=2440  
  je .L_4080db               #  8     0x4080a2  6      OPC=893   
  nop                        #  9     0x4080a8  1      OPC=1343  
  nop                        #  10    0x4080a9  1      OPC=1343  
  movaps %xmm0, 0x50(%rsp)   #  11    0x4080aa  5      OPC=1188  
  movaps %xmm1, 0x60(%rsp)   #  12    0x4080af  5      OPC=1188  
  movaps %xmm2, 0x70(%rsp)   #  13    0x4080b4  5      OPC=1188  
  movaps %xmm3, 0x80(%rsp)   #  14    0x4080b9  8      OPC=1188  
  movaps %xmm4, 0x90(%rsp)   #  15    0x4080c1  8      OPC=1188  
  movaps %xmm5, 0xa0(%rsp)   #  16    0x4080c9  8      OPC=1188  
  movaps %xmm6, 0xb0(%rsp)   #  17    0x4080d1  8      OPC=1188  
  movaps %xmm7, 0xc0(%rsp)   #  18    0x4080d9  8      OPC=1188  
.L_4080db:                   #        0x4080e1  0      OPC=0     
  movq %rdi, %rdx            #  19    0x4080e1  3      OPC=1162  
  movl $0x8, 0x8(%rsp)       #  20    0x4080e4  8      OPC=1135  
  movl $0x30, 0xc(%rsp)      #  21    0x4080ec  8      OPC=1135  
  leaq 0xe0(%rsp), %rax      #  22    0x4080f4  8      OPC=1069  
  movq %rax, 0x10(%rsp)      #  23    0x4080fc  5      OPC=1138  
  leaq 0x20(%rsp), %rax      #  24    0x408101  5      OPC=1069  
  movq %rax, 0x18(%rsp)      #  25    0x408106  5      OPC=1138  
  leaq 0x8(%rsp), %rcx       #  26    0x40810b  5      OPC=1069  
  movl $0x1, %esi            #  27    0x408110  5      OPC=1154  
  movq 0x21d29a(%rip), %rdi  #  28    0x408115  7      OPC=1161  
  callq .__vfprintf_chk_plt  #  29    0x40811c  5      OPC=260   
  movl $0xa, %edi            #  30    0x408121  5      OPC=1154  
  callq .putchar_plt         #  31    0x408126  5      OPC=260   
  addq $0xd8, %rsp           #  32    0x40812b  7      OPC=69    
  retq                       #  33    0x408132  1      OPC=1978  
  nop                        #  34    0x408133  1      OPC=1343  
  nop                        #  35    0x408134  1      OPC=1343  
  nop                        #  36    0x408135  1      OPC=1343  
                                                                 
.size ReportStatus, .-ReportStatus

