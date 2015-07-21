  .text
  .globl ScaleOffsetC
  .type ScaleOffsetC, @function

#! file-offset 0x688c0
#! rip-offset  0x288c0
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
.ScaleOffsetC:                   #        0x288c0  0      OPC=0     
  pushq %r14                     #  1     0x288c0  2      OPC=1861  
  pushq %r13                     #  2     0x288c2  2      OPC=1861  
  pushq %r12                     #  3     0x288c4  2      OPC=1861  
  pushq %rbx                     #  4     0x288c6  1      OPC=1861  
  subl $0x18, %esp               #  5     0x288c7  3      OPC=2384  
  addq %r15, %rsp                #  6     0x288ca  3      OPC=72    
  movl %edi, %r14d               #  7     0x288cd  3      OPC=1157  
  movl %esi, %r13d               #  8     0x288d0  3      OPC=1157  
  movl %edx, %r12d               #  9     0x288d3  3      OPC=1157  
  movl %ecx, %ebx                #  10    0x288d6  2      OPC=1157  
  movl %r8d, %esi                #  11    0x288d8  3      OPC=1157  
  movl $0x4, %edi                #  12    0x288db  5      OPC=1154  
  nop                            #  13    0x288e0  1      OPC=1343  
  nop                            #  14    0x288e1  1      OPC=1343  
  nop                            #  15    0x288e2  1      OPC=1343  
  nop                            #  16    0x288e3  1      OPC=1343  
  nop                            #  17    0x288e4  1      OPC=1343  
  nop                            #  18    0x288e5  1      OPC=1343  
  nop                            #  19    0x288e6  1      OPC=1343  
  nop                            #  20    0x288e7  1      OPC=1343  
  nop                            #  21    0x288e8  1      OPC=1343  
  nop                            #  22    0x288e9  1      OPC=1343  
  nop                            #  23    0x288ea  1      OPC=1343  
  nop                            #  24    0x288eb  1      OPC=1343  
  nop                            #  25    0x288ec  1      OPC=1343  
  nop                            #  26    0x288ed  1      OPC=1343  
  nop                            #  27    0x288ee  1      OPC=1343  
  nop                            #  28    0x288ef  1      OPC=1343  
  nop                            #  29    0x288f0  1      OPC=1343  
  nop                            #  30    0x288f1  1      OPC=1343  
  nop                            #  31    0x288f2  1      OPC=1343  
  nop                            #  32    0x288f3  1      OPC=1343  
  nop                            #  33    0x288f4  1      OPC=1343  
  nop                            #  34    0x288f5  1      OPC=1343  
  nop                            #  35    0x288f6  1      OPC=1343  
  nop                            #  36    0x288f7  1      OPC=1343  
  nop                            #  37    0x288f8  1      OPC=1343  
  nop                            #  38    0x288f9  1      OPC=1343  
  nop                            #  39    0x288fa  1      OPC=1343  
  callq .Constraint_Create       #  40    0x288fb  5      OPC=260   
  movl %eax, %eax                #  41    0x28900  2      OPC=1157  
  movl %eax, %eax                #  42    0x28902  2      OPC=1157  
  movl $0x268e0, (%r15,%rax,1)   #  43    0x28904  8      OPC=1135  
  movl %eax, %eax                #  44    0x2890c  2      OPC=1157  
  movl %r14d, 0x18(%r15,%rax,1)  #  45    0x2890e  5      OPC=1136  
  movl %eax, %eax                #  46    0x28913  2      OPC=1157  
  movl %r13d, 0x1c(%r15,%rax,1)  #  47    0x28915  5      OPC=1136  
  nop                            #  48    0x2891a  1      OPC=1343  
  nop                            #  49    0x2891b  1      OPC=1343  
  nop                            #  50    0x2891c  1      OPC=1343  
  nop                            #  51    0x2891d  1      OPC=1343  
  nop                            #  52    0x2891e  1      OPC=1343  
  nop                            #  53    0x2891f  1      OPC=1343  
  movl %eax, %eax                #  54    0x28920  2      OPC=1157  
  movl %r12d, 0x20(%r15,%rax,1)  #  55    0x28922  5      OPC=1136  
  movl %eax, %eax                #  56    0x28927  2      OPC=1157  
  movl %ebx, 0x24(%r15,%rax,1)   #  57    0x28929  5      OPC=1136  
  movl %eax, %eax                #  58    0x2892e  2      OPC=1157  
  movb $0x2, 0xd(%r15,%rax,1)    #  59    0x28930  6      OPC=1140  
  movl %eax, %eax                #  60    0x28936  2      OPC=1157  
  movb $0x3, 0xf(%r15,%rax,1)    #  61    0x28938  6      OPC=1140  
  xchgw %ax, %ax                 #  62    0x2893e  2      OPC=3700  
  movl %eax, %eax                #  63    0x28940  2      OPC=1157  
  movb $0x0, 0x10(%r15,%rax,1)   #  64    0x28942  6      OPC=1140  
  movl %eax, %edi                #  65    0x28948  2      OPC=1157  
  movq %rax, 0x8(%rsp)           #  66    0x2894a  5      OPC=1138  
  nop                            #  67    0x2894f  1      OPC=1343  
  nop                            #  68    0x28950  1      OPC=1343  
  nop                            #  69    0x28951  1      OPC=1343  
  nop                            #  70    0x28952  1      OPC=1343  
  nop                            #  71    0x28953  1      OPC=1343  
  nop                            #  72    0x28954  1      OPC=1343  
  nop                            #  73    0x28955  1      OPC=1343  
  nop                            #  74    0x28956  1      OPC=1343  
  nop                            #  75    0x28957  1      OPC=1343  
  nop                            #  76    0x28958  1      OPC=1343  
  nop                            #  77    0x28959  1      OPC=1343  
  nop                            #  78    0x2895a  1      OPC=1343  
  callq .AddConstraint           #  79    0x2895b  5      OPC=260   
  movq 0x8(%rsp), %rax           #  80    0x28960  5      OPC=1161  
  addl $0x18, %esp               #  81    0x28965  3      OPC=65    
  addq %r15, %rsp                #  82    0x28968  3      OPC=72    
  popq %rbx                      #  83    0x2896b  1      OPC=1694  
  popq %r12                      #  84    0x2896c  2      OPC=1694  
  popq %r13                      #  85    0x2896e  2      OPC=1694  
  popq %r14                      #  86    0x28970  2      OPC=1694  
  popq %r11                      #  87    0x28972  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  88    0x28974  7      OPC=131   
  nop                            #  89    0x2897b  1      OPC=1343  
  nop                            #  90    0x2897c  1      OPC=1343  
  nop                            #  91    0x2897d  1      OPC=1343  
  nop                            #  92    0x2897e  1      OPC=1343  
  addq %r15, %r11                #  93    0x2897f  3      OPC=72    
  jmpq %r11                      #  94    0x28982  3      OPC=928   
  xchgw %ax, %ax                 #  95    0x28985  2      OPC=3700  
                                                                    
.size ScaleOffsetC, .-ScaleOffsetC

