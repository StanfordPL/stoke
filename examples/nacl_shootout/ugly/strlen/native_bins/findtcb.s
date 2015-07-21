  .text
  .globl findtcb
  .type findtcb, @function

#! file-offset 0x51f8
#! rip-offset  0x4051f8
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.findtcb:                       #        0x4051f8  0      OPC=0     
  subq $0x8, %rsp               #  1     0x4051f8  4      OPC=2389  
  testl %edi, %edi              #  2     0x4051fc  2      OPC=2436  
  jle .L_40521e                 #  3     0x4051fe  6      OPC=919   
  nop                           #  4     0x405204  1      OPC=1343  
  nop                           #  5     0x405205  1      OPC=1343  
  movslq %edi, %rax             #  6     0x405206  3      OPC=1289  
  cmpq %rax, 0x2200f6(%rip)     #  7     0x405209  7      OPC=460   
  jl .L_40521e                  #  8     0x405210  6      OPC=913   
  nop                           #  9     0x405216  1      OPC=1343  
  nop                           #  10    0x405217  1      OPC=1343  
  movq 0x625300(,%rax,8), %rax  #  11    0x405218  8      OPC=1161  
  testq %rax, %rax              #  12    0x405220  3      OPC=2438  
  je .L_40521e                  #  13    0x405223  6      OPC=893   
  nop                           #  14    0x405229  1      OPC=1343  
  nop                           #  15    0x40522a  1      OPC=1343  
  addq $0x8, %rsp               #  16    0x40522b  4      OPC=70    
  retq                          #  17    0x40522f  1      OPC=1978  
.L_40521e:                      #        0x405230  0      OPC=0     
  movl %edi, %edx               #  18    0x405230  2      OPC=1157  
  movl $0x408a78, %esi          #  19    0x405232  5      OPC=1154  
  movl $0x1, %edi               #  20    0x405237  5      OPC=1154  
  xorl %eax, %eax               #  21    0x40523c  2      OPC=3758  
  callq .__printf_chk_plt       #  22    0x40523e  5      OPC=260   
  xorl %eax, %eax               #  23    0x405243  2      OPC=3758  
  addq $0x8, %rsp               #  24    0x405245  4      OPC=70    
  retq                          #  25    0x405249  1      OPC=1978  
                                                                    
.size findtcb, .-findtcb

