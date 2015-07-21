  .text
  .globl arrayfile_join
  .type arrayfile_join, @function

#! file-offset 0x7c02
#! rip-offset  0x407c02
#! capacity    211 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.arrayfile_join:              #        0x407c02  0      OPC=0     
  pushq %r15                  #  1     0x407c02  2      OPC=1861  
  pushq %r14                  #  2     0x407c04  2      OPC=1861  
  pushq %r13                  #  3     0x407c06  2      OPC=1861  
  pushq %r12                  #  4     0x407c08  2      OPC=1861  
  pushq %rbp                  #  5     0x407c0a  1      OPC=1861  
  pushq %rbx                  #  6     0x407c0b  1      OPC=1861  
  subq $0x18, %rsp            #  7     0x407c0c  4      OPC=2389  
  movq %rdi, %rbp             #  8     0x407c10  3      OPC=1162  
  movq %rsi, 0x8(%rsp)        #  9     0x407c13  5      OPC=1138  
  testq %rdi, %rdi            #  10    0x407c18  3      OPC=2438  
  je .L_407cba                #  11    0x407c1b  6      OPC=893   
  movl (%rdi), %edx           #  12    0x407c21  2      OPC=1156  
  testl %edx, %edx            #  13    0x407c23  2      OPC=2436  
  jle .L_407cbe               #  14    0x407c25  6      OPC=919   
  movq 0x8(%rdi), %rsi        #  15    0x407c2b  4      OPC=1161  
  xorl %eax, %eax             #  16    0x407c2f  2      OPC=3758  
  xorl %r13d, %r13d           #  17    0x407c31  3      OPC=3758  
.L_407c34:                    #        0x407c34  0      OPC=0     
  addl (%rsi,%rax,4), %r13d   #  18    0x407c34  4      OPC=66    
  addq $0x1, %rax             #  19    0x407c38  4      OPC=70    
  cmpl %eax, %edx             #  20    0x407c3c  2      OPC=472   
  jg .L_407c34                #  21    0x407c3e  6      OPC=901   
  nop                         #  22    0x407c44  1      OPC=1343  
  nop                         #  23    0x407c45  1      OPC=1343  
  leal 0x1(%r13), %edi        #  24    0x407c46  4      OPC=1066  
  movslq %edi, %rdi           #  25    0x407c4a  3      OPC=1289  
  callq .malloc_plt           #  26    0x407c4d  5      OPC=260   
  movq %rax, %r14             #  27    0x407c52  3      OPC=1162  
  testq %rax, %rax            #  28    0x407c55  3      OPC=2438  
  je .L_407cba                #  29    0x407c58  6      OPC=893   
  nop                         #  30    0x407c5e  1      OPC=1343  
  nop                         #  31    0x407c5f  1      OPC=1343  
  movq 0x8(%rbp), %rdx        #  32    0x407c60  4      OPC=1161  
  xorl %ebx, %ebx             #  33    0x407c64  2      OPC=3758  
  xorl %r12d, %r12d           #  34    0x407c66  3      OPC=3758  
.L_407c5d:                    #        0x407c69  0      OPC=0     
  leaq (,%rbx,4), %r15        #  35    0x407c69  8      OPC=1069  
  movslq %r12d, %rdi          #  36    0x407c71  3      OPC=1289  
  addq %r14, %rdi             #  37    0x407c74  3      OPC=72    
  movslq (%rdx,%r15,1), %rdx  #  38    0x407c77  4      OPC=1288  
  movq 0x10(%rbp), %rax       #  39    0x407c7b  4      OPC=1161  
  movq (%rax,%rbx,8), %rsi    #  40    0x407c7f  4      OPC=1161  
  callq .memcpy_plt           #  41    0x407c83  5      OPC=260   
  movq 0x8(%rbp), %rdx        #  42    0x407c88  4      OPC=1161  
  addl (%rdx,%r15,1), %r12d   #  43    0x407c8c  4      OPC=66    
  leal 0x1(%rbx), %eax        #  44    0x407c90  3      OPC=1066  
  addq $0x1, %rbx             #  45    0x407c93  4      OPC=70    
  cmpl %eax, (%rbp)           #  46    0x407c97  3      OPC=457   
  jg .L_407c5d                #  47    0x407c9a  6      OPC=901   
  nop                         #  48    0x407ca0  1      OPC=1343  
  nop                         #  49    0x407ca1  1      OPC=1343  
.L_407c90:                    #        0x407ca2  0      OPC=0     
  movslq %r13d, %rax          #  50    0x407ca2  3      OPC=1289  
  movb $0x0, (%r14,%rax,1)    #  51    0x407ca5  5      OPC=1140  
  cmpq $0x0, 0x8(%rsp)        #  52    0x407caa  6      OPC=459   
  je .L_407ca8                #  53    0x407cb0  6      OPC=893   
  nop                         #  54    0x407cb6  1      OPC=1343  
  nop                         #  55    0x407cb7  1      OPC=1343  
  movq 0x8(%rsp), %rax        #  56    0x407cb8  5      OPC=1161  
  movl %r13d, (%rax)          #  57    0x407cbd  3      OPC=1136  
.L_407ca8:                    #        0x407cc0  0      OPC=0     
  movq %r14, %rax             #  58    0x407cc0  3      OPC=1162  
.L_407cab:                    #        0x407cc3  0      OPC=0     
  addq $0x18, %rsp            #  59    0x407cc3  4      OPC=70    
  popq %rbx                   #  60    0x407cc7  1      OPC=1694  
  popq %rbp                   #  61    0x407cc8  1      OPC=1694  
  popq %r12                   #  62    0x407cc9  2      OPC=1694  
  popq %r13                   #  63    0x407ccb  2      OPC=1694  
  popq %r14                   #  64    0x407ccd  2      OPC=1694  
  popq %r15                   #  65    0x407ccf  2      OPC=1694  
  retq                        #  66    0x407cd1  1      OPC=1978  
.L_407cba:                    #        0x407cd2  0      OPC=0     
  xorl %eax, %eax             #  67    0x407cd2  2      OPC=3758  
  jmpq .L_407cab              #  68    0x407cd4  5      OPC=930   
  nop                         #  69    0x407cd9  1      OPC=1343  
  nop                         #  70    0x407cda  1      OPC=1343  
.L_407cbe:                    #        0x407cdb  0      OPC=0     
  movl $0x1, %edi             #  71    0x407cdb  5      OPC=1154  
  callq .malloc_plt           #  72    0x407ce0  5      OPC=260   
  movq %rax, %r14             #  73    0x407ce5  3      OPC=1162  
  testq %rax, %rax            #  74    0x407ce8  3      OPC=2438  
  je .L_407cba                #  75    0x407ceb  6      OPC=893   
  nop                         #  76    0x407cf1  1      OPC=1343  
  nop                         #  77    0x407cf2  1      OPC=1343  
  xorl %r13d, %r13d           #  78    0x407cf3  3      OPC=3758  
  jmpq .L_407c90              #  79    0x407cf6  5      OPC=930   
  nop                         #  80    0x407cfb  1      OPC=1343  
  nop                         #  81    0x407cfc  1      OPC=1343  
                                                                  
.size arrayfile_join, .-arrayfile_join

