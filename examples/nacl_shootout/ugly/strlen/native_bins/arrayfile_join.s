  .text
  .globl arrayfile_join
  .type arrayfile_join, @function

#! file-offset 0x7c62
#! rip-offset  0x407c62
#! capacity    211 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.arrayfile_join:              #        0x407c62  0      OPC=0     
  pushq %r15                  #  1     0x407c62  2      OPC=1861  
  pushq %r14                  #  2     0x407c64  2      OPC=1861  
  pushq %r13                  #  3     0x407c66  2      OPC=1861  
  pushq %r12                  #  4     0x407c68  2      OPC=1861  
  pushq %rbp                  #  5     0x407c6a  1      OPC=1861  
  pushq %rbx                  #  6     0x407c6b  1      OPC=1861  
  subq $0x18, %rsp            #  7     0x407c6c  4      OPC=2389  
  movq %rdi, %rbp             #  8     0x407c70  3      OPC=1162  
  movq %rsi, 0x8(%rsp)        #  9     0x407c73  5      OPC=1138  
  testq %rdi, %rdi            #  10    0x407c78  3      OPC=2438  
  je .L_407d1a                #  11    0x407c7b  6      OPC=893   
  movl (%rdi), %edx           #  12    0x407c81  2      OPC=1156  
  testl %edx, %edx            #  13    0x407c83  2      OPC=2436  
  jle .L_407d1e               #  14    0x407c85  6      OPC=919   
  movq 0x8(%rdi), %rsi        #  15    0x407c8b  4      OPC=1161  
  xorl %eax, %eax             #  16    0x407c8f  2      OPC=3758  
  xorl %r13d, %r13d           #  17    0x407c91  3      OPC=3758  
.L_407c94:                    #        0x407c94  0      OPC=0     
  addl (%rsi,%rax,4), %r13d   #  18    0x407c94  4      OPC=66    
  addq $0x1, %rax             #  19    0x407c98  4      OPC=70    
  cmpl %eax, %edx             #  20    0x407c9c  2      OPC=472   
  jg .L_407c94                #  21    0x407c9e  6      OPC=901   
  nop                         #  22    0x407ca4  1      OPC=1343  
  nop                         #  23    0x407ca5  1      OPC=1343  
  leal 0x1(%r13), %edi        #  24    0x407ca6  4      OPC=1066  
  movslq %edi, %rdi           #  25    0x407caa  3      OPC=1289  
  callq .malloc_plt           #  26    0x407cad  5      OPC=260   
  movq %rax, %r14             #  27    0x407cb2  3      OPC=1162  
  testq %rax, %rax            #  28    0x407cb5  3      OPC=2438  
  je .L_407d1a                #  29    0x407cb8  6      OPC=893   
  nop                         #  30    0x407cbe  1      OPC=1343  
  nop                         #  31    0x407cbf  1      OPC=1343  
  movq 0x8(%rbp), %rdx        #  32    0x407cc0  4      OPC=1161  
  xorl %ebx, %ebx             #  33    0x407cc4  2      OPC=3758  
  xorl %r12d, %r12d           #  34    0x407cc6  3      OPC=3758  
.L_407cbd:                    #        0x407cc9  0      OPC=0     
  leaq (,%rbx,4), %r15        #  35    0x407cc9  8      OPC=1069  
  movslq %r12d, %rdi          #  36    0x407cd1  3      OPC=1289  
  addq %r14, %rdi             #  37    0x407cd4  3      OPC=72    
  movslq (%rdx,%r15,1), %rdx  #  38    0x407cd7  4      OPC=1288  
  movq 0x10(%rbp), %rax       #  39    0x407cdb  4      OPC=1161  
  movq (%rax,%rbx,8), %rsi    #  40    0x407cdf  4      OPC=1161  
  callq .memcpy_plt           #  41    0x407ce3  5      OPC=260   
  movq 0x8(%rbp), %rdx        #  42    0x407ce8  4      OPC=1161  
  addl (%rdx,%r15,1), %r12d   #  43    0x407cec  4      OPC=66    
  leal 0x1(%rbx), %eax        #  44    0x407cf0  3      OPC=1066  
  addq $0x1, %rbx             #  45    0x407cf3  4      OPC=70    
  cmpl %eax, (%rbp)           #  46    0x407cf7  3      OPC=457   
  jg .L_407cbd                #  47    0x407cfa  6      OPC=901   
  nop                         #  48    0x407d00  1      OPC=1343  
  nop                         #  49    0x407d01  1      OPC=1343  
.L_407cf0:                    #        0x407d02  0      OPC=0     
  movslq %r13d, %rax          #  50    0x407d02  3      OPC=1289  
  movb $0x0, (%r14,%rax,1)    #  51    0x407d05  5      OPC=1140  
  cmpq $0x0, 0x8(%rsp)        #  52    0x407d0a  6      OPC=459   
  je .L_407d08                #  53    0x407d10  6      OPC=893   
  nop                         #  54    0x407d16  1      OPC=1343  
  nop                         #  55    0x407d17  1      OPC=1343  
  movq 0x8(%rsp), %rax        #  56    0x407d18  5      OPC=1161  
  movl %r13d, (%rax)          #  57    0x407d1d  3      OPC=1136  
.L_407d08:                    #        0x407d20  0      OPC=0     
  movq %r14, %rax             #  58    0x407d20  3      OPC=1162  
.L_407d0b:                    #        0x407d23  0      OPC=0     
  addq $0x18, %rsp            #  59    0x407d23  4      OPC=70    
  popq %rbx                   #  60    0x407d27  1      OPC=1694  
  popq %rbp                   #  61    0x407d28  1      OPC=1694  
  popq %r12                   #  62    0x407d29  2      OPC=1694  
  popq %r13                   #  63    0x407d2b  2      OPC=1694  
  popq %r14                   #  64    0x407d2d  2      OPC=1694  
  popq %r15                   #  65    0x407d2f  2      OPC=1694  
  retq                        #  66    0x407d31  1      OPC=1978  
.L_407d1a:                    #        0x407d32  0      OPC=0     
  xorl %eax, %eax             #  67    0x407d32  2      OPC=3758  
  jmpq .L_407d0b              #  68    0x407d34  5      OPC=930   
  nop                         #  69    0x407d39  1      OPC=1343  
  nop                         #  70    0x407d3a  1      OPC=1343  
.L_407d1e:                    #        0x407d3b  0      OPC=0     
  movl $0x1, %edi             #  71    0x407d3b  5      OPC=1154  
  callq .malloc_plt           #  72    0x407d40  5      OPC=260   
  movq %rax, %r14             #  73    0x407d45  3      OPC=1162  
  testq %rax, %rax            #  74    0x407d48  3      OPC=2438  
  je .L_407d1a                #  75    0x407d4b  6      OPC=893   
  nop                         #  76    0x407d51  1      OPC=1343  
  nop                         #  77    0x407d52  1      OPC=1343  
  xorl %r13d, %r13d           #  78    0x407d53  3      OPC=3758  
  jmpq .L_407cf0              #  79    0x407d56  5      OPC=930   
  nop                         #  80    0x407d5b  1      OPC=1343  
  nop                         #  81    0x407d5c  1      OPC=1343  
                                                                  
.size arrayfile_join, .-arrayfile_join

