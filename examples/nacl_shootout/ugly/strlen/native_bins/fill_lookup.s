  .text
  .globl fill_lookup
  .type fill_lookup, @function

#! file-offset 0x1bc4
#! rip-offset  0x401bc4
#! capacity    144 bytes

# Text                                 #  Line  RIP       Bytes  Opcode    
.fill_lookup:                          #        0x401bc4  0      OPC=0     
  testl %edx, %edx                     #  1     0x401bc4  2      OPC=2436  
  jle .L_401bfd                        #  2     0x401bc6  6      OPC=919   
  nop                                  #  3     0x401bcc  1      OPC=1343  
  nop                                  #  4     0x401bcd  1      OPC=1343  
  movq %rsi, %rax                      #  5     0x401bce  3      OPC=1162  
  leal -0x1(%rdx), %ecx                #  6     0x401bd1  3      OPC=1066  
  leaq (%rcx,%rcx,2), %rcx             #  7     0x401bd4  4      OPC=1069  
  leaq 0xc(%rsi,%rcx,4), %rcx          #  8     0x401bd8  5      OPC=1069  
  pxor %xmm0, %xmm0                    #  9     0x401bdd  4      OPC=1867  
  movss 0x67bd(%rip), %xmm2            #  10    0x401be1  8      OPC=1272  
.L_401be3:                             #        0x401be9  0      OPC=0     
  addss 0x4(%rax), %xmm0               #  11    0x401be9  5      OPC=93    
  movaps %xmm0, %xmm1                  #  12    0x401bee  3      OPC=1190  
  mulss %xmm2, %xmm1                   #  13    0x401bf1  4      OPC=1328  
  movss %xmm1, 0x8(%rax)               #  14    0x401bf5  5      OPC=1271  
  addq $0xc, %rax                      #  15    0x401bfa  4      OPC=70    
  cmpq %rcx, %rax                      #  16    0x401bfe  3      OPC=477   
  jne .L_401be3                        #  17    0x401c01  6      OPC=963   
  nop                                  #  18    0x401c07  1      OPC=1343  
  nop                                  #  19    0x401c08  1      OPC=1343  
.L_401bfd:                             #        0x401c09  0      OPC=0     
  movslq %edx, %rdx                    #  20    0x401c09  3      OPC=1289  
  leaq (%rdx,%rdx,2), %rax             #  21    0x401c0c  4      OPC=1069  
  movl $0x457ff000, -0x4(%rsi,%rax,4)  #  22    0x401c10  8      OPC=1135  
  xorl %r8d, %r8d                      #  23    0x401c18  3      OPC=3758  
  xorl %edx, %edx                      #  24    0x401c1b  2      OPC=3758  
.L_401c11:                             #        0x401c1d  0      OPC=0     
  movslq %edx, %rax                    #  25    0x401c1d  3      OPC=1289  
  leaq (%rax,%rax,2), %rax             #  26    0x401c20  4      OPC=1069  
  shlq $0x2, %rax                      #  27    0x401c24  4      OPC=2272  
  leaq (%rsi,%rax,1), %rcx             #  28    0x401c28  4      OPC=1069  
  cvtsi2ssl %r8d, %xmm0                #  29    0x401c2c  5      OPC=571   
  leaq 0xc(%rsi,%rax,1), %rax          #  30    0x401c31  5      OPC=1069  
  ucomiss 0x8(%rcx), %xmm0             #  31    0x401c36  4      OPC=2454  
  jbe .L_401c40                        #  32    0x401c3a  6      OPC=881   
  nop                                  #  33    0x401c40  1      OPC=1343  
  nop                                  #  34    0x401c41  1      OPC=1343  
.L_401c30:                             #        0x401c42  0      OPC=0     
  addl $0x1, %edx                      #  35    0x401c42  3      OPC=65    
  movq %rax, %rcx                      #  36    0x401c45  3      OPC=1162  
  addq $0xc, %rax                      #  37    0x401c48  4      OPC=70    
  ucomiss -0x4(%rax), %xmm0            #  38    0x401c4c  4      OPC=2454  
  ja .L_401c30                         #  39    0x401c50  6      OPC=863   
  nop                                  #  40    0x401c56  1      OPC=1343  
  nop                                  #  41    0x401c57  1      OPC=1343  
.L_401c40:                             #        0x401c58  0      OPC=0     
  movq %rcx, (%rdi,%r8,8)              #  42    0x401c58  4      OPC=1138  
  addq $0x1, %r8                       #  43    0x401c5c  4      OPC=70    
  cmpq $0x1000, %r8                    #  44    0x401c60  7      OPC=474   
  jne .L_401c11                        #  45    0x401c67  6      OPC=963   
  nop                                  #  46    0x401c6d  1      OPC=1343  
  nop                                  #  47    0x401c6e  1      OPC=1343  
  xorl %eax, %eax                      #  48    0x401c6f  2      OPC=3758  
  retq                                 #  49    0x401c71  1      OPC=1978  
                                                                           
.size fill_lookup, .-fill_lookup

