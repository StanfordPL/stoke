  .text
  .globl _ZNSt10moneypunctIcLb0EED2Ev
  .type _ZNSt10moneypunctIcLb0EED2Ev, @function

#! file-offset 0x11b020
#! rip-offset  0xdb020
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt10moneypunctIcLb0EED2Ev:     #        0xdb020  0      OPC=0     
  pushq %rbx                       #  1     0xdb020  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xdb021  2      OPC=1157  
  subl $0x10, %esp                 #  3     0xdb023  3      OPC=2384  
  addq %r15, %rsp                  #  4     0xdb026  3      OPC=72    
  movl %ebx, %ebx                  #  5     0xdb029  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb02b  5      OPC=1156  
  movl %ebx, %ebx                  #  7     0xdb030  2      OPC=1157  
  movl $0x1003ae48, (%r15,%rbx,1)  #  8     0xdb032  8      OPC=1135  
  testq %rdi, %rdi                 #  9     0xdb03a  3      OPC=2438  
  nop                              #  10    0xdb03d  1      OPC=1343  
  nop                              #  11    0xdb03e  1      OPC=1343  
  nop                              #  12    0xdb03f  1      OPC=1343  
  je .L_db060                      #  13    0xdb040  6      OPC=893   
  nop                              #  14    0xdb046  1      OPC=1343  
  nop                              #  15    0xdb047  1      OPC=1343  
  movl %edi, %edi                  #  16    0xdb048  2      OPC=1157  
  movl (%r15,%rdi,1), %eax         #  17    0xdb04a  4      OPC=1156  
  movl %eax, %eax                  #  18    0xdb04e  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax      #  19    0xdb050  5      OPC=1156  
  nop                              #  20    0xdb055  1      OPC=1343  
  nop                              #  21    0xdb056  1      OPC=1343  
  nop                              #  22    0xdb057  1      OPC=1343  
  nop                              #  23    0xdb058  1      OPC=1343  
  nop                              #  24    0xdb059  1      OPC=1343  
  nop                              #  25    0xdb05a  1      OPC=1343  
  nop                              #  26    0xdb05b  1      OPC=1343  
  nop                              #  27    0xdb05c  1      OPC=1343  
  nop                              #  28    0xdb05d  1      OPC=1343  
  andl $0xffffffe0, %eax           #  29    0xdb05e  6      OPC=131   
  nop                              #  30    0xdb064  1      OPC=1343  
  nop                              #  31    0xdb065  1      OPC=1343  
  nop                              #  32    0xdb066  1      OPC=1343  
  addq %r15, %rax                  #  33    0xdb067  3      OPC=72    
  callq %rax                       #  34    0xdb06a  2      OPC=258   
.L_db060:                          #        0xdb06c  0      OPC=0     
  movl %ebx, %edi                  #  35    0xdb06c  2      OPC=1157  
  addl $0x10, %esp                 #  36    0xdb06e  3      OPC=65    
  addq %r15, %rsp                  #  37    0xdb071  3      OPC=72    
  popq %rbx                        #  38    0xdb074  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev     #  39    0xdb075  5      OPC=930   
  nop                              #  40    0xdb07a  1      OPC=1343  
  nop                              #  41    0xdb07b  1      OPC=1343  
  nop                              #  42    0xdb07c  1      OPC=1343  
  nop                              #  43    0xdb07d  1      OPC=1343  
  nop                              #  44    0xdb07e  1      OPC=1343  
  nop                              #  45    0xdb07f  1      OPC=1343  
  nop                              #  46    0xdb080  1      OPC=1343  
  nop                              #  47    0xdb081  1      OPC=1343  
  nop                              #  48    0xdb082  1      OPC=1343  
  nop                              #  49    0xdb083  1      OPC=1343  
  nop                              #  50    0xdb084  1      OPC=1343  
  nop                              #  51    0xdb085  1      OPC=1343  
  nop                              #  52    0xdb086  1      OPC=1343  
  nop                              #  53    0xdb087  1      OPC=1343  
  nop                              #  54    0xdb088  1      OPC=1343  
  nop                              #  55    0xdb089  1      OPC=1343  
  nop                              #  56    0xdb08a  1      OPC=1343  
  nop                              #  57    0xdb08b  1      OPC=1343  
  movl %ebx, %edi                  #  58    0xdb08c  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  59    0xdb08e  4      OPC=1136  
  nop                              #  60    0xdb092  1      OPC=1343  
  nop                              #  61    0xdb093  1      OPC=1343  
  nop                              #  62    0xdb094  1      OPC=1343  
  nop                              #  63    0xdb095  1      OPC=1343  
  nop                              #  64    0xdb096  1      OPC=1343  
  nop                              #  65    0xdb097  1      OPC=1343  
  nop                              #  66    0xdb098  1      OPC=1343  
  nop                              #  67    0xdb099  1      OPC=1343  
  nop                              #  68    0xdb09a  1      OPC=1343  
  nop                              #  69    0xdb09b  1      OPC=1343  
  nop                              #  70    0xdb09c  1      OPC=1343  
  nop                              #  71    0xdb09d  1      OPC=1343  
  nop                              #  72    0xdb09e  1      OPC=1343  
  nop                              #  73    0xdb09f  1      OPC=1343  
  nop                              #  74    0xdb0a0  1      OPC=1343  
  nop                              #  75    0xdb0a1  1      OPC=1343  
  nop                              #  76    0xdb0a2  1      OPC=1343  
  nop                              #  77    0xdb0a3  1      OPC=1343  
  nop                              #  78    0xdb0a4  1      OPC=1343  
  nop                              #  79    0xdb0a5  1      OPC=1343  
  nop                              #  80    0xdb0a6  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev    #  81    0xdb0a7  5      OPC=260   
  movl 0x8(%rsp), %eax             #  82    0xdb0ac  4      OPC=1156  
  movl %eax, %edi                  #  83    0xdb0b0  2      OPC=1157  
  nop                              #  84    0xdb0b2  1      OPC=1343  
  nop                              #  85    0xdb0b3  1      OPC=1343  
  nop                              #  86    0xdb0b4  1      OPC=1343  
  nop                              #  87    0xdb0b5  1      OPC=1343  
  nop                              #  88    0xdb0b6  1      OPC=1343  
  nop                              #  89    0xdb0b7  1      OPC=1343  
  nop                              #  90    0xdb0b8  1      OPC=1343  
  nop                              #  91    0xdb0b9  1      OPC=1343  
  nop                              #  92    0xdb0ba  1      OPC=1343  
  nop                              #  93    0xdb0bb  1      OPC=1343  
  nop                              #  94    0xdb0bc  1      OPC=1343  
  nop                              #  95    0xdb0bd  1      OPC=1343  
  nop                              #  96    0xdb0be  1      OPC=1343  
  nop                              #  97    0xdb0bf  1      OPC=1343  
  nop                              #  98    0xdb0c0  1      OPC=1343  
  nop                              #  99    0xdb0c1  1      OPC=1343  
  nop                              #  100   0xdb0c2  1      OPC=1343  
  nop                              #  101   0xdb0c3  1      OPC=1343  
  nop                              #  102   0xdb0c4  1      OPC=1343  
  nop                              #  103   0xdb0c5  1      OPC=1343  
  nop                              #  104   0xdb0c6  1      OPC=1343  
  callq ._Unwind_Resume            #  105   0xdb0c7  5      OPC=260   
                                                                      
.size _ZNSt10moneypunctIcLb0EED2Ev, .-_ZNSt10moneypunctIcLb0EED2Ev

