  .text
  .globl InitDeltaBlue
  .type InitDeltaBlue, @function

#! file-offset 0x5edb
#! rip-offset  0x405edb
#! capacity    129 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.InitDeltaBlue:                 #        0x405edb  0      OPC=0     
  subq $0x8, %rsp               #  1     0x405edb  4      OPC=2389  
  movq 0x21f56a(%rip), %rax     #  2     0x405edf  7      OPC=1161  
  testq %rax, %rax              #  3     0x405ee6  3      OPC=2438  
  je .L_405f49                  #  4     0x405ee9  6      OPC=893   
  nop                           #  5     0x405eef  1      OPC=1343  
  nop                           #  6     0x405ef0  1      OPC=1343  
.L_405eeb:                      #        0x405ef1  0      OPC=0     
  movslq 0xc(%rax), %rdx        #  7     0x405ef1  4      OPC=1288  
  cmpl %edx, 0x10(%rax)         #  8     0x405ef5  3      OPC=457   
  jge .L_405f2e                 #  9     0x405ef8  6      OPC=907   
  nop                           #  10    0x405efe  1      OPC=1343  
  nop                           #  11    0x405eff  1      OPC=1343  
  xorl %edi, %edi               #  12    0x405f00  2      OPC=3758  
  testq %rdi, %rdi              #  13    0x405f02  3      OPC=2438  
  je .L_405f40                  #  14    0x405f05  6      OPC=893   
  nop                           #  15    0x405f0b  1      OPC=1343  
  nop                           #  16    0x405f0c  1      OPC=1343  
.L_405efb:                      #        0x405f0d  0      OPC=0     
  callq .FreeVariable           #  17    0x405f0d  5      OPC=260   
  movq 0x21f549(%rip), %rax     #  18    0x405f12  7      OPC=1161  
  movslq 0xc(%rax), %rdx        #  19    0x405f19  4      OPC=1288  
  cmpl %edx, 0x10(%rax)         #  20    0x405f1d  3      OPC=457   
  jge .L_405f2e                 #  21    0x405f20  6      OPC=907   
  nop                           #  22    0x405f26  1      OPC=1343  
  nop                           #  23    0x405f27  1      OPC=1343  
.L_405f10:                      #        0x405f28  0      OPC=0     
  movl $0x0, 0xc(%rax)          #  24    0x405f28  7      OPC=1135  
  movl $0xffffffff, 0x10(%rax)  #  25    0x405f2f  7      OPC=1135  
  movq $0x0, 0x21f51f(%rip)     #  26    0x405f36  11     OPC=1137  
  addq $0x8, %rsp               #  27    0x405f41  4      OPC=70    
  retq                          #  28    0x405f45  1      OPC=1978  
.L_405f2e:                      #        0x405f46  0      OPC=0     
  movq (%rax), %rcx             #  29    0x405f46  3      OPC=1161  
  leal 0x1(%rdx), %esi          #  30    0x405f49  3      OPC=1066  
  movl %esi, 0xc(%rax)          #  31    0x405f4c  3      OPC=1136  
  movq (%rcx,%rdx,8), %rdi      #  32    0x405f4f  4      OPC=1161  
  testq %rdi, %rdi              #  33    0x405f53  3      OPC=2438  
  jne .L_405efb                 #  34    0x405f56  6      OPC=963   
  nop                           #  35    0x405f5c  1      OPC=1343  
  nop                           #  36    0x405f5d  1      OPC=1343  
.L_405f40:                      #        0x405f5e  0      OPC=0     
  movq 0x21f509(%rip), %rax     #  37    0x405f5e  7      OPC=1161  
  jmpq .L_405f10                #  38    0x405f65  5      OPC=930   
  nop                           #  39    0x405f6a  1      OPC=1343  
  nop                           #  40    0x405f6b  1      OPC=1343  
.L_405f49:                      #        0x405f6c  0      OPC=0     
  movl $0x80, %edi              #  41    0x405f6c  5      OPC=1154  
  callq .List_Create            #  42    0x405f71  5      OPC=260   
  movq %rax, 0x21f4f6(%rip)     #  43    0x405f76  7      OPC=1138  
  jmpq .L_405eeb                #  44    0x405f7d  5      OPC=930   
  nop                           #  45    0x405f82  1      OPC=1343  
  nop                           #  46    0x405f83  1      OPC=1343  
                                                                    
.size InitDeltaBlue, .-InitDeltaBlue

