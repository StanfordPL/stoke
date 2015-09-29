  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE
  .type _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, @function

#! file-offset 0x122c00
#! rip-offset  0xe2c00
#! capacity    192 bytes

# Text                                                                                                     #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE:  #        0xe2c00  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)                                                                                   #  1     0xe2c00  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)                                                                                   #  2     0xe2c05  5      OPC=movq_m64_r64    
  movl %edx, %ebx                                                                                          #  3     0xe2c0a  2      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)                                                                                   #  4     0xe2c0c  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                                                                                    #  5     0xe2c11  5      OPC=movq_m64_r64    
  movl %edi, %r13d                                                                                         #  6     0xe2c16  3      OPC=movl_r32_r32    
  movl %esi, %r14d                                                                                         #  7     0xe2c19  3      OPC=movl_r32_r32    
  movl %ecx, %r12d                                                                                         #  8     0xe2c1c  3      OPC=movl_r32_r32    
  nop                                                                                                      #  9     0xe2c1f  1      OPC=nop             
  subl $0x28, %esp                                                                                         #  10    0xe2c20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                          #  11    0xe2c23  3      OPC=addq_r64_r64    
  movl %r12d, %ecx                                                                                         #  12    0xe2c26  3      OPC=movl_r32_r32    
  movl %ebx, %edx                                                                                          #  13    0xe2c29  2      OPC=movl_r32_r32    
  movl %r14d, %esi                                                                                         #  14    0xe2c2b  3      OPC=movl_r32_r32    
  movl %r13d, %edi                                                                                         #  15    0xe2c2e  3      OPC=movl_r32_r32    
  nop                                                                                                      #  16    0xe2c31  1      OPC=nop             
  nop                                                                                                      #  17    0xe2c32  1      OPC=nop             
  nop                                                                                                      #  18    0xe2c33  1      OPC=nop             
  nop                                                                                                      #  19    0xe2c34  1      OPC=nop             
  nop                                                                                                      #  20    0xe2c35  1      OPC=nop             
  nop                                                                                                      #  21    0xe2c36  1      OPC=nop             
  nop                                                                                                      #  22    0xe2c37  1      OPC=nop             
  nop                                                                                                      #  23    0xe2c38  1      OPC=nop             
  nop                                                                                                      #  24    0xe2c39  1      OPC=nop             
  nop                                                                                                      #  25    0xe2c3a  1      OPC=nop             
  callq ._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE                  #  26    0xe2c3b  5      OPC=callq_label     
  testb %al, %al                                                                                           #  27    0xe2c40  2      OPC=testb_r8_r8     
  je .L_e2c80                                                                                              #  28    0xe2c42  2      OPC=je_label        
  movq 0x8(%rsp), %rbx                                                                                     #  29    0xe2c44  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                    #  30    0xe2c49  5      OPC=movq_r64_m64    
  movl $0x1, %eax                                                                                          #  31    0xe2c4e  5      OPC=movl_r32_imm32  
  movq 0x18(%rsp), %r13                                                                                    #  32    0xe2c53  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14                                                                                    #  33    0xe2c58  5      OPC=movq_r64_m64    
  nop                                                                                                      #  34    0xe2c5d  1      OPC=nop             
  nop                                                                                                      #  35    0xe2c5e  1      OPC=nop             
  nop                                                                                                      #  36    0xe2c5f  1      OPC=nop             
  addl $0x28, %esp                                                                                         #  37    0xe2c60  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  38    0xe2c63  3      OPC=addq_r64_r64    
  popq %r11                                                                                                #  39    0xe2c66  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                  #  40    0xe2c68  7      OPC=andl_r32_imm32  
  nop                                                                                                      #  41    0xe2c6f  1      OPC=nop             
  nop                                                                                                      #  42    0xe2c70  1      OPC=nop             
  nop                                                                                                      #  43    0xe2c71  1      OPC=nop             
  nop                                                                                                      #  44    0xe2c72  1      OPC=nop             
  addq %r15, %r11                                                                                          #  45    0xe2c73  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                #  46    0xe2c76  3      OPC=jmpq_r64        
  nop                                                                                                      #  47    0xe2c79  1      OPC=nop             
  nop                                                                                                      #  48    0xe2c7a  1      OPC=nop             
  nop                                                                                                      #  49    0xe2c7b  1      OPC=nop             
  nop                                                                                                      #  50    0xe2c7c  1      OPC=nop             
  nop                                                                                                      #  51    0xe2c7d  1      OPC=nop             
  nop                                                                                                      #  52    0xe2c7e  1      OPC=nop             
  nop                                                                                                      #  53    0xe2c7f  1      OPC=nop             
  nop                                                                                                      #  54    0xe2c80  1      OPC=nop             
  nop                                                                                                      #  55    0xe2c81  1      OPC=nop             
  nop                                                                                                      #  56    0xe2c82  1      OPC=nop             
  nop                                                                                                      #  57    0xe2c83  1      OPC=nop             
  nop                                                                                                      #  58    0xe2c84  1      OPC=nop             
  nop                                                                                                      #  59    0xe2c85  1      OPC=nop             
  nop                                                                                                      #  60    0xe2c86  1      OPC=nop             
.L_e2c80:                                                                                                  #        0xe2c87  0      OPC=<label>         
  movl %r13d, %r13d                                                                                        #  61    0xe2c87  3      OPC=movl_r32_r32    
  movl 0x8(%r15,%r13,1), %edi                                                                              #  62    0xe2c8a  5      OPC=movl_r32_m32    
  movl %r12d, %ecx                                                                                         #  63    0xe2c8f  3      OPC=movl_r32_r32    
  movl %ebx, %edx                                                                                          #  64    0xe2c92  2      OPC=movl_r32_r32    
  movl %r14d, %esi                                                                                         #  65    0xe2c94  3      OPC=movl_r32_r32    
  movq 0x8(%rsp), %rbx                                                                                     #  66    0xe2c97  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                    #  67    0xe2c9c  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13                                                                                    #  68    0xe2ca1  5      OPC=movq_r64_m64    
  nop                                                                                                      #  69    0xe2ca6  1      OPC=nop             
  movq 0x20(%rsp), %r14                                                                                    #  70    0xe2ca7  5      OPC=movq_r64_m64    
  movl %edi, %edi                                                                                          #  71    0xe2cac  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                 #  72    0xe2cae  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                          #  73    0xe2cb2  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                                                             #  74    0xe2cb4  5      OPC=movl_r32_m32    
  addl $0x28, %esp                                                                                         #  75    0xe2cb9  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  76    0xe2cbc  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                                                                                   #  77    0xe2cbf  6      OPC=andl_r32_imm32  
  nop                                                                                                      #  78    0xe2cc5  1      OPC=nop             
  nop                                                                                                      #  79    0xe2cc6  1      OPC=nop             
  nop                                                                                                      #  80    0xe2cc7  1      OPC=nop             
  addq %r15, %rax                                                                                          #  81    0xe2cc8  3      OPC=addq_r64_r64    
  jmpq %rax                                                                                                #  82    0xe2ccb  2      OPC=jmpq_r64        
                                                                                                                                                        
.size _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, .-_ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE

