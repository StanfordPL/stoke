  .text
  .globl __gmpn_lshiftc
  .type __gmpn_lshiftc, @function

#! file-offset 0x9a880
#! rip-offset  0x5a880
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.__gmpn_lshiftc:                #        0x5a880  0      OPC=0     
  pushq %r13                    #  1     0x5a880  2      OPC=1861  
  leal (,%rdx,4), %eax          #  2     0x5a882  7      OPC=1066  
  movl %edx, %r8d               #  3     0x5a889  3      OPC=1157  
  pushq %r12                    #  4     0x5a88c  2      OPC=1861  
  leal -0x4(%rax,%rsi,1), %esi  #  5     0x5a88e  4      OPC=1066  
  addl %eax, %edi               #  6     0x5a892  2      OPC=67    
  movl %ecx, %r12d              #  7     0x5a894  3      OPC=1157  
  pushq %rbx                    #  8     0x5a897  1      OPC=1861  
  movl %esi, %esi               #  9     0x5a898  2      OPC=1157  
  movl (%r15,%rsi,1), %eax      #  10    0x5a89a  4      OPC=1156  
  xchgw %ax, %ax                #  11    0x5a89e  2      OPC=3700  
  movl $0x20, %ebx              #  12    0x5a8a0  5      OPC=1154  
  subl %ecx, %ebx               #  13    0x5a8a5  2      OPC=2386  
  movl %eax, %r11d              #  14    0x5a8a7  3      OPC=1157  
  shll %cl, %r11d               #  15    0x5a8aa  3      OPC=2268  
  subl $0x1, %r8d               #  16    0x5a8ad  4      OPC=2384  
  je .L_5a900                   #  17    0x5a8b1  6      OPC=893   
  nop                           #  18    0x5a8b7  1      OPC=1343  
  nop                           #  19    0x5a8b8  1      OPC=1343  
  movq %rdi, %r9                #  20    0x5a8b9  3      OPC=1162  
  nop                           #  21    0x5a8bc  1      OPC=1343  
  nop                           #  22    0x5a8bd  1      OPC=1343  
  nop                           #  23    0x5a8be  1      OPC=1343  
  nop                           #  24    0x5a8bf  1      OPC=1343  
  nop                           #  25    0x5a8c0  1      OPC=1343  
  nop                           #  26    0x5a8c1  1      OPC=1343  
  nop                           #  27    0x5a8c2  1      OPC=1343  
  nop                           #  28    0x5a8c3  1      OPC=1343  
  nop                           #  29    0x5a8c4  1      OPC=1343  
  nop                           #  30    0x5a8c5  1      OPC=1343  
.L_5a8c0:                       #        0x5a8c6  0      OPC=0     
  subl $0x4, %esi               #  31    0x5a8c6  3      OPC=2384  
  movl %ebx, %ecx               #  32    0x5a8c9  2      OPC=1157  
  subl $0x4, %r9d               #  33    0x5a8cb  4      OPC=2384  
  movl %esi, %esi               #  34    0x5a8cf  2      OPC=1157  
  movl (%r15,%rsi,1), %r10d     #  35    0x5a8d1  4      OPC=1156  
  movl %r10d, %r13d             #  36    0x5a8d5  3      OPC=1157  
  shrl %cl, %r13d               #  37    0x5a8d8  3      OPC=2311  
  movl %r12d, %ecx              #  38    0x5a8db  3      OPC=1157  
  orl %r11d, %r13d              #  39    0x5a8de  3      OPC=1380  
  movl %r10d, %r11d             #  40    0x5a8e1  3      OPC=1157  
  xchgw %ax, %ax                #  41    0x5a8e4  2      OPC=3700  
  notl %r13d                    #  42    0x5a8e6  3      OPC=1353  
  shll %cl, %r11d               #  43    0x5a8e9  3      OPC=2268  
  subl $0x1, %r8d               #  44    0x5a8ec  4      OPC=2384  
  movl %r9d, %r9d               #  45    0x5a8f0  3      OPC=1157  
  movl %r13d, (%r15,%r9,1)      #  46    0x5a8f3  4      OPC=1136  
  jne .L_5a8c0                  #  47    0x5a8f7  6      OPC=963   
  nop                           #  48    0x5a8fd  1      OPC=1343  
  nop                           #  49    0x5a8fe  1      OPC=1343  
  subl $0x2, %edx               #  50    0x5a8ff  3      OPC=2384  
  notl %edx                     #  51    0x5a902  2      OPC=1353  
  leal (%rdi,%rdx,4), %edi      #  52    0x5a904  3      OPC=1066  
  nop                           #  53    0x5a907  1      OPC=1343  
  nop                           #  54    0x5a908  1      OPC=1343  
  nop                           #  55    0x5a909  1      OPC=1343  
  nop                           #  56    0x5a90a  1      OPC=1343  
  nop                           #  57    0x5a90b  1      OPC=1343  
