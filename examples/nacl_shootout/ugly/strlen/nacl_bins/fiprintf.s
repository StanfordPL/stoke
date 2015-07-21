  .text
  .globl fiprintf
  .type fiprintf, @function

#! file-offset 0x15a5e0
#! rip-offset  0x11a5e0
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
.fiprintf:                          #        0x11a5e0  0      OPC=0     
  movq %rbx, -0x18(%rsp)            #  1     0x11a5e0  5      OPC=1138  
  movq %r12, -0x10(%rsp)            #  2     0x11a5e5  5      OPC=1138  
  movl %edi, %ebx                   #  3     0x11a5ea  2      OPC=1157  
  movq %r13, -0x8(%rsp)             #  4     0x11a5ec  5      OPC=1138  
  subl $0xd8, %esp                  #  5     0x11a5f1  6      OPC=2383  
  addq %r15, %rsp                   #  6     0x11a5f7  3      OPC=72    
  movl %esi, %r12d                  #  7     0x11a5fa  3      OPC=1157  
  nop                               #  8     0x11a5fd  1      OPC=1343  
  nop                               #  9     0x11a5fe  1      OPC=1343  
  nop                               #  10    0x11a5ff  1      OPC=1343  
  leal 0xbf(%rsp), %eax             #  11    0x11a600  7      OPC=1066  
  movq %rdx, 0x20(%rsp)             #  12    0x11a607  5      OPC=1138  
  movq %rcx, 0x28(%rsp)             #  13    0x11a60c  5      OPC=1138  
  movq %r8, 0x30(%rsp)              #  14    0x11a611  5      OPC=1138  
  movq %r9, 0x38(%rsp)              #  15    0x11a616  5      OPC=1138  
  nop                               #  16    0x11a61b  1      OPC=1343  
  nop                               #  17    0x11a61c  1      OPC=1343  
  nop                               #  18    0x11a61d  1      OPC=1343  
  nop                               #  19    0x11a61e  1      OPC=1343  
  nop                               #  20    0x11a61f  1      OPC=1343  
  movl %eax, %eax                   #  21    0x11a620  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  22    0x11a622  6      OPC=1188  
  movl %eax, %eax                   #  23    0x11a628  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  24    0x11a62a  6      OPC=1188  
  movl %eax, %eax                   #  25    0x11a630  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  26    0x11a632  6      OPC=1188  
  movl %eax, %eax                   #  27    0x11a638  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  28    0x11a63a  6      OPC=1188  
  movl %eax, %eax                   #  29    0x11a640  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  30    0x11a642  6      OPC=1188  
  movl %eax, %eax                   #  31    0x11a648  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  32    0x11a64a  6      OPC=1188  
  movl %eax, %eax                   #  33    0x11a650  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  34    0x11a652  6      OPC=1188  
  movl %eax, %eax                   #  35    0x11a658  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  36    0x11a65a  6      OPC=1188  
  leal 0xe0(%rsp), %eax             #  37    0x11a660  7      OPC=1066  
  movl $0x10, (%rsp)                #  38    0x11a667  7      OPC=1135  
  movl $0x30, 0x4(%rsp)             #  39    0x11a66e  8      OPC=1135  
  movl %eax, 0x8(%rsp)              #  40    0x11a676  4      OPC=1136  
  leal 0x10(%rsp), %eax             #  41    0x11a67a  4      OPC=1066  
  xchgw %ax, %ax                    #  42    0x11a67e  2      OPC=3700  
  movl %eax, 0xc(%rsp)              #  43    0x11a680  4      OPC=1136  
  nop                               #  44    0x11a684  1      OPC=1343  
  nop                               #  45    0x11a685  1      OPC=1343  
  nop                               #  46    0x11a686  1      OPC=1343  
  nop                               #  47    0x11a687  1      OPC=1343  
  nop                               #  48    0x11a688  1      OPC=1343  
  nop                               #  49    0x11a689  1      OPC=1343  
  nop                               #  50    0x11a68a  1      OPC=1343  
  nop                               #  51    0x11a68b  1      OPC=1343  
  nop                               #  52    0x11a68c  1      OPC=1343  
  nop                               #  53    0x11a68d  1      OPC=1343  
  nop                               #  54    0x11a68e  1      OPC=1343  
  nop                               #  55    0x11a68f  1      OPC=1343  
  nop                               #  56    0x11a690  1      OPC=1343  
  nop                               #  57    0x11a691  1      OPC=1343  
  nop                               #  58    0x11a692  1      OPC=1343  
  nop                               #  59    0x11a693  1      OPC=1343  
  nop                               #  60    0x11a694  1      OPC=1343  
  nop                               #  61    0x11a695  1      OPC=1343  
  nop                               #  62    0x11a696  1      OPC=1343  
  nop                               #  63    0x11a697  1      OPC=1343  
  nop                               #  64    0x11a698  1      OPC=1343  
  nop                               #  65    0x11a699  1      OPC=1343  
  nop                               #  66    0x11a69a  1      OPC=1343  
  callq .__nacl_read_tp             #  67    0x11a69b  5      OPC=260   
  leaq -0x480(%rax), %rax           #  68    0x11a6a0  7      OPC=1069  
  movl %esp, %ecx                   #  69    0x11a6a7  2      OPC=1157  
  movl %r12d, %edx                  #  70    0x11a6a9  3      OPC=1157  
  movl %ebx, %esi                   #  71    0x11a6ac  2      OPC=1157  
  movl %eax, %eax                   #  72    0x11a6ae  2      OPC=1157  
  movl (%r15,%rax,1), %edi          #  73    0x11a6b0  4      OPC=1156  
  nop                               #  74    0x11a6b4  1      OPC=1343  
  nop                               #  75    0x11a6b5  1      OPC=1343  
  nop                               #  76    0x11a6b6  1      OPC=1343  
  nop                               #  77    0x11a6b7  1      OPC=1343  
  nop                               #  78    0x11a6b8  1      OPC=1343  
  nop                               #  79    0x11a6b9  1      OPC=1343  
  nop                               #  80    0x11a6ba  1      OPC=1343  
  callq ._vfiprintf_r               #  81    0x11a6bb  5      OPC=260   
  movq 0xc0(%rsp), %rbx             #  82    0x11a6c0  8      OPC=1161  
  movq 0xc8(%rsp), %r12             #  83    0x11a6c8  8      OPC=1161  
  movq 0xd0(%rsp), %r13             #  84    0x11a6d0  8      OPC=1161  
  nop                               #  85    0x11a6d8  1      OPC=1343  
  nop                               #  86    0x11a6d9  1      OPC=1343  
  nop                               #  87    0x11a6da  1      OPC=1343  
  nop                               #  88    0x11a6db  1      OPC=1343  
  nop                               #  89    0x11a6dc  1      OPC=1343  
  nop                               #  90    0x11a6dd  1      OPC=1343  
  nop                               #  91    0x11a6de  1      OPC=1343  
  nop                               #  92    0x11a6df  1      OPC=1343  
  addl $0xd8, %esp                  #  93    0x11a6e0  6      OPC=64    
  addq %r15, %rsp                   #  94    0x11a6e6  3      OPC=72    
  popq %r11                         #  95    0x11a6e9  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  96    0x11a6eb  7      OPC=131   
  nop                               #  97    0x11a6f2  1      OPC=1343  
  nop                               #  98    0x11a6f3  1      OPC=1343  
  nop                               #  99    0x11a6f4  1      OPC=1343  
  nop                               #  100   0x11a6f5  1      OPC=1343  
  addq %r15, %r11                   #  101   0x11a6f6  3      OPC=72    
  jmpq %r11                         #  102   0x11a6f9  3      OPC=928   
  nop                               #  103   0x11a6fc  1      OPC=1343  
  nop                               #  104   0x11a6fd  1      OPC=1343  
  nop                               #  105   0x11a6fe  1      OPC=1343  
  nop                               #  106   0x11a6ff  1      OPC=1343  
  nop                               #  107   0x11a700  1      OPC=1343  
  nop                               #  108   0x11a701  1      OPC=1343  
  nop                               #  109   0x11a702  1      OPC=1343  
  nop                               #  110   0x11a703  1      OPC=1343  
  nop                               #  111   0x11a704  1      OPC=1343  
  nop                               #  112   0x11a705  1      OPC=1343  
  nop                               #  113   0x11a706  1      OPC=1343  
                                                                        
.size fiprintf, .-fiprintf

