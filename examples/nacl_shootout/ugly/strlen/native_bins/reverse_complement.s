  .text
  .globl reverse_complement
  .type reverse_complement, @function

#! file-offset 0x2048
#! rip-offset  0x402048
#! capacity    147 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.reverse_complement:              #        0x402048  0      OPC=0     
  pushq %rbx                      #  1     0x402048  1      OPC=1861  
  movq %rsi, %r11                 #  2     0x402049  3      OPC=1162  
  subq %rdi, %r11                 #  3     0x40204c  3      OPC=2391  
  movq %rcx, %rax                 #  4     0x40204f  3      OPC=1162  
  cmpq $0x3b, %r11                #  5     0x402052  4      OPC=475   
  jbe .L_402097                   #  6     0x402056  6      OPC=881   
  nop                             #  7     0x40205c  1      OPC=1343  
  nop                             #  8     0x40205d  1      OPC=1343  
.L_402058:                        #        0x40205e  0      OPC=0     
  movq %rax, %rbx                 #  9     0x40205e  3      OPC=1162  
  leaq 0x3c(%rax), %r10           #  10    0x402061  4      OPC=1069  
  movq %rsi, %r8                  #  11    0x402065  3      OPC=1162  
.L_402062:                        #        0x402068  0      OPC=0     
  addq $0x2, %rax                 #  12    0x402068  4      OPC=70    
  subq $0x2, %r8                  #  13    0x40206c  4      OPC=2389  
  movzwl (%r8), %r9d              #  14    0x402070  4      OPC=1301  
  movzwl 0x100(%rdx,%r9,2), %r9d  #  15    0x402074  9      OPC=1301  
  movw %r9w, -0x2(%rax)           #  16    0x40207d  5      OPC=1133  
  cmpq %r10, %rax                 #  17    0x402082  3      OPC=477   
  jne .L_402062                   #  18    0x402085  6      OPC=963   
  nop                             #  19    0x40208b  1      OPC=1343  
  nop                             #  20    0x40208c  1      OPC=1343  
  subq $0x3c, %rsi                #  21    0x40208d  4      OPC=2389  
  leaq 0x3d(%rbx), %rax           #  22    0x402091  4      OPC=1069  
  movb $0xa, -0x1(%rax)           #  23    0x402095  4      OPC=1140  
  subq $0x3c, %r11                #  24    0x402099  4      OPC=2389  
  cmpq $0x3b, %r11                #  25    0x40209d  4      OPC=475   
  ja .L_402058                    #  26    0x4020a1  6      OPC=863   
  nop                             #  27    0x4020a7  1      OPC=1343  
  nop                             #  28    0x4020a8  1      OPC=1343  
.L_402097:                        #        0x4020a9  0      OPC=0     
  testq %r11, %r11                #  29    0x4020a9  3      OPC=2438  
  je .L_4020d1                    #  30    0x4020ac  6      OPC=893   
  nop                             #  31    0x4020b2  1      OPC=1343  
  nop                             #  32    0x4020b3  1      OPC=1343  
  cmpq %rsi, %rdi                 #  33    0x4020b4  3      OPC=477   
  jae .L_4020d6                   #  34    0x4020b7  6      OPC=869   
  nop                             #  35    0x4020bd  1      OPC=1343  
  nop                             #  36    0x4020be  1      OPC=1343  
  movq %rsi, %r8                  #  37    0x4020bf  3      OPC=1162  
  movq %rax, %r9                  #  38    0x4020c2  3      OPC=1162  
.L_4020a7:                        #        0x4020c5  0      OPC=0     
  addq $0x1, %r9                  #  39    0x4020c5  4      OPC=70    
  subq $0x1, %r8                  #  40    0x4020c9  4      OPC=2389  
  movzbl (%r8), %r10d             #  41    0x4020cd  4      OPC=1302  
  movzbl (%rdx,%r10,1), %r10d     #  42    0x4020d1  5      OPC=1302  
  movb %r10b, -0x1(%r9)           #  43    0x4020d6  4      OPC=1141  
  cmpq %rdi, %r8                  #  44    0x4020da  3      OPC=477   
  jne .L_4020a7                   #  45    0x4020dd  6      OPC=963   
  nop                             #  46    0x4020e3  1      OPC=1343  
  nop                             #  47    0x4020e4  1      OPC=1343  
  subq %r8, %rsi                  #  48    0x4020e5  3      OPC=2391  
  movq %rsi, %rdx                 #  49    0x4020e8  3      OPC=1162  
  addq %rax, %rdx                 #  50    0x4020eb  3      OPC=72    
.L_4020ca:                        #        0x4020ee  0      OPC=0     
  leaq 0x1(%rdx), %rax            #  51    0x4020ee  4      OPC=1069  
  movb $0xa, (%rdx)               #  52    0x4020f2  3      OPC=1140  
.L_4020d1:                        #        0x4020f5  0      OPC=0     
  subq %rcx, %rax                 #  53    0x4020f5  3      OPC=2391  
  popq %rbx                       #  54    0x4020f8  1      OPC=1694  
  retq                            #  55    0x4020f9  1      OPC=1978  
.L_4020d6:                        #        0x4020fa  0      OPC=0     
  movq %rax, %rdx                 #  56    0x4020fa  3      OPC=1162  
  jmpq .L_4020ca                  #  57    0x4020fd  5      OPC=930   
  nop                             #  58    0x402102  1      OPC=1343  
  nop                             #  59    0x402103  1      OPC=1343  
                                                                      
.size reverse_complement, .-reverse_complement

