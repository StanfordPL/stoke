  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw, @function

#! file-offset 0x115ea0
#! rip-offset  0xd5ea0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw:  #        0xd5ea0  0      OPC=<label>          
  movq %r13, -0x10(%rsp)                        #  1     0xd5ea0  5      OPC=movq_m64_r64     
  movl %edi, %r13d                              #  2     0xd5ea5  3      OPC=movl_r32_r32     
  movq %rbx, -0x20(%rsp)                        #  3     0xd5ea8  5      OPC=movq_m64_r64     
  movq %r14, -0x8(%rsp)                         #  4     0xd5ead  5      OPC=movq_m64_r64     
  movq %r12, -0x18(%rsp)                        #  5     0xd5eb2  5      OPC=movq_m64_r64     
  subl $0x28, %esp                              #  6     0xd5eb7  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                               #  7     0xd5eba  3      OPC=addq_r64_r64     
  nop                                           #  8     0xd5ebd  1      OPC=nop              
  nop                                           #  9     0xd5ebe  1      OPC=nop              
  nop                                           #  10    0xd5ebf  1      OPC=nop              
  movl %r13d, %r13d                             #  11    0xd5ec0  3      OPC=movl_r32_r32     
  movl (%r15,%r13,1), %eax                      #  12    0xd5ec3  4      OPC=movl_r32_m32     
  movl %esi, %r14d                              #  13    0xd5ec7  3      OPC=movl_r32_r32     
  movl %r14d, %edi                              #  14    0xd5eca  3      OPC=movl_r32_r32     
  subl $0xc, %eax                               #  15    0xd5ecd  3      OPC=subl_r32_imm8    
  movl %eax, %eax                               #  16    0xd5ed0  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                     #  17    0xd5ed2  4      OPC=movl_r32_m32     
  nop                                           #  18    0xd5ed6  1      OPC=nop              
  nop                                           #  19    0xd5ed7  1      OPC=nop              
  nop                                           #  20    0xd5ed8  1      OPC=nop              
  nop                                           #  21    0xd5ed9  1      OPC=nop              
  nop                                           #  22    0xd5eda  1      OPC=nop              
  callq .wcslen                                 #  23    0xd5edb  5      OPC=callq_label      
  movl %r13d, %r13d                             #  24    0xd5ee0  3      OPC=movl_r32_r32     
  movl (%r15,%r13,1), %edi                      #  25    0xd5ee3  4      OPC=movl_r32_m32     
  movl %eax, %ebx                               #  26    0xd5ee7  2      OPC=movl_r32_r32     
  movl %r14d, %esi                              #  27    0xd5ee9  3      OPC=movl_r32_r32     
  cmpl %r12d, %eax                              #  28    0xd5eec  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                              #  29    0xd5eef  3      OPC=movl_r32_r32     
  cmovbel %eax, %edx                            #  30    0xd5ef2  3      OPC=cmovbel_r32_r32  
  subl %ebx, %r12d                              #  31    0xd5ef5  3      OPC=subl_r32_r32     
  nop                                           #  32    0xd5ef8  1      OPC=nop              
  nop                                           #  33    0xd5ef9  1      OPC=nop              
  nop                                           #  34    0xd5efa  1      OPC=nop              
  callq .wmemcmp                                #  35    0xd5efb  5      OPC=callq_label      
  testl %eax, %eax                              #  36    0xd5f00  2      OPC=testl_r32_r32    
  movq 0x8(%rsp), %rbx                          #  37    0xd5f02  5      OPC=movq_r64_m64     
  movq 0x18(%rsp), %r13                         #  38    0xd5f07  5      OPC=movq_r64_m64     
  cmovel %r12d, %eax                            #  39    0xd5f0c  4      OPC=cmovel_r32_r32   
  movq 0x20(%rsp), %r14                         #  40    0xd5f10  5      OPC=movq_r64_m64     
  movq 0x10(%rsp), %r12                         #  41    0xd5f15  5      OPC=movq_r64_m64     
  addl $0x28, %esp                              #  42    0xd5f1a  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                               #  43    0xd5f1d  3      OPC=addq_r64_r64     
  popq %r11                                     #  44    0xd5f20  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                       #  45    0xd5f22  7      OPC=andl_r32_imm32   
  nop                                           #  46    0xd5f29  1      OPC=nop              
  nop                                           #  47    0xd5f2a  1      OPC=nop              
  nop                                           #  48    0xd5f2b  1      OPC=nop              
  nop                                           #  49    0xd5f2c  1      OPC=nop              
  addq %r15, %r11                               #  50    0xd5f2d  3      OPC=addq_r64_r64     
  jmpq %r11                                     #  51    0xd5f30  3      OPC=jmpq_r64         
  nop                                           #  52    0xd5f33  1      OPC=nop              
  nop                                           #  53    0xd5f34  1      OPC=nop              
  nop                                           #  54    0xd5f35  1      OPC=nop              
  nop                                           #  55    0xd5f36  1      OPC=nop              
  nop                                           #  56    0xd5f37  1      OPC=nop              
  nop                                           #  57    0xd5f38  1      OPC=nop              
  nop                                           #  58    0xd5f39  1      OPC=nop              
  nop                                           #  59    0xd5f3a  1      OPC=nop              
  nop                                           #  60    0xd5f3b  1      OPC=nop              
  nop                                           #  61    0xd5f3c  1      OPC=nop              
  nop                                           #  62    0xd5f3d  1      OPC=nop              
  nop                                           #  63    0xd5f3e  1      OPC=nop              
  nop                                           #  64    0xd5f3f  1      OPC=nop              
  nop                                           #  65    0xd5f40  1      OPC=nop              
  nop                                           #  66    0xd5f41  1      OPC=nop              
  nop                                           #  67    0xd5f42  1      OPC=nop              
  nop                                           #  68    0xd5f43  1      OPC=nop              
  nop                                           #  69    0xd5f44  1      OPC=nop              
  nop                                           #  70    0xd5f45  1      OPC=nop              
  nop                                           #  71    0xd5f46  1      OPC=nop              
                                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw

