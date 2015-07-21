  .text
  .globl stringfile_write
  .type stringfile_write, @function

#! file-offset 0x7604
#! rip-offset  0x407604
#! capacity    177 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.stringfile_write:              #        0x407604  0      OPC=0     
  pushq %r12                    #  1     0x407604  2      OPC=1861  
  pushq %rbp                    #  2     0x407606  1      OPC=1861  
  pushq %rbx                    #  3     0x407607  1      OPC=1861  
  movq %rdi, %rbx               #  4     0x407608  3      OPC=1162  
  movq %rdx, %rbp               #  5     0x40760b  3      OPC=1162  
  movl 0xc(%rdi), %eax          #  6     0x40760e  3      OPC=1156  
  testl %eax, %eax              #  7     0x407611  2      OPC=2436  
  jne .L_407627                 #  8     0x407613  6      OPC=963   
  nop                           #  9     0x407619  1      OPC=1343  
  nop                           #  10    0x40761a  1      OPC=1343  
  testq %rdx, %rdx              #  11    0x40761b  3      OPC=2438  
  jne .L_407689                 #  12    0x40761e  6      OPC=963   
  nop                           #  13    0x407624  1      OPC=1343  
  nop                           #  14    0x407625  1      OPC=1343  
  movl $0x1, %edx               #  15    0x407626  5      OPC=1154  
  movl $0x1, %r12d              #  16    0x40762b  6      OPC=1154  
  jmpq .L_40762c                #  17    0x407631  5      OPC=930   
  nop                           #  18    0x407636  1      OPC=1343  
  nop                           #  19    0x407637  1      OPC=1343  
.L_407627:                      #        0x407638  0      OPC=0     
  xorl %edx, %edx               #  20    0x407638  2      OPC=3758  
  xorl %r12d, %r12d             #  21    0x40763a  3      OPC=3758  
.L_40762c:                      #        0x40763d  0      OPC=0     
  movq 0x18(%rbx), %rdi         #  22    0x40763d  4      OPC=1161  
  movq 0x10(%rbx), %rax         #  23    0x407641  4      OPC=1161  
  leaq (%rbp,%rdi,1), %rcx      #  24    0x407645  5      OPC=1069  
  addq %rdx, %rcx               #  25    0x40764a  3      OPC=72    
  cmpq %rax, %rcx               #  26    0x40764d  3      OPC=477   
  jbe .L_407655                 #  27    0x407650  6      OPC=881   
  nop                           #  28    0x407656  1      OPC=1343  
  nop                           #  29    0x407657  1      OPC=1343  
  movslq %r12d, %rcx            #  30    0x407658  3      OPC=1289  
  addq %rdi, %rcx               #  31    0x40765b  3      OPC=72    
  cmpq %rcx, %rax               #  32    0x40765e  3      OPC=477   
  je .L_4076a3                  #  33    0x407661  6      OPC=893   
  nop                           #  34    0x407667  1      OPC=1343  
  nop                           #  35    0x407668  1      OPC=1343  
  subq %rdi, %rax               #  36    0x407669  3      OPC=2391  
  movq %rax, %rbp               #  37    0x40766c  3      OPC=1162  
  subq %rdx, %rbp               #  38    0x40766f  3      OPC=2391  
.L_407655:                      #        0x407672  0      OPC=0     
  addq (%rbx), %rdi             #  39    0x407672  3      OPC=71    
  movq %rbp, %rdx               #  40    0x407675  3      OPC=1162  
  callq .memcpy_plt             #  41    0x407678  5      OPC=260   
  movq %rbp, %rax               #  42    0x40767d  3      OPC=1162  
  addq 0x18(%rbx), %rax         #  43    0x407680  4      OPC=71    
  movq %rax, 0x18(%rbx)         #  44    0x407684  4      OPC=1138  
  cmpq 0x20(%rbx), %rax         #  45    0x407688  4      OPC=476   
  jbe .L_407681                 #  46    0x40768c  6      OPC=881   
  nop                           #  47    0x407692  1      OPC=1343  
  nop                           #  48    0x407693  1      OPC=1343  
  movq %rax, 0x20(%rbx)         #  49    0x407694  4      OPC=1138  
  testl %r12d, %r12d            #  50    0x407698  3      OPC=2436  
  je .L_407681                  #  51    0x40769b  6      OPC=893   
  nop                           #  52    0x4076a1  1      OPC=1343  
  nop                           #  53    0x4076a2  1      OPC=1343  
  movq (%rbx), %rdx             #  54    0x4076a3  3      OPC=1161  
  movb $0x0, (%rdx,%rax,1)      #  55    0x4076a6  4      OPC=1140  
.L_407681:                      #        0x4076aa  0      OPC=0     
  movq %rbp, %rax               #  56    0x4076aa  3      OPC=1162  
  popq %rbx                     #  57    0x4076ad  1      OPC=1694  
  popq %rbp                     #  58    0x4076ae  1      OPC=1694  
  popq %r12                     #  59    0x4076af  2      OPC=1694  
  retq                          #  60    0x4076b1  1      OPC=1978  
.L_407689:                      #        0x4076b2  0      OPC=0     
  cmpb $0x1, -0x1(%rsi,%rdx,1)  #  61    0x4076b2  5      OPC=461   
  sbbq %rdx, %rdx               #  62    0x4076b7  3      OPC=2139  
  addq $0x1, %rdx               #  63    0x4076ba  4      OPC=70    
  cmpb $0x1, -0x1(%rsi,%rbp,1)  #  64    0x4076be  5      OPC=461   
  sbbl %r12d, %r12d             #  65    0x4076c3  3      OPC=2134  
  addl $0x1, %r12d              #  66    0x4076c6  4      OPC=65    
  jmpq .L_40762c                #  67    0x4076ca  5      OPC=930   
  nop                           #  68    0x4076cf  1      OPC=1343  
  nop                           #  69    0x4076d0  1      OPC=1343  
.L_4076a3:                      #        0x4076d1  0      OPC=0     
  callq .__errno_location_plt   #  70    0x4076d1  5      OPC=260   
  movl $0x1c, (%rax)            #  71    0x4076d6  6      OPC=1135  
  xorl %eax, %eax               #  72    0x4076dc  2      OPC=3758  
  popq %rbx                     #  73    0x4076de  1      OPC=1694  
  popq %rbp                     #  74    0x4076df  1      OPC=1694  
  popq %r12                     #  75    0x4076e0  2      OPC=1694  
  retq                          #  76    0x4076e2  1      OPC=1978  
                                                                    
.size stringfile_write, .-stringfile_write

