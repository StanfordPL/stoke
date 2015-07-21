  .text
  .globl fprintf
  .type fprintf, @function

#! file-offset 0x15ac00
#! rip-offset  0x11ac00
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
.fprintf:                           #        0x11ac00  0      OPC=0     
  movq %rbx, -0x18(%rsp)            #  1     0x11ac00  5      OPC=1138  
  movq %r12, -0x10(%rsp)            #  2     0x11ac05  5      OPC=1138  
  movl %edi, %ebx                   #  3     0x11ac0a  2      OPC=1157  
  movq %r13, -0x8(%rsp)             #  4     0x11ac0c  5      OPC=1138  
  subl $0xd8, %esp                  #  5     0x11ac11  6      OPC=2383  
  addq %r15, %rsp                   #  6     0x11ac17  3      OPC=72    
  movl %esi, %r12d                  #  7     0x11ac1a  3      OPC=1157  
  nop                               #  8     0x11ac1d  1      OPC=1343  
  nop                               #  9     0x11ac1e  1      OPC=1343  
  nop                               #  10    0x11ac1f  1      OPC=1343  
  leal 0xbf(%rsp), %eax             #  11    0x11ac20  7      OPC=1066  
  movq %rdx, 0x20(%rsp)             #  12    0x11ac27  5      OPC=1138  
  movq %rcx, 0x28(%rsp)             #  13    0x11ac2c  5      OPC=1138  
  movq %r8, 0x30(%rsp)              #  14    0x11ac31  5      OPC=1138  
  movq %r9, 0x38(%rsp)              #  15    0x11ac36  5      OPC=1138  
  nop                               #  16    0x11ac3b  1      OPC=1343  
  nop                               #  17    0x11ac3c  1      OPC=1343  
  nop                               #  18    0x11ac3d  1      OPC=1343  
  nop                               #  19    0x11ac3e  1      OPC=1343  
  nop                               #  20    0x11ac3f  1      OPC=1343  
  movl %eax, %eax                   #  21    0x11ac40  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  22    0x11ac42  6      OPC=1188  
  movl %eax, %eax                   #  23    0x11ac48  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  24    0x11ac4a  6      OPC=1188  
  movl %eax, %eax                   #  25    0x11ac50  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  26    0x11ac52  6      OPC=1188  
  movl %eax, %eax                   #  27    0x11ac58  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  28    0x11ac5a  6      OPC=1188  
  movl %eax, %eax                   #  29    0x11ac60  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  30    0x11ac62  6      OPC=1188  
  movl %eax, %eax                   #  31    0x11ac68  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  32    0x11ac6a  6      OPC=1188  
  movl %eax, %eax                   #  33    0x11ac70  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  34    0x11ac72  6      OPC=1188  
  movl %eax, %eax                   #  35    0x11ac78  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  36    0x11ac7a  6      OPC=1188  
  leal 0xe0(%rsp), %eax             #  37    0x11ac80  7      OPC=1066  
  movl $0x10, (%rsp)                #  38    0x11ac87  7      OPC=1135  
  movl $0x30, 0x4(%rsp)             #  39    0x11ac8e  8      OPC=1135  
  movl %eax, 0x8(%rsp)              #  40    0x11ac96  4      OPC=1136  
  leal 0x10(%rsp), %eax             #  41    0x11ac9a  4      OPC=1066  
  xchgw %ax, %ax                    #  42    0x11ac9e  2      OPC=3700  
  movl %eax, 0xc(%rsp)              #  43    0x11aca0  4      OPC=1136  
  nop                               #  44    0x11aca4  1      OPC=1343  
  nop                               #  45    0x11aca5  1      OPC=1343  
  nop                               #  46    0x11aca6  1      OPC=1343  
  nop                               #  47    0x11aca7  1      OPC=1343  
  nop                               #  48    0x11aca8  1      OPC=1343  
  nop                               #  49    0x11aca9  1      OPC=1343  
  nop                               #  50    0x11acaa  1      OPC=1343  
  nop                               #  51    0x11acab  1      OPC=1343  
  nop                               #  52    0x11acac  1      OPC=1343  
  nop                               #  53    0x11acad  1      OPC=1343  
  nop                               #  54    0x11acae  1      OPC=1343  
  nop                               #  55    0x11acaf  1      OPC=1343  
  nop                               #  56    0x11acb0  1      OPC=1343  
  nop                               #  57    0x11acb1  1      OPC=1343  
  nop                               #  58    0x11acb2  1      OPC=1343  
  nop                               #  59    0x11acb3  1      OPC=1343  
  nop                               #  60    0x11acb4  1      OPC=1343  
  nop                               #  61    0x11acb5  1      OPC=1343  
  nop                               #  62    0x11acb6  1      OPC=1343  
  nop                               #  63    0x11acb7  1      OPC=1343  
  nop                               #  64    0x11acb8  1      OPC=1343  
  nop                               #  65    0x11acb9  1      OPC=1343  
  nop                               #  66    0x11acba  1      OPC=1343  
  callq .__nacl_read_tp             #  67    0x11acbb  5      OPC=260   
  leaq -0x480(%rax), %rax           #  68    0x11acc0  7      OPC=1069  
  movl %esp, %ecx                   #  69    0x11acc7  2      OPC=1157  
  movl %r12d, %edx                  #  70    0x11acc9  3      OPC=1157  
  movl %ebx, %esi                   #  71    0x11accc  2      OPC=1157  
  movl %eax, %eax                   #  72    0x11acce  2      OPC=1157  
  movl (%r15,%rax,1), %edi          #  73    0x11acd0  4      OPC=1156  
  nop                               #  74    0x11acd4  1      OPC=1343  
  nop                               #  75    0x11acd5  1      OPC=1343  
  nop                               #  76    0x11acd6  1      OPC=1343  
  nop                               #  77    0x11acd7  1      OPC=1343  
  nop                               #  78    0x11acd8  1      OPC=1343  
  nop                               #  79    0x11acd9  1      OPC=1343  
  nop                               #  80    0x11acda  1      OPC=1343  
  callq ._vfprintf_r                #  81    0x11acdb  5      OPC=260   
  movq 0xc0(%rsp), %rbx             #  82    0x11ace0  8      OPC=1161  
  movq 0xc8(%rsp), %r12             #  83    0x11ace8  8      OPC=1161  
  movq 0xd0(%rsp), %r13             #  84    0x11acf0  8      OPC=1161  
  nop                               #  85    0x11acf8  1      OPC=1343  
  nop                               #  86    0x11acf9  1      OPC=1343  
  nop                               #  87    0x11acfa  1      OPC=1343  
  nop                               #  88    0x11acfb  1      OPC=1343  
  nop                               #  89    0x11acfc  1      OPC=1343  
  nop                               #  90    0x11acfd  1      OPC=1343  
  nop                               #  91    0x11acfe  1      OPC=1343  
  nop                               #  92    0x11acff  1      OPC=1343  
  addl $0xd8, %esp                  #  93    0x11ad00  6      OPC=64    
  addq %r15, %rsp                   #  94    0x11ad06  3      OPC=72    
  popq %r11                         #  95    0x11ad09  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  96    0x11ad0b  7      OPC=131   
  nop                               #  97    0x11ad12  1      OPC=1343  
  nop                               #  98    0x11ad13  1      OPC=1343  
  nop                               #  99    0x11ad14  1      OPC=1343  
  nop                               #  100   0x11ad15  1      OPC=1343  
  addq %r15, %r11                   #  101   0x11ad16  3      OPC=72    
  jmpq %r11                         #  102   0x11ad19  3      OPC=928   
  nop                               #  103   0x11ad1c  1      OPC=1343  
  nop                               #  104   0x11ad1d  1      OPC=1343  
  nop                               #  105   0x11ad1e  1      OPC=1343  
  nop                               #  106   0x11ad1f  1      OPC=1343  
  nop                               #  107   0x11ad20  1      OPC=1343  
  nop                               #  108   0x11ad21  1      OPC=1343  
  nop                               #  109   0x11ad22  1      OPC=1343  
  nop                               #  110   0x11ad23  1      OPC=1343  
  nop                               #  111   0x11ad24  1      OPC=1343  
  nop                               #  112   0x11ad25  1      OPC=1343  
  nop                               #  113   0x11ad26  1      OPC=1343  
                                                                        
.size fprintf, .-fprintf

