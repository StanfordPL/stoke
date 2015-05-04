  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE
  .type _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, @function

#! file-offset 0x4b9e0
#! rip-offset  0x4b9e0
#! capacity    192 bytes

# Text                                                                                                     #  Line  RIP      Bytes  
._ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE:  #        0x4b9e0  0      
  movq %rbx, -0x20(%rsp)                                                                                   #  1     0x4b9e0  5      
  movq %r12, -0x18(%rsp)                                                                                   #  2     0x4b9e5  5      
  movl %edx, %ebx                                                                                          #  3     0x4b9ea  2      
  movq %r13, -0x10(%rsp)                                                                                   #  4     0x4b9ec  5      
  movq %r14, -0x8(%rsp)                                                                                    #  5     0x4b9f1  5      
  movl %edi, %r13d                                                                                         #  6     0x4b9f6  3      
  movl %esi, %r14d                                                                                         #  7     0x4b9f9  3      
  movl %ecx, %r12d                                                                                         #  8     0x4b9fc  3      
  nop                                                                                                      #  9     0x4b9ff  1      
  subl $0x28, %esp                                                                                         #  10    0x4ba00  3      
  addq %r15, %rsp                                                                                          #  11    0x4ba03  3      
  movl %r12d, %ecx                                                                                         #  12    0x4ba06  3      
  movl %ebx, %edx                                                                                          #  13    0x4ba09  2      
  movl %r14d, %esi                                                                                         #  14    0x4ba0b  3      
  movl %r13d, %edi                                                                                         #  15    0x4ba0e  3      
  nop                                                                                                      #  16    0x4ba11  1      
  callq ._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE                  #  17    0x4ba12  5      
  testb %al, %al                                                                                           #  18    0x4ba17  2      
  je .L_4ba60                                                                                              #  19    0x4ba19  6      
  movq 0x8(%rsp), %rbx                                                                                     #  20    0x4ba1f  5      
  movq 0x10(%rsp), %r12                                                                                    #  21    0x4ba24  5      
  movl $0x1, %eax                                                                                          #  22    0x4ba29  5      
  movq 0x18(%rsp), %r13                                                                                    #  23    0x4ba2e  5      
  movq 0x20(%rsp), %r14                                                                                    #  24    0x4ba33  5      
  nop                                                                                                      #  25    0x4ba38  1      
  addl $0x28, %esp                                                                                         #  26    0x4ba39  3      
  addq %r15, %rsp                                                                                          #  27    0x4ba3c  3      
  popq %r11                                                                                                #  28    0x4ba3f  3      
  andl $0xffffffe0, %r11d                                                                                  #  29    0x4ba42  7      
  addq %r15, %r11                                                                                          #  30    0x4ba49  3      
  jmpq %r11                                                                                                #  31    0x4ba4c  3      
  nop                                                                                                      #  32    0x4ba4f  1      
.L_4ba60:                                                                                                  #        0x4ba50  0      
  movl %r13d, %r13d                                                                                        #  33    0x4ba50  3      
  movl 0x8(%r15,%r13,1), %edi                                                                              #  34    0x4ba53  5      
  movl %r12d, %ecx                                                                                         #  35    0x4ba58  3      
  movl %ebx, %edx                                                                                          #  36    0x4ba5b  2      
  movl %r14d, %esi                                                                                         #  37    0x4ba5d  3      
  movq 0x8(%rsp), %rbx                                                                                     #  38    0x4ba60  5      
  movq 0x10(%rsp), %r12                                                                                    #  39    0x4ba65  5      
  movq 0x18(%rsp), %r13                                                                                    #  40    0x4ba6a  5      
  nop                                                                                                      #  41    0x4ba6f  1      
  movq 0x20(%rsp), %r14                                                                                    #  42    0x4ba70  5      
  movl %edi, %edi                                                                                          #  43    0x4ba75  2      
  movl (%r15,%rdi,1), %eax                                                                                 #  44    0x4ba77  4      
  movl %eax, %eax                                                                                          #  45    0x4ba7b  2      
  movl 0x18(%r15,%rax,1), %eax                                                                             #  46    0x4ba7d  5      
  addl $0x28, %esp                                                                                         #  47    0x4ba82  3      
  addq %r15, %rsp                                                                                          #  48    0x4ba85  3      
  andl $0xffffffe0, %eax                                                                                   #  49    0x4ba88  5      
  addq %r15, %rax                                                                                          #  50    0x4ba8d  3      
  jmpq %rax                                                                                                #  51    0x4ba90  2      
                                                                                                                                    
.size _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, .-_ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE

