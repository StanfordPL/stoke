  .text
  .globl ht_values_as_vector
  .type ht_values_as_vector, @function

#! file-offset 0x485a
#! rip-offset  0x40485a
#! capacity    231 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.ht_values_as_vector:           #        0x40485a  0      OPC=0     
  pushq %rbp                    #  1     0x40485a  1      OPC=1861  
  pushq %rbx                    #  2     0x40485b  1      OPC=1861  
  subq $0x8, %rsp               #  3     0x40485c  4      OPC=2389  
  movq %rdi, %rbx               #  4     0x404860  3      OPC=1162  
  movl 0x20(%rdi), %ebp         #  5     0x404863  3      OPC=1156  
  movslq %ebp, %rax             #  6     0x404866  3      OPC=1289  
  leaq (%rax,%rax,2), %rdi      #  7     0x404869  4      OPC=1069  
  shlq $0x3, %rdi               #  8     0x40486d  4      OPC=2272  
  callq .malloc_plt             #  9     0x404871  5      OPC=260   
  movl $0x0, 0x10(%rbx)         #  10    0x404876  7      OPC=1135  
  movq $0x0, 0x18(%rbx)         #  11    0x40487d  8      OPC=1137  
  movl (%rbx), %r8d             #  12    0x404885  3      OPC=1156  
  xorl %ecx, %ecx               #  13    0x404888  2      OPC=3758  
  xorl %edx, %edx               #  14    0x40488a  2      OPC=3758  
  jmpq .L_4048ab                #  15    0x40488c  5      OPC=930   
  nop                           #  16    0x404891  1      OPC=1343  
  nop                           #  17    0x404892  1      OPC=1343  
.L_40488e:                      #        0x404893  0      OPC=0     
  addl $0x1, %edx               #  18    0x404893  3      OPC=65    
  movl %edx, 0x10(%rbx)         #  19    0x404896  3      OPC=1136  
  movq %rcx, %rsi               #  20    0x404899  3      OPC=1162  
  addq 0x8(%rbx), %rsi          #  21    0x40489c  4      OPC=71    
  movq (%rsi), %rdi             #  22    0x4048a0  3      OPC=1161  
  addq $0x8, %rcx               #  23    0x4048a3  4      OPC=70    
  testq %rdi, %rdi              #  24    0x4048a7  3      OPC=2438  
  jne .L_404931                 #  25    0x4048aa  6      OPC=963   
.L_4048ab:                      #        0x4048b0  0      OPC=0     
  cmpl %edx, %r8d               #  26    0x4048b0  3      OPC=472   
  jg .L_40488e                  #  27    0x4048b3  6      OPC=901   
  nop                           #  28    0x4048b9  1      OPC=1343  
  nop                           #  29    0x4048ba  1      OPC=1343  
  xorl %ecx, %ecx               #  30    0x4048bb  2      OPC=3758  
.L_4048b2:                      #        0x4048bd  0      OPC=0     
  testl %ebp, %ebp              #  31    0x4048bd  2      OPC=2436  
  jle .L_4048f5                 #  32    0x4048bf  6      OPC=919   
  nop                           #  33    0x4048c5  1      OPC=1343  
  nop                           #  34    0x4048c6  1      OPC=1343  
  movq %rax, %rdx               #  35    0x4048c7  3      OPC=1162  
  leal -0x1(%rbp), %esi         #  36    0x4048ca  3      OPC=1066  
  leaq (%rsi,%rsi,2), %rsi      #  37    0x4048cd  4      OPC=1069  
  leaq 0x18(%rax,%rsi,8), %r11  #  38    0x4048d1  5      OPC=1069  
