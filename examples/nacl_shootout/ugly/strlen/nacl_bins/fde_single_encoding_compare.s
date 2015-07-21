  .text
  .globl fde_single_encoding_compare
  .type fde_single_encoding_compare, @function

#! file-offset 0x14f2e0
#! rip-offset  0x10f2e0
#! capacity    224 bytes

# Text                                 #  Line  RIP       Bytes  Opcode    
.fde_single_encoding_compare:          #        0x10f2e0  0      OPC=0     
  movq %rbx, -0x20(%rsp)               #  1     0x10f2e0  5      OPC=1138  
  movl %edi, %ebx                      #  2     0x10f2e5  2      OPC=1157  
  movq %r12, -0x18(%rsp)               #  3     0x10f2e7  5      OPC=1138  
  movq %r13, -0x10(%rsp)               #  4     0x10f2ec  5      OPC=1138  
  movq %r14, -0x8(%rsp)                #  5     0x10f2f1  5      OPC=1138  
  subl $0x38, %esp                     #  6     0x10f2f6  3      OPC=2384  
  addq %r15, %rsp                      #  7     0x10f2f9  3      OPC=72    
  nop                                  #  8     0x10f2fc  1      OPC=1343  
  nop                                  #  9     0x10f2fd  1      OPC=1343  
  nop                                  #  10    0x10f2fe  1      OPC=1343  
  nop                                  #  11    0x10f2ff  1      OPC=1343  
  movl %ebx, %ebx                      #  12    0x10f300  2      OPC=1157  
  movzwl 0x10(%r15,%rbx,1), %edi       #  13    0x10f302  6      OPC=1301  
  movl %esi, %r14d                     #  14    0x10f308  3      OPC=1157  
  movl %ebx, %esi                      #  15    0x10f30b  2      OPC=1157  
  movl %edx, %r13d                     #  16    0x10f30d  3      OPC=1157  
  shrw $0x3, %di                       #  17    0x10f310  4      OPC=2309  
  movzbl %dil, %edi                    #  18    0x10f314  4      OPC=1304  
  nop                                  #  19    0x10f318  1      OPC=1343  
  nop                                  #  20    0x10f319  1      OPC=1343  
  nop                                  #  21    0x10f31a  1      OPC=1343  
  callq .base_from_object              #  22    0x10f31b  5      OPC=260   
  movl %ebx, %ebx                      #  23    0x10f320  2      OPC=1157  
  movzwl 0x10(%r15,%rbx,1), %edi       #  24    0x10f322  6      OPC=1301  
  leal 0xc(%rsp), %ecx                 #  25    0x10f328  4      OPC=1066  
  leal 0x8(%r14), %edx                 #  26    0x10f32c  4      OPC=1066  
  movl %eax, %esi                      #  27    0x10f330  2      OPC=1157  
  movl %eax, %r12d                     #  28    0x10f332  3      OPC=1157  
  shrw $0x3, %di                       #  29    0x10f335  4      OPC=2309  
  movzbl %dil, %edi                    #  30    0x10f339  4      OPC=1304  
  nop                                  #  31    0x10f33d  1      OPC=1343  
  nop                                  #  32    0x10f33e  1      OPC=1343  
  nop                                  #  33    0x10f33f  1      OPC=1343  
  nop                                  #  34    0x10f340  1      OPC=1343  
  nop                                  #  35    0x10f341  1      OPC=1343  
  nop                                  #  36    0x10f342  1      OPC=1343  
  nop                                  #  37    0x10f343  1      OPC=1343  
  nop                                  #  38    0x10f344  1      OPC=1343  
  nop                                  #  39    0x10f345  1      OPC=1343  
  nop                                  #  40    0x10f346  1      OPC=1343  
  nop                                  #  41    0x10f347  1      OPC=1343  
  nop                                  #  42    0x10f348  1      OPC=1343  
  nop                                  #  43    0x10f349  1      OPC=1343  
  nop                                  #  44    0x10f34a  1      OPC=1343  
  nop                                  #  45    0x10f34b  1      OPC=1343  
  nop                                  #  46    0x10f34c  1      OPC=1343  
  nop                                  #  47    0x10f34d  1      OPC=1343  
  nop                                  #  48    0x10f34e  1      OPC=1343  
  nop                                  #  49    0x10f34f  1      OPC=1343  
  nop                                  #  50    0x10f350  1      OPC=1343  
  nop                                  #  51    0x10f351  1      OPC=1343  
  nop                                  #  52    0x10f352  1      OPC=1343  
  nop                                  #  53    0x10f353  1      OPC=1343  
  nop                                  #  54    0x10f354  1      OPC=1343  
  nop                                  #  55    0x10f355  1      OPC=1343  
  nop                                  #  56    0x10f356  1      OPC=1343  
  nop                                  #  57    0x10f357  1      OPC=1343  
  nop                                  #  58    0x10f358  1      OPC=1343  
  nop                                  #  59    0x10f359  1      OPC=1343  
  nop                                  #  60    0x10f35a  1      OPC=1343  
  callq .read_encoded_value_with_base  #  61    0x10f35b  5      OPC=260   
  movl %ebx, %ebx                      #  62    0x10f360  2      OPC=1157  
  movzwl 0x10(%r15,%rbx,1), %edi       #  63    0x10f362  6      OPC=1301  
  leal 0x8(%rsp), %ecx                 #  64    0x10f368  4      OPC=1066  
  leal 0x8(%r13), %edx                 #  65    0x10f36c  4      OPC=1066  
  movl %r12d, %esi                     #  66    0x10f370  3      OPC=1157  
  shrw $0x3, %di                       #  67    0x10f373  4      OPC=2309  
  movzbl %dil, %edi                    #  68    0x10f377  4      OPC=1304  
  callq .read_encoded_value_with_base  #  69    0x10f37b  5      OPC=260   
  movl 0x8(%rsp), %edx                 #  70    0x10f380  4      OPC=1156  
  cmpl %edx, 0xc(%rsp)                 #  71    0x10f384  4      OPC=457   
  movl $0x1, %eax                      #  72    0x10f388  5      OPC=1154  
  movq 0x18(%rsp), %rbx                #  73    0x10f38d  5      OPC=1161  
  movq 0x20(%rsp), %r12                #  74    0x10f392  5      OPC=1161  
  movq 0x28(%rsp), %r13                #  75    0x10f397  5      OPC=1161  
  nop                                  #  76    0x10f39c  1      OPC=1343  
  nop                                  #  77    0x10f39d  1      OPC=1343  
  nop                                  #  78    0x10f39e  1      OPC=1343  
  nop                                  #  79    0x10f39f  1      OPC=1343  
  movq 0x30(%rsp), %r14                #  80    0x10f3a0  5      OPC=1161  
  sbbl %ecx, %ecx                      #  81    0x10f3a5  2      OPC=2134  
  cmpl %edx, 0xc(%rsp)                 #  82    0x10f3a7  4      OPC=457   
  cmovbel %ecx, %eax                   #  83    0x10f3ab  3      OPC=290   
  addl $0x38, %esp                     #  84    0x10f3ae  3      OPC=65    
  addq %r15, %rsp                      #  85    0x10f3b1  3      OPC=72    
  popq %r11                            #  86    0x10f3b4  2      OPC=1694  
  andl $0xffffffe0, %r11d              #  87    0x10f3b6  7      OPC=131   
  nop                                  #  88    0x10f3bd  1      OPC=1343  
  nop                                  #  89    0x10f3be  1      OPC=1343  
  nop                                  #  90    0x10f3bf  1      OPC=1343  
  nop                                  #  91    0x10f3c0  1      OPC=1343  
  addq %r15, %r11                      #  92    0x10f3c1  3      OPC=72    
  jmpq %r11                            #  93    0x10f3c4  3      OPC=928   
                                                                           
.size fde_single_encoding_compare, .-fde_single_encoding_compare

