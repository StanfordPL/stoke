  .text
  .globl __gmp_tmp_reentrant_alloc
  .type __gmp_tmp_reentrant_alloc, @function

#! file-offset 0x77740
#! rip-offset  0x37740
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.__gmp_tmp_reentrant_alloc:     #        0x37740  0      OPC=0     
  movq %r12, -0x8(%rsp)         #  1     0x37740  5      OPC=1138  
  leal 0x8(%rsi), %r12d         #  2     0x37745  4      OPC=1066  
  movq %rbx, -0x10(%rsp)        #  3     0x37749  5      OPC=1138  
  subl $0x18, %esp              #  4     0x3774e  3      OPC=2384  
  addq %r15, %rsp               #  5     0x37751  3      OPC=72    
  movl %edi, %ebx               #  6     0x37754  2      OPC=1157  
  movl 0x100390f0(%rip), %eax   #  7     0x37756  6      OPC=1156  
  movl %r12d, %edi              #  8     0x3775c  3      OPC=1157  
  nop                           #  9     0x3775f  1      OPC=1343  
  nop                           #  10    0x37760  1      OPC=1343  
  nop                           #  11    0x37761  1      OPC=1343  
  nop                           #  12    0x37762  1      OPC=1343  
  nop                           #  13    0x37763  1      OPC=1343  
  nop                           #  14    0x37764  1      OPC=1343  
  nop                           #  15    0x37765  1      OPC=1343  
  nop                           #  16    0x37766  1      OPC=1343  
  nop                           #  17    0x37767  1      OPC=1343  
  nop                           #  18    0x37768  1      OPC=1343  
  nop                           #  19    0x37769  1      OPC=1343  
  nop                           #  20    0x3776a  1      OPC=1343  
  nop                           #  21    0x3776b  1      OPC=1343  
  nop                           #  22    0x3776c  1      OPC=1343  
  nop                           #  23    0x3776d  1      OPC=1343  
  nop                           #  24    0x3776e  1      OPC=1343  
  nop                           #  25    0x3776f  1      OPC=1343  
  nop                           #  26    0x37770  1      OPC=1343  
  nop                           #  27    0x37771  1      OPC=1343  
  nop                           #  28    0x37772  1      OPC=1343  
  nop                           #  29    0x37773  1      OPC=1343  
  nop                           #  30    0x37774  1      OPC=1343  
  nop                           #  31    0x37775  1      OPC=1343  
  nop                           #  32    0x37776  1      OPC=1343  
  nop                           #  33    0x37777  1      OPC=1343  
  andl $0xffffffe0, %eax        #  34    0x37778  6      OPC=131   
  nop                           #  35    0x3777e  1      OPC=1343  
  nop                           #  36    0x3777f  1      OPC=1343  
  nop                           #  37    0x37780  1      OPC=1343  
  addq %r15, %rax               #  38    0x37781  3      OPC=72    
  callq %rax                    #  39    0x37784  2      OPC=258   
  movl %ebx, %ebx               #  40    0x37786  2      OPC=1157  
  movl (%r15,%rbx,1), %edx      #  41    0x37788  4      OPC=1156  
  movl %eax, %eax               #  42    0x3778c  2      OPC=1157  
  movl %eax, %eax               #  43    0x3778e  2      OPC=1157  
  movl %r12d, 0x4(%r15,%rax,1)  #  44    0x37790  5      OPC=1136  
  movl %eax, %eax               #  45    0x37795  2      OPC=1157  
  movl %edx, (%r15,%rax,1)      #  46    0x37797  4      OPC=1136  
  movl %ebx, %ebx               #  47    0x3779b  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)      #  48    0x3779d  4      OPC=1136  
  addl $0x8, %eax               #  49    0x377a1  3      OPC=65    
  xchgw %ax, %ax                #  50    0x377a4  2      OPC=3700  
  movq 0x8(%rsp), %rbx          #  51    0x377a6  5      OPC=1161  
  movq 0x10(%rsp), %r12         #  52    0x377ab  5      OPC=1161  
  addl $0x18, %esp              #  53    0x377b0  3      OPC=65    
  addq %r15, %rsp               #  54    0x377b3  3      OPC=72    
  popq %r11                     #  55    0x377b6  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  56    0x377b8  7      OPC=131   
  nop                           #  57    0x377bf  1      OPC=1343  
  nop                           #  58    0x377c0  1      OPC=1343  
  nop                           #  59    0x377c1  1      OPC=1343  
  nop                           #  60    0x377c2  1      OPC=1343  
  addq %r15, %r11               #  61    0x377c3  3      OPC=72    
  jmpq %r11                     #  62    0x377c6  3      OPC=928   
  nop                           #  63    0x377c9  1      OPC=1343  
  nop                           #  64    0x377ca  1      OPC=1343  
  nop                           #  65    0x377cb  1      OPC=1343  
  nop                           #  66    0x377cc  1      OPC=1343  
                                                                   
.size __gmp_tmp_reentrant_alloc, .-__gmp_tmp_reentrant_alloc

