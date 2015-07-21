  .text
  .globl _ZNKSs4findEcj
  .type _ZNKSs4findEcj, @function

#! file-offset 0xea880
#! rip-offset  0xaa880
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs4findEcj:            #        0xaa880  0      OPC=0     
  movl %edi, %edi           #  1     0xaa880  2      OPC=1157  
  pushq %rbx                #  2     0xaa882  1      OPC=1861  
  movl %edi, %edi           #  3     0xaa883  2      OPC=1157  
  movl (%r15,%rdi,1), %ebx  #  4     0xaa885  4      OPC=1156  
  leal -0xc(%rbx), %eax     #  5     0xaa889  3      OPC=1066  
  movl %eax, %eax           #  6     0xaa88c  2      OPC=1157  
  movl (%r15,%rax,1), %eax  #  7     0xaa88e  4      OPC=1156  
  cmpl %eax, %edx           #  8     0xaa892  2      OPC=472   
  jb .L_aa8c0               #  9     0xaa894  6      OPC=875   
  nop                       #  10    0xaa89a  1      OPC=1343  
  nop                       #  11    0xaa89b  1      OPC=1343  
  nop                       #  12    0xaa89c  1      OPC=1343  
  nop                       #  13    0xaa89d  1      OPC=1343  
  nop                       #  14    0xaa89e  1      OPC=1343  
  nop                       #  15    0xaa89f  1      OPC=1343  
  nop                       #  16    0xaa8a0  1      OPC=1343  
  nop                       #  17    0xaa8a1  1      OPC=1343  
  nop                       #  18    0xaa8a2  1      OPC=1343  
  nop                       #  19    0xaa8a3  1      OPC=1343  
  nop                       #  20    0xaa8a4  1      OPC=1343  
  nop                       #  21    0xaa8a5  1      OPC=1343  
.L_aa8a0:                   #        0xaa8a6  0      OPC=0     
  popq %rbx                 #  22    0xaa8a6  1      OPC=1694  
  popq %r11                 #  23    0xaa8a7  2      OPC=1694  
  movl $0xffffffff, %eax    #  24    0xaa8a9  6      OPC=1155  
  andl $0xffffffe0, %r11d   #  25    0xaa8af  7      OPC=131   
  nop                       #  26    0xaa8b6  1      OPC=1343  
  nop                       #  27    0xaa8b7  1      OPC=1343  
  nop                       #  28    0xaa8b8  1      OPC=1343  
  nop                       #  29    0xaa8b9  1      OPC=1343  
  addq %r15, %r11           #  30    0xaa8ba  3      OPC=72    
  jmpq %r11                 #  31    0xaa8bd  3      OPC=928   
  nop                       #  32    0xaa8c0  1      OPC=1343  
  nop                       #  33    0xaa8c1  1      OPC=1343  
  nop                       #  34    0xaa8c2  1      OPC=1343  
  nop                       #  35    0xaa8c3  1      OPC=1343  
  nop                       #  36    0xaa8c4  1      OPC=1343  
  nop                       #  37    0xaa8c5  1      OPC=1343  
  nop                       #  38    0xaa8c6  1      OPC=1343  
  nop                       #  39    0xaa8c7  1      OPC=1343  
  nop                       #  40    0xaa8c8  1      OPC=1343  
  nop                       #  41    0xaa8c9  1      OPC=1343  
  nop                       #  42    0xaa8ca  1      OPC=1343  
  nop                       #  43    0xaa8cb  1      OPC=1343  
  nop                       #  44    0xaa8cc  1      OPC=1343  
  nop                       #  45    0xaa8cd  1      OPC=1343  
.L_aa8c0:                   #        0xaa8ce  0      OPC=0     
  subl %edx, %eax           #  46    0xaa8ce  2      OPC=2386  
  leal (%rdx,%rbx,1), %edi  #  47    0xaa8d0  3      OPC=1066  
  movsbl %sil, %esi         #  48    0xaa8d3  4      OPC=1282  
  movl %eax, %edx           #  49    0xaa8d7  2      OPC=1157  
  nop                       #  50    0xaa8d9  1      OPC=1343  
  nop                       #  51    0xaa8da  1      OPC=1343  
  nop                       #  52    0xaa8db  1      OPC=1343  
  nop                       #  53    0xaa8dc  1      OPC=1343  
  nop                       #  54    0xaa8dd  1      OPC=1343  
  nop                       #  55    0xaa8de  1      OPC=1343  
  nop                       #  56    0xaa8df  1      OPC=1343  
  nop                       #  57    0xaa8e0  1      OPC=1343  
  nop                       #  58    0xaa8e1  1      OPC=1343  
  nop                       #  59    0xaa8e2  1      OPC=1343  
  nop                       #  60    0xaa8e3  1      OPC=1343  
  nop                       #  61    0xaa8e4  1      OPC=1343  
  nop                       #  62    0xaa8e5  1      OPC=1343  
  nop                       #  63    0xaa8e6  1      OPC=1343  
  nop                       #  64    0xaa8e7  1      OPC=1343  
  nop                       #  65    0xaa8e8  1      OPC=1343  
  callq .memchr             #  66    0xaa8e9  5      OPC=260   
  movl %eax, %eax           #  67    0xaa8ee  2      OPC=1157  
  testq %rax, %rax          #  68    0xaa8f0  3      OPC=2438  
  je .L_aa8a0               #  69    0xaa8f3  6      OPC=893   
  nop                       #  70    0xaa8f9  1      OPC=1343  
  nop                       #  71    0xaa8fa  1      OPC=1343  
  subl %ebx, %eax           #  72    0xaa8fb  2      OPC=2386  
  popq %rbx                 #  73    0xaa8fd  1      OPC=1694  
  popq %r11                 #  74    0xaa8fe  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  75    0xaa900  7      OPC=131   
  nop                       #  76    0xaa907  1      OPC=1343  
  nop                       #  77    0xaa908  1      OPC=1343  
  nop                       #  78    0xaa909  1      OPC=1343  
  nop                       #  79    0xaa90a  1      OPC=1343  
  addq %r15, %r11           #  80    0xaa90b  3      OPC=72    
  jmpq %r11                 #  81    0xaa90e  3      OPC=928   
  nop                       #  82    0xaa911  1      OPC=1343  
  nop                       #  83    0xaa912  1      OPC=1343  
  nop                       #  84    0xaa913  1      OPC=1343  
  nop                       #  85    0xaa914  1      OPC=1343  
  nop                       #  86    0xaa915  1      OPC=1343  
  nop                       #  87    0xaa916  1      OPC=1343  
  nop                       #  88    0xaa917  1      OPC=1343  
  nop                       #  89    0xaa918  1      OPC=1343  
  nop                       #  90    0xaa919  1      OPC=1343  
  nop                       #  91    0xaa91a  1      OPC=1343  
                                                               
.size _ZNKSs4findEcj, .-_ZNKSs4findEcj

