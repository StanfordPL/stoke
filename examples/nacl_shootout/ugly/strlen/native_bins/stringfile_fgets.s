  .text
  .globl stringfile_fgets
  .type stringfile_fgets, @function

#! file-offset 0x7816
#! rip-offset  0x407816
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.stringfile_fgets:              #        0x407816  0      OPC=0     
  pushq %rbp                    #  1     0x407816  1      OPC=1861  
  pushq %rbx                    #  2     0x407817  1      OPC=1861  
  subq $0x8, %rsp               #  3     0x407818  4      OPC=2389  
  movq %rdi, %rbx               #  4     0x40781c  3      OPC=1162  
  movl %esi, %ebp               #  5     0x40781f  2      OPC=1157  
  movq %rdx, %rdi               #  6     0x407821  3      OPC=1162  
  movq 0x20(%rdx), %rcx         #  7     0x407824  4      OPC=1161  
  movq 0x18(%rdx), %rax         #  8     0x407828  4      OPC=1161  
  movslq %esi, %rdx             #  9     0x40782c  3      OPC=1289  
  leaq -0x1(%rax,%rdx,1), %rdx  #  10    0x40782f  5      OPC=1069  
  movq (%rdi), %r9              #  11    0x407834  3      OPC=1161  
  cmpq %rdx, %rcx               #  12    0x407837  3      OPC=477   
  jge .L_40788a                 #  13    0x40783a  6      OPC=907   
  nop                           #  14    0x407840  1      OPC=1343  
  nop                           #  15    0x407841  1      OPC=1343  
  addq %r9, %rcx                #  16    0x407842  3      OPC=72    
.L_40783f:                      #        0x407845  0      OPC=0     
  addq %rax, %r9                #  17    0x407845  3      OPC=72    
  cmpq %r9, %rcx                #  18    0x407848  3      OPC=477   
  jbe .L_407899                 #  19    0x40784b  6      OPC=881   
  nop                           #  20    0x407851  1      OPC=1343  
  nop                           #  21    0x407852  1      OPC=1343  
  movq %r9, %rax                #  22    0x407853  3      OPC=1162  
  cmpb $0xa, (%r9)              #  23    0x407856  4      OPC=461   
  jne .L_407857                 #  24    0x40785a  6      OPC=963   
  nop                           #  25    0x407860  1      OPC=1343  
  nop                           #  26    0x407861  1      OPC=1343  
  jmpq .L_407890                #  27    0x407862  5      OPC=930   
  nop                           #  28    0x407867  1      OPC=1343  
  nop                           #  29    0x407868  1      OPC=1343  
.L_407852:                      #        0x407869  0      OPC=0     
  cmpb $0xa, (%rax)             #  30    0x407869  3      OPC=461   
  je .L_407890                  #  31    0x40786c  6      OPC=893   
  nop                           #  32    0x407872  1      OPC=1343  
  nop                           #  33    0x407873  1      OPC=1343  
.L_407857:                      #        0x407874  0      OPC=0     
  addq $0x1, %rax               #  34    0x407874  4      OPC=70    
  cmpq %rcx, %rax               #  35    0x407878  3      OPC=477   
  jne .L_407852                 #  36    0x40787b  6      OPC=963   
  nop                           #  37    0x407881  1      OPC=1343  
  nop                           #  38    0x407882  1      OPC=1343  
  subq %r9, %rax                #  39    0x407883  3      OPC=2391  
  movq %rax, %rdx               #  40    0x407886  3      OPC=1162  
.L_407866:                      #        0x407889  0      OPC=0     
  movq %rbx, %rsi               #  41    0x407889  3      OPC=1162  
  callq .stringfile_read        #  42    0x40788c  5      OPC=260   
  movq %rax, %rdx               #  43    0x407891  3      OPC=1162  
  cmpl %eax, %ebp               #  44    0x407894  2      OPC=472   
  jle .L_40789d                 #  45    0x407896  6      OPC=919   
  nop                           #  46    0x40789c  1      OPC=1343  
  nop                           #  47    0x40789d  1      OPC=1343  
  cltq                          #  48    0x40789e  2      OPC=263   
  movb $0x0, (%rbx,%rax,1)      #  49    0x4078a0  4      OPC=1140  
  xorl %eax, %eax               #  50    0x4078a4  2      OPC=3758  
  testl %edx, %edx              #  51    0x4078a6  2      OPC=2436  
  cmovneq %rbx, %rax            #  52    0x4078a8  4      OPC=364   
  addq $0x8, %rsp               #  53    0x4078ac  4      OPC=70    
  popq %rbx                     #  54    0x4078b0  1      OPC=1694  
  popq %rbp                     #  55    0x4078b1  1      OPC=1694  
  retq                          #  56    0x4078b2  1      OPC=1978  
.L_40788a:                      #        0x4078b3  0      OPC=0     
  leaq (%r9,%rdx,1), %rcx       #  57    0x4078b3  4      OPC=1069  
  jmpq .L_40783f                #  58    0x4078b7  5      OPC=930   
  nop                           #  59    0x4078bc  1      OPC=1343  
  nop                           #  60    0x4078bd  1      OPC=1343  
.L_407890:                      #        0x4078be  0      OPC=0     
  leaq 0x1(%rax), %rdx          #  61    0x4078be  4      OPC=1069  
  subq %r9, %rdx                #  62    0x4078c2  3      OPC=2391  
  jmpq .L_407866                #  63    0x4078c5  5      OPC=930   
  nop                           #  64    0x4078ca  1      OPC=1343  
  nop                           #  65    0x4078cb  1      OPC=1343  
.L_407899:                      #        0x4078cc  0      OPC=0     
  xorl %edx, %edx               #  66    0x4078cc  2      OPC=3758  
  jmpq .L_407866                #  67    0x4078ce  5      OPC=930   
  nop                           #  68    0x4078d3  1      OPC=1343  
  nop                           #  69    0x4078d4  1      OPC=1343  
.L_40789d:                      #        0x4078d5  0      OPC=0     
  movl $0x408ef0, %ecx          #  70    0x4078d5  5      OPC=1154  
  movl $0x11b, %edx             #  71    0x4078da  5      OPC=1154  
  movl $0x408e68, %esi          #  72    0x4078df  5      OPC=1154  
  movl $0x408e78, %edi          #  73    0x4078e4  5      OPC=1154  
  callq .__assert_fail_plt      #  74    0x4078e9  5      OPC=260   
                                                                    
.size stringfile_fgets, .-stringfile_fgets

