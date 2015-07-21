  .text
  .globl List_Add
  .type List_Add, @function

#! file-offset 0x67180
#! rip-offset  0x27180
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.List_Add:                     #        0x27180  0      OPC=0     
  pushq %r12                   #  1     0x27180  2      OPC=1861  
  pushq %rbx                   #  2     0x27182  1      OPC=1861  
  subl $0x8, %esp              #  3     0x27183  3      OPC=2384  
  addq %r15, %rsp              #  4     0x27186  3      OPC=72    
  movl %edi, %ebx              #  5     0x27189  2      OPC=1157  
  movl %esi, %r12d             #  6     0x2718b  3      OPC=1157  
  movl %ebx, %ebx              #  7     0x2718e  2      OPC=1157  
  movl 0xc(%r15,%rbx,1), %eax  #  8     0x27190  5      OPC=1156  
  movl %ebx, %ebx              #  9     0x27195  2      OPC=1157  
  movl 0x4(%r15,%rbx,1), %edx  #  10    0x27197  5      OPC=1156  
  subl $0x1, %edx              #  11    0x2719c  3      OPC=2384  
  nop                          #  12    0x2719f  1      OPC=1343  
  cmpl %edx, %eax              #  13    0x271a0  2      OPC=472   
  jl .L_271e0                  #  14    0x271a2  6      OPC=913   
  nop                          #  15    0x271a8  1      OPC=1343  
  nop                          #  16    0x271a9  1      OPC=1343  
  movl %ebx, %edi              #  17    0x271aa  2      OPC=1157  
  nop                          #  18    0x271ac  1      OPC=1343  
  nop                          #  19    0x271ad  1      OPC=1343  
  nop                          #  20    0x271ae  1      OPC=1343  
  nop                          #  21    0x271af  1      OPC=1343  
  nop                          #  22    0x271b0  1      OPC=1343  
  nop                          #  23    0x271b1  1      OPC=1343  
  nop                          #  24    0x271b2  1      OPC=1343  
  nop                          #  25    0x271b3  1      OPC=1343  
  nop                          #  26    0x271b4  1      OPC=1343  
  nop                          #  27    0x271b5  1      OPC=1343  
  nop                          #  28    0x271b6  1      OPC=1343  
  nop                          #  29    0x271b7  1      OPC=1343  
  nop                          #  30    0x271b8  1      OPC=1343  
  nop                          #  31    0x271b9  1      OPC=1343  
  nop                          #  32    0x271ba  1      OPC=1343  
  nop                          #  33    0x271bb  1      OPC=1343  
  nop                          #  34    0x271bc  1      OPC=1343  
  nop                          #  35    0x271bd  1      OPC=1343  
  nop                          #  36    0x271be  1      OPC=1343  
  nop                          #  37    0x271bf  1      OPC=1343  
  nop                          #  38    0x271c0  1      OPC=1343  
  callq .MakeRoom              #  39    0x271c1  5      OPC=260   
  movl %ebx, %ebx              #  40    0x271c6  2      OPC=1157  
  movl 0xc(%r15,%rbx,1), %eax  #  41    0x271c8  5      OPC=1156  
  nop                          #  42    0x271cd  1      OPC=1343  
  nop                          #  43    0x271ce  1      OPC=1343  
  nop                          #  44    0x271cf  1      OPC=1343  
  nop                          #  45    0x271d0  1      OPC=1343  
  nop                          #  46    0x271d1  1      OPC=1343  
  nop                          #  47    0x271d2  1      OPC=1343  
  nop                          #  48    0x271d3  1      OPC=1343  
  nop                          #  49    0x271d4  1      OPC=1343  
  nop                          #  50    0x271d5  1      OPC=1343  
  nop                          #  51    0x271d6  1      OPC=1343  
  nop                          #  52    0x271d7  1      OPC=1343  
  nop                          #  53    0x271d8  1      OPC=1343  
  nop                          #  54    0x271d9  1      OPC=1343  
  nop                          #  55    0x271da  1      OPC=1343  
  nop                          #  56    0x271db  1      OPC=1343  
  nop                          #  57    0x271dc  1      OPC=1343  
  nop                          #  58    0x271dd  1      OPC=1343  
  nop                          #  59    0x271de  1      OPC=1343  
  nop                          #  60    0x271df  1      OPC=1343  
  nop                          #  61    0x271e0  1      OPC=1343  
  nop                          #  62    0x271e1  1      OPC=1343  
  nop                          #  63    0x271e2  1      OPC=1343  
  nop                          #  64    0x271e3  1      OPC=1343  
  nop                          #  65    0x271e4  1      OPC=1343  
  nop                          #  66    0x271e5  1      OPC=1343  
.L_271e0:                      #        0x271e6  0      OPC=0     
  movl %ebx, %ebx              #  67    0x271e6  2      OPC=1157  
  movl (%r15,%rbx,1), %edx     #  68    0x271e8  4      OPC=1156  
  addl $0x1, %eax              #  69    0x271ec  3      OPC=65    
  movl %ebx, %ebx              #  70    0x271ef  2      OPC=1157  
  movl %eax, 0xc(%r15,%rbx,1)  #  71    0x271f1  5      OPC=1136  
  leal (%rdx,%rax,4), %eax     #  72    0x271f6  3      OPC=1066  
  movl %eax, %eax              #  73    0x271f9  2      OPC=1157  
  movl %r12d, (%r15,%rax,1)    #  74    0x271fb  4      OPC=1136  
  addl $0x8, %esp              #  75    0x271ff  3      OPC=65    
  addq %r15, %rsp              #  76    0x27202  3      OPC=72    
  popq %rbx                    #  77    0x27205  1      OPC=1694  
  popq %r12                    #  78    0x27206  2      OPC=1694  
  popq %r11                    #  79    0x27208  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  80    0x2720a  7      OPC=131   
  nop                          #  81    0x27211  1      OPC=1343  
  nop                          #  82    0x27212  1      OPC=1343  
  nop                          #  83    0x27213  1      OPC=1343  
  nop                          #  84    0x27214  1      OPC=1343  
  addq %r15, %r11              #  85    0x27215  3      OPC=72    
  jmpq %r11                    #  86    0x27218  3      OPC=928   
  nop                          #  87    0x2721b  1      OPC=1343  
  nop                          #  88    0x2721c  1      OPC=1343  
  nop                          #  89    0x2721d  1      OPC=1343  
  nop                          #  90    0x2721e  1      OPC=1343  
  nop                          #  91    0x2721f  1      OPC=1343  
  nop                          #  92    0x27220  1      OPC=1343  
  nop                          #  93    0x27221  1      OPC=1343  
  nop                          #  94    0x27222  1      OPC=1343  
  nop                          #  95    0x27223  1      OPC=1343  
  nop                          #  96    0x27224  1      OPC=1343  
  nop                          #  97    0x27225  1      OPC=1343  
  nop                          #  98    0x27226  1      OPC=1343  
  nop                          #  99    0x27227  1      OPC=1343  
  nop                          #  100   0x27228  1      OPC=1343  
  nop                          #  101   0x27229  1      OPC=1343  
  nop                          #  102   0x2722a  1      OPC=1343  
  nop                          #  103   0x2722b  1      OPC=1343  
  nop                          #  104   0x2722c  1      OPC=1343  
                                                                  
.size List_Add, .-List_Add