.L_4048c5:                      #        0x4048d6  0      OPC=0     
  movq (%rcx), %rsi             #  39    0x4048d6  3      OPC=1161  
  movq %rsi, (%rdx)             #  40    0x4048d9  3      OPC=1138  
  movq 0x8(%rcx), %rsi          #  41    0x4048dc  4      OPC=1161  
  movq %rsi, 0x8(%rdx)          #  42    0x4048e0  4      OPC=1138  
  movq 0x10(%rcx), %rcx         #  43    0x4048e4  4      OPC=1161  
  movq %rcx, 0x10(%rdx)         #  44    0x4048e8  4      OPC=1138  
  movq 0x18(%rbx), %rcx         #  45    0x4048ec  4      OPC=1161  
  testq %rcx, %rcx              #  46    0x4048f0  3      OPC=2438  
  je .L_4048fc                  #  47    0x4048f3  6      OPC=893   
  nop                           #  48    0x4048f9  1      OPC=1343  
  nop                           #  49    0x4048fa  1      OPC=1343  
  movq 0x10(%rcx), %rsi         #  50    0x4048fb  4      OPC=1161  
  movq %rsi, 0x18(%rbx)         #  51    0x4048ff  4      OPC=1138  
.L_4048ec:                      #        0x404903  0      OPC=0     
  addq $0x18, %rdx              #  52    0x404903  4      OPC=70    
  cmpq %r11, %rdx               #  53    0x404907  3      OPC=477   
  jne .L_4048c5                 #  54    0x40490a  6      OPC=963   
  nop                           #  55    0x404910  1      OPC=1343  
  nop                           #  56    0x404911  1      OPC=1343  
.L_4048f5:                      #        0x404912  0      OPC=0     
  addq $0x8, %rsp               #  57    0x404912  4      OPC=70    
  popq %rbx                     #  58    0x404916  1      OPC=1694  
  popq %rbp                     #  59    0x404917  1      OPC=1694  
  retq                          #  60    0x404918  1      OPC=1978  
.L_4048fc:                      #        0x404919  0      OPC=0     
  movl 0x10(%rbx), %esi         #  61    0x404919  3      OPC=1156  
  movslq %esi, %rdi             #  62    0x40491c  3      OPC=1289  
  shlq $0x3, %rdi               #  63    0x40491f  4      OPC=2272  
.L_404906:                      #        0x404923  0      OPC=0     
  cmpl %r8d, %esi               #  64    0x404923  3      OPC=472   
  jge .L_4048ec                 #  65    0x404926  6      OPC=907   
  nop                           #  66    0x40492c  1      OPC=1343  
  nop                           #  67    0x40492d  1      OPC=1343  
  addl $0x1, %esi               #  68    0x40492e  3      OPC=65    
  movl %esi, 0x10(%rbx)         #  69    0x404931  3      OPC=1136  
  movq %rdi, %r9                #  70    0x404934  3      OPC=1162  
  addq 0x8(%rbx), %r9           #  71    0x404937  4      OPC=71    
  movq (%r9), %r10              #  72    0x40493b  3      OPC=1161  
  addq $0x8, %rdi               #  73    0x40493e  4      OPC=70    
  testq %r10, %r10              #  74    0x404942  3      OPC=2438  
  je .L_404906                  #  75    0x404945  6      OPC=893   
  nop                           #  76    0x40494b  1      OPC=1343  
  nop                           #  77    0x40494c  1      OPC=1343  
  movq 0x10(%r10), %rcx         #  78    0x40494d  4      OPC=1161  
  movq %rcx, 0x18(%rbx)         #  79    0x404951  4      OPC=1138  
  movq (%r9), %rcx              #  80    0x404955  3      OPC=1161  
  jmpq .L_4048ec                #  81    0x404958  5      OPC=930   
  nop                           #  82    0x40495d  1      OPC=1343  
  nop                           #  83    0x40495e  1      OPC=1343  
.L_404931:                      #        0x40495f  0      OPC=0     
  movq 0x10(%rdi), %rdx         #  84    0x40495f  4      OPC=1161  
  movq %rdx, 0x18(%rbx)         #  85    0x404963  4      OPC=1138  
  movq (%rsi), %rcx             #  86    0x404967  3      OPC=1161  
  jmpq .L_4048b2                #  87    0x40496a  5      OPC=930   
                                                                    
.size ht_values_as_vector, .-ht_values_as_vector

