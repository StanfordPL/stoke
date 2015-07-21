  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE
  .type _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, @function

#! file-offset 0x121ca0
#! rip-offset  0xe1ca0
#! capacity    192 bytes

# Text                                                                                                     #  Line  RIP      Bytes  Opcode    
._ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE:  #        0xe1ca0  0      OPC=0     
  movq %rbx, -0x20(%rsp)                                                                                   #  1     0xe1ca0  5      OPC=1138  
  movq %r12, -0x18(%rsp)                                                                                   #  2     0xe1ca5  5      OPC=1138  
  movl %edx, %ebx                                                                                          #  3     0xe1caa  2      OPC=1157  
  movq %r13, -0x10(%rsp)                                                                                   #  4     0xe1cac  5      OPC=1138  
  movq %r14, -0x8(%rsp)                                                                                    #  5     0xe1cb1  5      OPC=1138  
  movl %edi, %r13d                                                                                         #  6     0xe1cb6  3      OPC=1157  
  movl %esi, %r14d                                                                                         #  7     0xe1cb9  3      OPC=1157  
  movl %ecx, %r12d                                                                                         #  8     0xe1cbc  3      OPC=1157  
  nop                                                                                                      #  9     0xe1cbf  1      OPC=1343  
  subl $0x28, %esp                                                                                         #  10    0xe1cc0  3      OPC=2384  
  addq %r15, %rsp                                                                                          #  11    0xe1cc3  3      OPC=72    
  movl %r12d, %ecx                                                                                         #  12    0xe1cc6  3      OPC=1157  
  movl %ebx, %edx                                                                                          #  13    0xe1cc9  2      OPC=1157  
  movl %r14d, %esi                                                                                         #  14    0xe1ccb  3      OPC=1157  
  movl %r13d, %edi                                                                                         #  15    0xe1cce  3      OPC=1157  
  nop                                                                                                      #  16    0xe1cd1  1      OPC=1343  
  nop                                                                                                      #  17    0xe1cd2  1      OPC=1343  
  nop                                                                                                      #  18    0xe1cd3  1      OPC=1343  
  nop                                                                                                      #  19    0xe1cd4  1      OPC=1343  
  nop                                                                                                      #  20    0xe1cd5  1      OPC=1343  
  nop                                                                                                      #  21    0xe1cd6  1      OPC=1343  
  nop                                                                                                      #  22    0xe1cd7  1      OPC=1343  
  nop                                                                                                      #  23    0xe1cd8  1      OPC=1343  
  nop                                                                                                      #  24    0xe1cd9  1      OPC=1343  
  nop                                                                                                      #  25    0xe1cda  1      OPC=1343  
  callq ._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE                  #  26    0xe1cdb  5      OPC=260   
  testb %al, %al                                                                                           #  27    0xe1ce0  2      OPC=2440  
  je .L_e1d20                                                                                              #  28    0xe1ce2  6      OPC=893   
  nop                                                                                                      #  29    0xe1ce8  1      OPC=1343  
  nop                                                                                                      #  30    0xe1ce9  1      OPC=1343  
  movq 0x8(%rsp), %rbx                                                                                     #  31    0xe1cea  5      OPC=1161  
  movq 0x10(%rsp), %r12                                                                                    #  32    0xe1cef  5      OPC=1161  
  movl $0x1, %eax                                                                                          #  33    0xe1cf4  5      OPC=1154  
  movq 0x18(%rsp), %r13                                                                                    #  34    0xe1cf9  5      OPC=1161  
  movq 0x20(%rsp), %r14                                                                                    #  35    0xe1cfe  5      OPC=1161  
  nop                                                                                                      #  36    0xe1d03  1      OPC=1343  
  nop                                                                                                      #  37    0xe1d04  1      OPC=1343  
  nop                                                                                                      #  38    0xe1d05  1      OPC=1343  
  addl $0x28, %esp                                                                                         #  39    0xe1d06  3      OPC=65    
  addq %r15, %rsp                                                                                          #  40    0xe1d09  3      OPC=72    
  popq %r11                                                                                                #  41    0xe1d0c  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                                                  #  42    0xe1d0e  7      OPC=131   
  nop                                                                                                      #  43    0xe1d15  1      OPC=1343  
  nop                                                                                                      #  44    0xe1d16  1      OPC=1343  
  nop                                                                                                      #  45    0xe1d17  1      OPC=1343  
  nop                                                                                                      #  46    0xe1d18  1      OPC=1343  
  addq %r15, %r11                                                                                          #  47    0xe1d19  3      OPC=72    
  jmpq %r11                                                                                                #  48    0xe1d1c  3      OPC=928   
  nop                                                                                                      #  49    0xe1d1f  1      OPC=1343  
  nop                                                                                                      #  50    0xe1d20  1      OPC=1343  
  nop                                                                                                      #  51    0xe1d21  1      OPC=1343  
  nop                                                                                                      #  52    0xe1d22  1      OPC=1343  
  nop                                                                                                      #  53    0xe1d23  1      OPC=1343  
  nop                                                                                                      #  54    0xe1d24  1      OPC=1343  
  nop                                                                                                      #  55    0xe1d25  1      OPC=1343  
  nop                                                                                                      #  56    0xe1d26  1      OPC=1343  
  nop                                                                                                      #  57    0xe1d27  1      OPC=1343  
  nop                                                                                                      #  58    0xe1d28  1      OPC=1343  
  nop                                                                                                      #  59    0xe1d29  1      OPC=1343  
  nop                                                                                                      #  60    0xe1d2a  1      OPC=1343  
  nop                                                                                                      #  61    0xe1d2b  1      OPC=1343  
  nop                                                                                                      #  62    0xe1d2c  1      OPC=1343  
