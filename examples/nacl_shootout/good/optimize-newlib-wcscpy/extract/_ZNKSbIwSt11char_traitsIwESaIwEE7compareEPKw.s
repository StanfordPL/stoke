  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw, @function

#! file-offset 0x115ba0
#! rip-offset  0xd5ba0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw:  #        0xd5ba0  0      OPC=<label>          
  movq %r13, -0x10(%rsp)                        #  1     0xd5ba0  5      OPC=movq_m64_r64     
  movl %edi, %r13d                              #  2     0xd5ba5  3      OPC=movl_r32_r32     
  movq %rbx, -0x20(%rsp)                        #  3     0xd5ba8  5      OPC=movq_m64_r64     
  movq %r14, -0x8(%rsp)                         #  4     0xd5bad  5      OPC=movq_m64_r64     
  movq %r12, -0x18(%rsp)                        #  5     0xd5bb2  5      OPC=movq_m64_r64     
  subl $0x28, %esp                              #  6     0xd5bb7  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                               #  7     0xd5bba  3      OPC=addq_r64_r64     
  nop                                           #  8     0xd5bbd  1      OPC=nop              
  nop                                           #  9     0xd5bbe  1      OPC=nop              
  nop                                           #  10    0xd5bbf  1      OPC=nop              
  movl %r13d, %r13d                             #  11    0xd5bc0  3      OPC=movl_r32_r32     
  movl (%r15,%r13,1), %eax                      #  12    0xd5bc3  4      OPC=movl_r32_m32     
  movl %esi, %r14d                              #  13    0xd5bc7  3      OPC=movl_r32_r32     
  movl %r14d, %edi                              #  14    0xd5bca  3      OPC=movl_r32_r32     
  subl $0xc, %eax                               #  15    0xd5bcd  3      OPC=subl_r32_imm8    
  movl %eax, %eax                               #  16    0xd5bd0  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                     #  17    0xd5bd2  4      OPC=movl_r32_m32     
  nop                                           #  18    0xd5bd6  1      OPC=nop              
  nop                                           #  19    0xd5bd7  1      OPC=nop              
  nop                                           #  20    0xd5bd8  1      OPC=nop              
  nop                                           #  21    0xd5bd9  1      OPC=nop              
  nop                                           #  22    0xd5bda  1      OPC=nop              
  callq .wcslen                                 #  23    0xd5bdb  5      OPC=callq_label      
  movl %r13d, %r13d                             #  24    0xd5be0  3      OPC=movl_r32_r32     
  movl (%r15,%r13,1), %edi                      #  25    0xd5be3  4      OPC=movl_r32_m32     
  movl %eax, %ebx                               #  26    0xd5be7  2      OPC=movl_r32_r32     
  movl %r14d, %esi                              #  27    0xd5be9  3      OPC=movl_r32_r32     
  cmpl %r12d, %eax                              #  28    0xd5bec  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                              #  29    0xd5bef  3      OPC=movl_r32_r32     
  cmovbel %eax, %edx                            #  30    0xd5bf2  3      OPC=cmovbel_r32_r32  
  subl %ebx, %r12d                              #  31    0xd5bf5  3      OPC=subl_r32_r32     
  nop                                           #  32    0xd5bf8  1      OPC=nop              
  nop                                           #  33    0xd5bf9  1      OPC=nop              
  nop                                           #  34    0xd5bfa  1      OPC=nop              
  callq .wmemcmp                                #  35    0xd5bfb  5      OPC=callq_label      
  testl %eax, %eax                              #  36    0xd5c00  2      OPC=testl_r32_r32    
  movq 0x8(%rsp), %rbx                          #  37    0xd5c02  5      OPC=movq_r64_m64     
  movq 0x18(%rsp), %r13                         #  38    0xd5c07  5      OPC=movq_r64_m64     
  cmovel %r12d, %eax                            #  39    0xd5c0c  4      OPC=cmovel_r32_r32   
  movq 0x20(%rsp), %r14                         #  40    0xd5c10  5      OPC=movq_r64_m64     
  movq 0x10(%rsp), %r12                         #  41    0xd5c15  5      OPC=movq_r64_m64     
  addl $0x28, %esp                              #  42    0xd5c1a  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                               #  43    0xd5c1d  3      OPC=addq_r64_r64     
  popq %r11                                     #  44    0xd5c20  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                       #  45    0xd5c22  7      OPC=andl_r32_imm32   
  nop                                           #  46    0xd5c29  1      OPC=nop              
  nop                                           #  47    0xd5c2a  1      OPC=nop              
  nop                                           #  48    0xd5c2b  1      OPC=nop              
  nop                                           #  49    0xd5c2c  1      OPC=nop              
  addq %r15, %r11                               #  50    0xd5c2d  3      OPC=addq_r64_r64     
  jmpq %r11                                     #  51    0xd5c30  3      OPC=jmpq_r64         
  nop                                           #  52    0xd5c33  1      OPC=nop              
  nop                                           #  53    0xd5c34  1      OPC=nop              
  nop                                           #  54    0xd5c35  1      OPC=nop              
  nop                                           #  55    0xd5c36  1      OPC=nop              
  nop                                           #  56    0xd5c37  1      OPC=nop              
  nop                                           #  57    0xd5c38  1      OPC=nop              
  nop                                           #  58    0xd5c39  1      OPC=nop              
  nop                                           #  59    0xd5c3a  1      OPC=nop              
  nop                                           #  60    0xd5c3b  1      OPC=nop              
  nop                                           #  61    0xd5c3c  1      OPC=nop              
  nop                                           #  62    0xd5c3d  1      OPC=nop              
  nop                                           #  63    0xd5c3e  1      OPC=nop              
  nop                                           #  64    0xd5c3f  1      OPC=nop              
  nop                                           #  65    0xd5c40  1      OPC=nop              
  nop                                           #  66    0xd5c41  1      OPC=nop              
  nop                                           #  67    0xd5c42  1      OPC=nop              
  nop                                           #  68    0xd5c43  1      OPC=nop              
  nop                                           #  69    0xd5c44  1      OPC=nop              
  nop                                           #  70    0xd5c45  1      OPC=nop              
  nop                                           #  71    0xd5c46  1      OPC=nop              
                                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw

