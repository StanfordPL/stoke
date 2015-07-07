  .text
  .globl stringfile_write
  .type stringfile_write, @function

#! file-offset 0x75a4
#! rip-offset  0x4075a4
#! capacity    177 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.stringfile_write:              #        0x4075a4  0      OPC=0     
  pushq %r12                    #  1     0x4075a4  2      OPC=1861  
  pushq %rbp                    #  2     0x4075a6  1      OPC=1861  
  pushq %rbx                    #  3     0x4075a7  1      OPC=1861  
  movq %rdi, %rbx               #  4     0x4075a8  3      OPC=1162  
  movq %rdx, %rbp               #  5     0x4075ab  3      OPC=1162  
  movl 0xc(%rdi), %eax          #  6     0x4075ae  3      OPC=1156  
  testl %eax, %eax              #  7     0x4075b1  2      OPC=2436  
  jne .L_4075c7                 #  8     0x4075b3  6      OPC=963   
  nop                           #  9     0x4075b9  1      OPC=1343  
  nop                           #  10    0x4075ba  1      OPC=1343  
  testq %rdx, %rdx              #  11    0x4075bb  3      OPC=2438  
  jne .L_407629                 #  12    0x4075be  6      OPC=963   
  nop                           #  13    0x4075c4  1      OPC=1343  
  nop                           #  14    0x4075c5  1      OPC=1343  
  movl $0x1, %edx               #  15    0x4075c6  5      OPC=1154  
  movl $0x1, %r12d              #  16    0x4075cb  6      OPC=1154  
  jmpq .L_4075cc                #  17    0x4075d1  5      OPC=930   
  nop                           #  18    0x4075d6  1      OPC=1343  
  nop                           #  19    0x4075d7  1      OPC=1343  
.L_4075c7:                      #        0x4075d8  0      OPC=0     
  xorl %edx, %edx               #  20    0x4075d8  2      OPC=3758  
  xorl %r12d, %r12d             #  21    0x4075da  3      OPC=3758  
.L_4075cc:                      #        0x4075dd  0      OPC=0     
  movq 0x18(%rbx), %rdi         #  22    0x4075dd  4      OPC=1161  
  movq 0x10(%rbx), %rax         #  23    0x4075e1  4      OPC=1161  
  leaq (%rbp,%rdi,1), %rcx      #  24    0x4075e5  5      OPC=1069  
  addq %rdx, %rcx               #  25    0x4075ea  3      OPC=72    
  cmpq %rax, %rcx               #  26    0x4075ed  3      OPC=477   
  jbe .L_4075f5                 #  27    0x4075f0  6      OPC=881   
  nop                           #  28    0x4075f6  1      OPC=1343  
  nop                           #  29    0x4075f7  1      OPC=1343  
  movslq %r12d, %rcx            #  30    0x4075f8  3      OPC=1289  
  addq %rdi, %rcx               #  31    0x4075fb  3      OPC=72    
  cmpq %rcx, %rax               #  32    0x4075fe  3      OPC=477   
  je .L_407643                  #  33    0x407601  6      OPC=893   
  nop                           #  34    0x407607  1      OPC=1343  
  nop                           #  35    0x407608  1      OPC=1343  
  subq %rdi, %rax               #  36    0x407609  3      OPC=2391  
  movq %rax, %rbp               #  37    0x40760c  3      OPC=1162  
  subq %rdx, %rbp               #  38    0x40760f  3      OPC=2391  
.L_4075f5:                      #        0x407612  0      OPC=0     
  addq (%rbx), %rdi             #  39    0x407612  3      OPC=71    
  movq %rbp, %rdx               #  40    0x407615  3      OPC=1162  
  callq .memcpy_plt             #  41    0x407618  5      OPC=260   
  movq %rbp, %rax               #  42    0x40761d  3      OPC=1162  
  addq 0x18(%rbx), %rax         #  43    0x407620  4      OPC=71    
  movq %rax, 0x18(%rbx)         #  44    0x407624  4      OPC=1138  
  cmpq 0x20(%rbx), %rax         #  45    0x407628  4      OPC=476   
  jbe .L_407621                 #  46    0x40762c  6      OPC=881   
  nop                           #  47    0x407632  1      OPC=1343  
  nop                           #  48    0x407633  1      OPC=1343  
  movq %rax, 0x20(%rbx)         #  49    0x407634  4      OPC=1138  
  testl %r12d, %r12d            #  50    0x407638  3      OPC=2436  
  je .L_407621                  #  51    0x40763b  6      OPC=893   
  nop                           #  52    0x407641  1      OPC=1343  
  nop                           #  53    0x407642  1      OPC=1343  
  movq (%rbx), %rdx             #  54    0x407643  3      OPC=1161  
  movb $0x0, (%rdx,%rax,1)      #  55    0x407646  4      OPC=1140  
.L_407621:                      #        0x40764a  0      OPC=0     
  movq %rbp, %rax               #  56    0x40764a  3      OPC=1162  
  popq %rbx                     #  57    0x40764d  1      OPC=1694  
  popq %rbp                     #  58    0x40764e  1      OPC=1694  
  popq %r12                     #  59    0x40764f  2      OPC=1694  
  retq                          #  60    0x407651  1      OPC=1978  
.L_407629:                      #        0x407652  0      OPC=0     
  cmpb $0x1, -0x1(%rsi,%rdx,1)  #  61    0x407652  5      OPC=461   
  sbbq %rdx, %rdx               #  62    0x407657  3      OPC=2139  
  addq $0x1, %rdx               #  63    0x40765a  4      OPC=70    
  cmpb $0x1, -0x1(%rsi,%rbp,1)  #  64    0x40765e  5      OPC=461   
  sbbl %r12d, %r12d             #  65    0x407663  3      OPC=2134  
  addl $0x1, %r12d              #  66    0x407666  4      OPC=65    
  jmpq .L_4075cc                #  67    0x40766a  5      OPC=930   
  nop                           #  68    0x40766f  1      OPC=1343  
  nop                           #  69    0x407670  1      OPC=1343  
.L_407643:                      #        0x407671  0      OPC=0     
  callq .__errno_location_plt   #  70    0x407671  5      OPC=260   
  movl $0x1c, (%rax)            #  71    0x407676  6      OPC=1135  
  xorl %eax, %eax               #  72    0x40767c  2      OPC=3758  
  popq %rbx                     #  73    0x40767e  1      OPC=1694  
  popq %rbp                     #  74    0x40767f  1      OPC=1694  
  popq %r12                     #  75    0x407680  2      OPC=1694  
  retq                          #  76    0x407682  1      OPC=1978  
                                                                    
.size stringfile_write, .-stringfile_write