.L_e1d20:                                                                                                  #        0xe1d2d  0      OPC=0     
  movl %r13d, %r13d                                                                                        #  63    0xe1d2d  3      OPC=1157  
  movl 0x8(%r15,%r13,1), %edi                                                                              #  64    0xe1d30  5      OPC=1156  
  movl %r12d, %ecx                                                                                         #  65    0xe1d35  3      OPC=1157  
  movl %ebx, %edx                                                                                          #  66    0xe1d38  2      OPC=1157  
  movl %r14d, %esi                                                                                         #  67    0xe1d3a  3      OPC=1157  
  movq 0x8(%rsp), %rbx                                                                                     #  68    0xe1d3d  5      OPC=1161  
  movq 0x10(%rsp), %r12                                                                                    #  69    0xe1d42  5      OPC=1161  
  movq 0x18(%rsp), %r13                                                                                    #  70    0xe1d47  5      OPC=1161  
  nop                                                                                                      #  71    0xe1d4c  1      OPC=1343  
  movq 0x20(%rsp), %r14                                                                                    #  72    0xe1d4d  5      OPC=1161  
  movl %edi, %edi                                                                                          #  73    0xe1d52  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                                                                 #  74    0xe1d54  4      OPC=1156  
  movl %eax, %eax                                                                                          #  75    0xe1d58  2      OPC=1157  
  movl 0x18(%r15,%rax,1), %eax                                                                             #  76    0xe1d5a  5      OPC=1156  
  addl $0x28, %esp                                                                                         #  77    0xe1d5f  3      OPC=65    
  addq %r15, %rsp                                                                                          #  78    0xe1d62  3      OPC=72    
  andl $0xffffffe0, %eax                                                                                   #  79    0xe1d65  6      OPC=131   
  nop                                                                                                      #  80    0xe1d6b  1      OPC=1343  
  nop                                                                                                      #  81    0xe1d6c  1      OPC=1343  
  nop                                                                                                      #  82    0xe1d6d  1      OPC=1343  
  addq %r15, %rax                                                                                          #  83    0xe1d6e  3      OPC=72    
  jmpq %rax                                                                                                #  84    0xe1d71  2      OPC=928   
                                                                                                                                              
.size _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, .-_ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE

