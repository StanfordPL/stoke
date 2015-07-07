  .text
  .globl unpack_key
  .type unpack_key, @function

#! file-offset 0x44d5
#! rip-offset  0x4044d5
#! capacity    61 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.unpack_key:                   #        0x4044d5  0      OPC=0     
  movl %esi, %r9d              #  1     0x4044d5  3      OPC=1157  
  subl $0x1, %r9d              #  2     0x4044d8  4      OPC=2384  
  js .L_40450a                 #  3     0x4044dc  6      OPC=1043  
  nop                          #  4     0x4044e2  1      OPC=1343  
  nop                          #  5     0x4044e3  1      OPC=1343  
  movl %r9d, %r8d              #  6     0x4044e4  3      OPC=1157  
  notq %r8                     #  7     0x4044e7  3      OPC=1354  
  xorl %eax, %eax              #  8     0x4044ea  2      OPC=3758  
  movslq %r9d, %r9             #  9     0x4044ec  3      OPC=1289  
  addq %rdx, %r9               #  10    0x4044ef  3      OPC=72    
.L_4044ec:                     #        0x4044f2  0      OPC=0     
  movq %rdi, %rcx              #  11    0x4044f2  3      OPC=1162  
  andl $0x3, %ecx              #  12    0x4044f5  3      OPC=132   
  movzbl 0x40851a(%rcx), %ecx  #  13    0x4044f8  7      OPC=1302  
  movb %cl, (%r9,%rax,1)       #  14    0x4044ff  4      OPC=1141  
  shrq $0x2, %rdi              #  15    0x404503  4      OPC=2315  
  subq $0x1, %rax              #  16    0x404507  4      OPC=2389  
  cmpq %r8, %rax               #  17    0x40450b  3      OPC=477   
  jne .L_4044ec                #  18    0x40450e  6      OPC=963   
  nop                          #  19    0x404514  1      OPC=1343  
  nop                          #  20    0x404515  1      OPC=1343  
.L_40450a:                     #        0x404516  0      OPC=0     
  movslq %esi, %rsi            #  21    0x404516  3      OPC=1289  
  movb $0x0, (%rdx,%rsi,1)     #  22    0x404519  4      OPC=1140  
  retq                         #  23    0x40451d  1      OPC=1978  
                                                                   
.size unpack_key, .-unpack_key

