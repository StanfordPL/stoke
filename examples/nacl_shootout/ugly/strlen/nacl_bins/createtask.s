  .text
  .globl createtask
  .type createtask, @function

#! file-offset 0x65a20
#! rip-offset  0x25a20
#! capacity    224 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
.createtask:                          #        0x25a20  0      OPC=0     
  pushq %r14                          #  1     0x25a20  2      OPC=1861  
  pushq %r13                          #  2     0x25a22  2      OPC=1861  
  pushq %r12                          #  3     0x25a24  2      OPC=1861  
  pushq %rbx                          #  4     0x25a26  1      OPC=1861  
  subl $0x18, %esp                    #  5     0x25a27  3      OPC=2384  
  addq %r15, %rsp                     #  6     0x25a2a  3      OPC=72    
  movl %edi, %ebx                     #  7     0x25a2d  2      OPC=1157  
  movl %esi, %r12d                    #  8     0x25a2f  3      OPC=1157  
  movl %ecx, %r13d                    #  9     0x25a32  3      OPC=1157  
  movl %r9d, %r14d                    #  10    0x25a35  3      OPC=1157  
  movl %edx, %edx                     #  11    0x25a38  2      OPC=1157  
  movl %r8d, %r8d                     #  12    0x25a3a  3      OPC=1157  
  nop                                 #  13    0x25a3d  1      OPC=1343  
  nop                                 #  14    0x25a3e  1      OPC=1343  
  nop                                 #  15    0x25a3f  1      OPC=1343  
  movl $0x20, %edi                    #  16    0x25a40  5      OPC=1154  
  movq %rdx, 0x8(%rsp)                #  17    0x25a45  5      OPC=1138  
  movq %r8, (%rsp)                    #  18    0x25a4a  4      OPC=1138  
  nop                                 #  19    0x25a4e  1      OPC=1343  
  nop                                 #  20    0x25a4f  1      OPC=1343  
  nop                                 #  21    0x25a50  1      OPC=1343  
  nop                                 #  22    0x25a51  1      OPC=1343  
  nop                                 #  23    0x25a52  1      OPC=1343  
  nop                                 #  24    0x25a53  1      OPC=1343  
  nop                                 #  25    0x25a54  1      OPC=1343  
  nop                                 #  26    0x25a55  1      OPC=1343  
  nop                                 #  27    0x25a56  1      OPC=1343  
  nop                                 #  28    0x25a57  1      OPC=1343  
  nop                                 #  29    0x25a58  1      OPC=1343  
  nop                                 #  30    0x25a59  1      OPC=1343  
  nop                                 #  31    0x25a5a  1      OPC=1343  
  callq .malloc                       #  32    0x25a5b  5      OPC=260   
  movl %eax, %eax                     #  33    0x25a60  2      OPC=1157  
  leal (,%rbx,4), %ecx                #  34    0x25a62  7      OPC=1066  
  movslq %ecx, %rcx                   #  35    0x25a69  3      OPC=1289  
  movl %ecx, %ecx                     #  36    0x25a6c  2      OPC=1157  
  movl %eax, 0x10070620(%r15,%rcx,1)  #  37    0x25a6e  8      OPC=1136  
  movl 0x1004b6b0(%rip), %ecx         #  38    0x25a76  6      OPC=1156  
  nop                                 #  39    0x25a7c  1      OPC=1343  
  nop                                 #  40    0x25a7d  1      OPC=1343  
  nop                                 #  41    0x25a7e  1      OPC=1343  
  nop                                 #  42    0x25a7f  1      OPC=1343  
  movl %eax, %eax                     #  43    0x25a80  2      OPC=1157  
  movl %ecx, (%r15,%rax,1)            #  44    0x25a82  4      OPC=1136  
  movl %eax, %eax                     #  45    0x25a86  2      OPC=1157  
  movl %ebx, 0x4(%r15,%rax,1)         #  46    0x25a88  5      OPC=1136  
  movl %eax, %eax                     #  47    0x25a8d  2      OPC=1157  
  movl %r12d, 0x8(%r15,%rax,1)        #  48    0x25a8f  5      OPC=1136  
  movq 0x8(%rsp), %rdx                #  49    0x25a94  5      OPC=1161  
  movl %eax, %eax                     #  50    0x25a99  2      OPC=1157  
  movl %edx, 0xc(%r15,%rax,1)         #  51    0x25a9b  5      OPC=1136  
  movl %eax, %eax                     #  52    0x25aa0  2      OPC=1157  
  movl %r13d, 0x10(%r15,%rax,1)       #  53    0x25aa2  5      OPC=1136  
  movq (%rsp), %r8                    #  54    0x25aa7  4      OPC=1161  
  movl %eax, %eax                     #  55    0x25aab  2      OPC=1157  
  movl %r8d, 0x14(%r15,%rax,1)        #  56    0x25aad  5      OPC=1136  
  movl %eax, %eax                     #  57    0x25ab2  2      OPC=1157  
  movl %r14d, 0x18(%r15,%rax,1)       #  58    0x25ab4  5      OPC=1136  
  movl 0x40(%rsp), %edx               #  59    0x25ab9  4      OPC=1156  
  nop                                 #  60    0x25abd  1      OPC=1343  
  nop                                 #  61    0x25abe  1      OPC=1343  
  nop                                 #  62    0x25abf  1      OPC=1343  
  movl %eax, %eax                     #  63    0x25ac0  2      OPC=1157  
  movl %edx, 0x1c(%r15,%rax,1)        #  64    0x25ac2  5      OPC=1136  
  movl %eax, 0x1004b65f(%rip)         #  65    0x25ac7  6      OPC=1136  
  addl $0x18, %esp                    #  66    0x25acd  3      OPC=65    
  addq %r15, %rsp                     #  67    0x25ad0  3      OPC=72    
  popq %rbx                           #  68    0x25ad3  1      OPC=1694  
  popq %r12                           #  69    0x25ad4  2      OPC=1694  
  popq %r13                           #  70    0x25ad6  2      OPC=1694  
  popq %r14                           #  71    0x25ad8  2      OPC=1694  
  popq %r11                           #  72    0x25ada  2      OPC=1694  
  nop                                 #  73    0x25adc  1      OPC=1343  
  nop                                 #  74    0x25add  1      OPC=1343  
  nop                                 #  75    0x25ade  1      OPC=1343  
  nop                                 #  76    0x25adf  1      OPC=1343  
  andl $0xffffffe0, %r11d             #  77    0x25ae0  7      OPC=131   
  nop                                 #  78    0x25ae7  1      OPC=1343  
  nop                                 #  79    0x25ae8  1      OPC=1343  
  nop                                 #  80    0x25ae9  1      OPC=1343  
  nop                                 #  81    0x25aea  1      OPC=1343  
  addq %r15, %r11                     #  82    0x25aeb  3      OPC=72    
  jmpq %r11                           #  83    0x25aee  3      OPC=928   
  nop                                 #  84    0x25af1  1      OPC=1343  
  nop                                 #  85    0x25af2  1      OPC=1343  
  nop                                 #  86    0x25af3  1      OPC=1343  
  nop                                 #  87    0x25af4  1      OPC=1343  
  nop                                 #  88    0x25af5  1      OPC=1343  
  nop                                 #  89    0x25af6  1      OPC=1343  
  nop                                 #  90    0x25af7  1      OPC=1343  
  nop                                 #  91    0x25af8  1      OPC=1343  
  nop                                 #  92    0x25af9  1      OPC=1343  
  nop                                 #  93    0x25afa  1      OPC=1343  
  nop                                 #  94    0x25afb  1      OPC=1343  
  nop                                 #  95    0x25afc  1      OPC=1343  
  nop                                 #  96    0x25afd  1      OPC=1343  
  nop                                 #  97    0x25afe  1      OPC=1343  
  nop                                 #  98    0x25aff  1      OPC=1343  
  nop                                 #  99    0x25b00  1      OPC=1343  
  nop                                 #  100   0x25b01  1      OPC=1343  
  nop                                 #  101   0x25b02  1      OPC=1343  
  nop                                 #  102   0x25b03  1      OPC=1343  
  nop                                 #  103   0x25b04  1      OPC=1343  
  nop                                 #  104   0x25b05  1      OPC=1343  
  nop                                 #  105   0x25b06  1      OPC=1343  
                                                                         
.size createtask, .-createtask

