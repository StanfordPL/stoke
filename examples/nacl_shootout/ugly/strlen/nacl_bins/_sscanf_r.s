  .text
  .globl _sscanf_r
  .type _sscanf_r, @function

#! file-offset 0x1659e0
#! rip-offset  0x1259e0
#! capacity    320 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
._sscanf_r:                         #        0x1259e0  0      OPC=0     
  pushq %r12                        #  1     0x1259e0  2      OPC=1861  
  movl %edx, %r12d                  #  2     0x1259e2  3      OPC=1157  
  pushq %rbx                        #  3     0x1259e5  1      OPC=1861  
  movl %edi, %ebx                   #  4     0x1259e6  2      OPC=1157  
  movl %esi, %edi                   #  5     0x1259e8  2      OPC=1157  
  subl $0x148, %esp                 #  6     0x1259ea  6      OPC=2383  
  addq %r15, %rsp                   #  7     0x1259f0  3      OPC=72    
  leal 0x13f(%rsp), %eax            #  8     0x1259f3  7      OPC=1066  
  nop                               #  9     0x1259fa  1      OPC=1343  
  nop                               #  10    0x1259fb  1      OPC=1343  
  nop                               #  11    0x1259fc  1      OPC=1343  
  nop                               #  12    0x1259fd  1      OPC=1343  
  nop                               #  13    0x1259fe  1      OPC=1343  
  nop                               #  14    0x1259ff  1      OPC=1343  
  movq %rcx, 0xa8(%rsp)             #  15    0x125a00  8      OPC=1138  
  movq %r8, 0xb0(%rsp)              #  16    0x125a08  8      OPC=1138  
  movq %r9, 0xb8(%rsp)              #  17    0x125a10  8      OPC=1138  
  movl %eax, %eax                   #  18    0x125a18  2      OPC=1157  
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x125a1a  6      OPC=1188  
  movl %eax, %eax                   #  20    0x125a20  2      OPC=1157  
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  21    0x125a22  6      OPC=1188  
  movl %eax, %eax                   #  22    0x125a28  2      OPC=1157  
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x125a2a  6      OPC=1188  
  movl %eax, %eax                   #  24    0x125a30  2      OPC=1157  
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x125a32  6      OPC=1188  
  movl %eax, %eax                   #  26    0x125a38  2      OPC=1157  
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x125a3a  6      OPC=1188  
  movl %eax, %eax                   #  28    0x125a40  2      OPC=1157  
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x125a42  6      OPC=1188  
  movl %eax, %eax                   #  30    0x125a48  2      OPC=1157  
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x125a4a  6      OPC=1188  
  movl %eax, %eax                   #  32    0x125a50  2      OPC=1157  
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x125a52  6      OPC=1188  
  movl %edi, (%rsp)                 #  34    0x125a58  3      OPC=1136  
  movl %edi, 0x10(%rsp)             #  35    0x125a5b  4      OPC=1136  
  nop                               #  36    0x125a5f  1      OPC=1343  
  movw $0x204, 0xc(%rsp)            #  37    0x125a60  7      OPC=1132  
  nop                               #  38    0x125a67  1      OPC=1343  
  nop                               #  39    0x125a68  1      OPC=1343  
  nop                               #  40    0x125a69  1      OPC=1343  
  nop                               #  41    0x125a6a  1      OPC=1343  
  nop                               #  42    0x125a6b  1      OPC=1343  
  nop                               #  43    0x125a6c  1      OPC=1343  
  nop                               #  44    0x125a6d  1      OPC=1343  
  nop                               #  45    0x125a6e  1      OPC=1343  
  nop                               #  46    0x125a6f  1      OPC=1343  
  nop                               #  47    0x125a70  1      OPC=1343  
  nop                               #  48    0x125a71  1      OPC=1343  
  nop                               #  49    0x125a72  1      OPC=1343  
  nop                               #  50    0x125a73  1      OPC=1343  
  nop                               #  51    0x125a74  1      OPC=1343  
  nop                               #  52    0x125a75  1      OPC=1343  
  nop                               #  53    0x125a76  1      OPC=1343  
  nop                               #  54    0x125a77  1      OPC=1343  
  nop                               #  55    0x125a78  1      OPC=1343  
  nop                               #  56    0x125a79  1      OPC=1343  
  nop                               #  57    0x125a7a  1      OPC=1343  
  callq .strlen                     #  58    0x125a7b  5      OPC=260   
  movl %eax, 0x4(%rsp)              #  59    0x125a80  4      OPC=1136  
  movl %eax, 0x14(%rsp)             #  60    0x125a84  4      OPC=1136  
  leal 0x160(%rsp), %eax            #  61    0x125a88  7      OPC=1066  
  leal 0x80(%rsp), %ecx             #  62    0x125a8f  7      OPC=1066  
  movl %esp, %esi                   #  63    0x125a96  2      OPC=1157  
  movl %r12d, %edx                  #  64    0x125a98  3      OPC=1157  
  nop                               #  65    0x125a9b  1      OPC=1343  
  nop                               #  66    0x125a9c  1      OPC=1343  
  nop                               #  67    0x125a9d  1      OPC=1343  
  nop                               #  68    0x125a9e  1      OPC=1343  
  nop                               #  69    0x125a9f  1      OPC=1343  
  movl %eax, 0x88(%rsp)             #  70    0x125aa0  7      OPC=1136  
  leal 0x90(%rsp), %eax             #  71    0x125aa7  7      OPC=1066  
  movl %ebx, %edi                   #  72    0x125aae  2      OPC=1157  
  movl $0x125cc0, 0x20(%rsp)        #  73    0x125ab0  8      OPC=1135  
  movl $0x0, 0x30(%rsp)             #  74    0x125ab8  8      OPC=1135  
  movl $0x0, 0x44(%rsp)             #  75    0x125ac0  8      OPC=1135  
  movw $0xffff, 0xe(%rsp)           #  76    0x125ac8  7      OPC=1132  
  movl $0x18, 0x80(%rsp)            #  77    0x125acf  11     OPC=1135  
  nop                               #  78    0x125ada  1      OPC=1343  
  nop                               #  79    0x125adb  1      OPC=1343  
  nop                               #  80    0x125adc  1      OPC=1343  
  nop                               #  81    0x125add  1      OPC=1343  
  nop                               #  82    0x125ade  1      OPC=1343  
  nop                               #  83    0x125adf  1      OPC=1343  
  movl $0x30, 0x84(%rsp)            #  84    0x125ae0  11     OPC=1135  
  movl %eax, 0x8c(%rsp)             #  85    0x125aeb  7      OPC=1136  
  nop                               #  86    0x125af2  1      OPC=1343  
  nop                               #  87    0x125af3  1      OPC=1343  
  nop                               #  88    0x125af4  1      OPC=1343  
  nop                               #  89    0x125af5  1      OPC=1343  
  nop                               #  90    0x125af6  1      OPC=1343  
  nop                               #  91    0x125af7  1      OPC=1343  
  nop                               #  92    0x125af8  1      OPC=1343  
  nop                               #  93    0x125af9  1      OPC=1343  
  nop                               #  94    0x125afa  1      OPC=1343  
  callq .__ssvfscanf_r              #  95    0x125afb  5      OPC=260   
  addl $0x148, %esp                 #  96    0x125b00  6      OPC=64    
  addq %r15, %rsp                   #  97    0x125b06  3      OPC=72    
  popq %rbx                         #  98    0x125b09  1      OPC=1694  
  popq %r12                         #  99    0x125b0a  2      OPC=1694  
  popq %r11                         #  100   0x125b0c  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  101   0x125b0e  7      OPC=131   
  nop                               #  102   0x125b15  1      OPC=1343  
  nop                               #  103   0x125b16  1      OPC=1343  
  nop                               #  104   0x125b17  1      OPC=1343  
  nop                               #  105   0x125b18  1      OPC=1343  
  addq %r15, %r11                   #  106   0x125b19  3      OPC=72    
  jmpq %r11                         #  107   0x125b1c  3      OPC=928   
  nop                               #  108   0x125b1f  1      OPC=1343  
  nop                               #  109   0x125b20  1      OPC=1343  
  nop                               #  110   0x125b21  1      OPC=1343  
  nop                               #  111   0x125b22  1      OPC=1343  
  nop                               #  112   0x125b23  1      OPC=1343  
  nop                               #  113   0x125b24  1      OPC=1343  
  nop                               #  114   0x125b25  1      OPC=1343  
  nop                               #  115   0x125b26  1      OPC=1343  
                                                                        
.size _sscanf_r, .-_sscanf_r