.L_5a900:                       #        0x5a90c  0      OPC=0     
  notl %r11d                    #  58    0x5a90c  3      OPC=1353  
  subl $0x4, %edi               #  59    0x5a90f  3      OPC=2384  
  movl %ebx, %ecx               #  60    0x5a912  2      OPC=1157  
  movl %edi, %edi               #  61    0x5a914  2      OPC=1157  
  movl %r11d, (%r15,%rdi,1)     #  62    0x5a916  4      OPC=1136  
  shrl %cl, %eax                #  63    0x5a91a  2      OPC=2311  
  popq %rbx                     #  64    0x5a91c  1      OPC=1694  
  popq %r12                     #  65    0x5a91d  2      OPC=1694  
  popq %r13                     #  66    0x5a91f  2      OPC=1694  
  popq %r11                     #  67    0x5a921  2      OPC=1694  
  nop                           #  68    0x5a923  1      OPC=1343  
  nop                           #  69    0x5a924  1      OPC=1343  
  nop                           #  70    0x5a925  1      OPC=1343  
  nop                           #  71    0x5a926  1      OPC=1343  
  nop                           #  72    0x5a927  1      OPC=1343  
  nop                           #  73    0x5a928  1      OPC=1343  
  nop                           #  74    0x5a929  1      OPC=1343  
  nop                           #  75    0x5a92a  1      OPC=1343  
  nop                           #  76    0x5a92b  1      OPC=1343  
  andl $0xffffffe0, %r11d       #  77    0x5a92c  7      OPC=131   
  nop                           #  78    0x5a933  1      OPC=1343  
  nop                           #  79    0x5a934  1      OPC=1343  
  nop                           #  80    0x5a935  1      OPC=1343  
  nop                           #  81    0x5a936  1      OPC=1343  
  addq %r15, %r11               #  82    0x5a937  3      OPC=72    
  jmpq %r11                     #  83    0x5a93a  3      OPC=928   
  nop                           #  84    0x5a93d  1      OPC=1343  
  nop                           #  85    0x5a93e  1      OPC=1343  
  nop                           #  86    0x5a93f  1      OPC=1343  
  nop                           #  87    0x5a940  1      OPC=1343  
  nop                           #  88    0x5a941  1      OPC=1343  
  nop                           #  89    0x5a942  1      OPC=1343  
  nop                           #  90    0x5a943  1      OPC=1343  
  nop                           #  91    0x5a944  1      OPC=1343  
  nop                           #  92    0x5a945  1      OPC=1343  
  nop                           #  93    0x5a946  1      OPC=1343  
  nop                           #  94    0x5a947  1      OPC=1343  
  nop                           #  95    0x5a948  1      OPC=1343  
  nop                           #  96    0x5a949  1      OPC=1343  
  nop                           #  97    0x5a94a  1      OPC=1343  
  nop                           #  98    0x5a94b  1      OPC=1343  
  nop                           #  99    0x5a94c  1      OPC=1343  
  nop                           #  100   0x5a94d  1      OPC=1343  
  nop                           #  101   0x5a94e  1      OPC=1343  
  nop                           #  102   0x5a94f  1      OPC=1343  
  nop                           #  103   0x5a950  1      OPC=1343  
  nop                           #  104   0x5a951  1      OPC=1343  
  nop                           #  105   0x5a952  1      OPC=1343  
                                                                   
.size __gmpn_lshiftc, .-__gmpn_lshiftc

