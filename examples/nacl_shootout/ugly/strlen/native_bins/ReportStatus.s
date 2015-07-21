  .text
  .globl ReportStatus
  .type ReportStatus, @function

#! file-offset 0x80e0
#! rip-offset  0x4080e0
#! capacity    176 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.ReportStatus:               #        0x4080e0  0      OPC=0     
  subq $0xd8, %rsp           #  1     0x4080e0  7      OPC=2388  
  movq %rsi, 0x28(%rsp)      #  2     0x4080e7  5      OPC=1138  
  movq %rdx, 0x30(%rsp)      #  3     0x4080ec  5      OPC=1138  
  movq %rcx, 0x38(%rsp)      #  4     0x4080f1  5      OPC=1138  
  movq %r8, 0x40(%rsp)       #  5     0x4080f6  5      OPC=1138  
  movq %r9, 0x48(%rsp)       #  6     0x4080fb  5      OPC=1138  
  testb %al, %al             #  7     0x408100  2      OPC=2440  
  je .L_40813b               #  8     0x408102  6      OPC=893   
  nop                        #  9     0x408108  1      OPC=1343  
  nop                        #  10    0x408109  1      OPC=1343  
  movaps %xmm0, 0x50(%rsp)   #  11    0x40810a  5      OPC=1188  
  movaps %xmm1, 0x60(%rsp)   #  12    0x40810f  5      OPC=1188  
  movaps %xmm2, 0x70(%rsp)   #  13    0x408114  5      OPC=1188  
  movaps %xmm3, 0x80(%rsp)   #  14    0x408119  8      OPC=1188  
  movaps %xmm4, 0x90(%rsp)   #  15    0x408121  8      OPC=1188  
  movaps %xmm5, 0xa0(%rsp)   #  16    0x408129  8      OPC=1188  
  movaps %xmm6, 0xb0(%rsp)   #  17    0x408131  8      OPC=1188  
  movaps %xmm7, 0xc0(%rsp)   #  18    0x408139  8      OPC=1188  
.L_40813b:                   #        0x408141  0      OPC=0     
  movq %rdi, %rdx            #  19    0x408141  3      OPC=1162  
  movl $0x8, 0x8(%rsp)       #  20    0x408144  8      OPC=1135  
  movl $0x30, 0xc(%rsp)      #  21    0x40814c  8      OPC=1135  
  leaq 0xe0(%rsp), %rax      #  22    0x408154  8      OPC=1069  
  movq %rax, 0x10(%rsp)      #  23    0x40815c  5      OPC=1138  
  leaq 0x20(%rsp), %rax      #  24    0x408161  5      OPC=1069  
  movq %rax, 0x18(%rsp)      #  25    0x408166  5      OPC=1138  
  leaq 0x8(%rsp), %rcx       #  26    0x40816b  5      OPC=1069  
  movl $0x1, %esi            #  27    0x408170  5      OPC=1154  
  movq 0x21d23a(%rip), %rdi  #  28    0x408175  7      OPC=1161  
  callq .__vfprintf_chk_plt  #  29    0x40817c  5      OPC=260   
  movl $0xa, %edi            #  30    0x408181  5      OPC=1154  
  callq .putchar_plt         #  31    0x408186  5      OPC=260   
  addq $0xd8, %rsp           #  32    0x40818b  7      OPC=69    
  retq                       #  33    0x408192  1      OPC=1978  
  nop                        #  34    0x408193  1      OPC=1343  
  nop                        #  35    0x408194  1      OPC=1343  
  nop                        #  36    0x408195  1      OPC=1343  
                                                                 
.size ReportStatus, .-ReportStatus

