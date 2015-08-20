  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj, @function

#! file-offset 0x116ba0
#! rip-offset  0xd6ba0
#! capacity    160 bytes

# Text                                             #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj:  #        0xd6ba0  0      OPC=<label>          
  pushq %r12                                       #  1     0xd6ba0  2      OPC=pushq_r64_1      
  movl %edi, %edi                                  #  2     0xd6ba2  2      OPC=movl_r32_r32     
  movl %ecx, %ecx                                  #  3     0xd6ba4  2      OPC=movl_r32_r32     
  pushq %rbx                                       #  4     0xd6ba6  1      OPC=pushq_r64_1      
  movl %r8d, %ebx                                  #  5     0xd6ba7  3      OPC=movl_r32_r32     
  subl $0x8, %esp                                  #  6     0xd6baa  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                  #  7     0xd6bad  3      OPC=addq_r64_r64     
  movl %edi, %edi                                  #  8     0xd6bb0  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                         #  9     0xd6bb2  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                            #  10    0xd6bb6  3      OPC=leal_r32_m16     
  movl %eax, %eax                                  #  11    0xd6bb9  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                        #  12    0xd6bbb  4      OPC=movl_r32_m32     
  nop                                              #  13    0xd6bbf  1      OPC=nop              
  cmpl %r12d, %esi                                 #  14    0xd6bc0  3      OPC=cmpl_r32_r32     
  ja .L_d6c20                                      #  15    0xd6bc3  2      OPC=ja_label         
  subl %esi, %r12d                                 #  16    0xd6bc5  3      OPC=subl_r32_r32     
  leal (%rdi,%rsi,4), %edi                         #  17    0xd6bc8  3      OPC=leal_r32_m16     
  movl %ecx, %esi                                  #  18    0xd6bcb  2      OPC=movl_r32_r32     
  cmpl %r12d, %edx                                 #  19    0xd6bcd  3      OPC=cmpl_r32_r32     
  cmovbel %edx, %r12d                              #  20    0xd6bd0  4      OPC=cmovbel_r32_r32  
  cmpl %r12d, %r8d                                 #  21    0xd6bd4  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                                 #  22    0xd6bd7  3      OPC=movl_r32_r32     
  cmovbel %r8d, %edx                               #  23    0xd6bda  4      OPC=cmovbel_r32_r32  
  xchgw %ax, %ax                                   #  24    0xd6bde  2      OPC=xchgw_ax_r16     
  subl %ebx, %r12d                                 #  25    0xd6be0  3      OPC=subl_r32_r32     
  nop                                              #  26    0xd6be3  1      OPC=nop              
  nop                                              #  27    0xd6be4  1      OPC=nop              
  nop                                              #  28    0xd6be5  1      OPC=nop              
  nop                                              #  29    0xd6be6  1      OPC=nop              
  nop                                              #  30    0xd6be7  1      OPC=nop              
  nop                                              #  31    0xd6be8  1      OPC=nop              
  nop                                              #  32    0xd6be9  1      OPC=nop              
  nop                                              #  33    0xd6bea  1      OPC=nop              
  nop                                              #  34    0xd6beb  1      OPC=nop              
  nop                                              #  35    0xd6bec  1      OPC=nop              
  nop                                              #  36    0xd6bed  1      OPC=nop              
  nop                                              #  37    0xd6bee  1      OPC=nop              
  nop                                              #  38    0xd6bef  1      OPC=nop              
  nop                                              #  39    0xd6bf0  1      OPC=nop              
  nop                                              #  40    0xd6bf1  1      OPC=nop              
  nop                                              #  41    0xd6bf2  1      OPC=nop              
  nop                                              #  42    0xd6bf3  1      OPC=nop              
  nop                                              #  43    0xd6bf4  1      OPC=nop              
  nop                                              #  44    0xd6bf5  1      OPC=nop              
  nop                                              #  45    0xd6bf6  1      OPC=nop              
  nop                                              #  46    0xd6bf7  1      OPC=nop              
  nop                                              #  47    0xd6bf8  1      OPC=nop              
  nop                                              #  48    0xd6bf9  1      OPC=nop              
  nop                                              #  49    0xd6bfa  1      OPC=nop              
  callq .wmemcmp                                   #  50    0xd6bfb  5      OPC=callq_label      
  testl %eax, %eax                                 #  51    0xd6c00  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                               #  52    0xd6c02  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                  #  53    0xd6c06  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                  #  54    0xd6c09  3      OPC=addq_r64_r64     
  popq %rbx                                        #  55    0xd6c0c  1      OPC=popq_r64_1       
  popq %r12                                        #  56    0xd6c0d  2      OPC=popq_r64_1       
  popq %r11                                        #  57    0xd6c0f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                          #  58    0xd6c11  7      OPC=andl_r32_imm32   
  nop                                              #  59    0xd6c18  1      OPC=nop              
  nop                                              #  60    0xd6c19  1      OPC=nop              
  nop                                              #  61    0xd6c1a  1      OPC=nop              
  nop                                              #  62    0xd6c1b  1      OPC=nop              
  addq %r15, %r11                                  #  63    0xd6c1c  3      OPC=addq_r64_r64     
  jmpq %r11                                        #  64    0xd6c1f  3      OPC=jmpq_r64         
  nop                                              #  65    0xd6c22  1      OPC=nop              
  nop                                              #  66    0xd6c23  1      OPC=nop              
  nop                                              #  67    0xd6c24  1      OPC=nop              
  nop                                              #  68    0xd6c25  1      OPC=nop              
  nop                                              #  69    0xd6c26  1      OPC=nop              
.L_d6c20:                                          #        0xd6c27  0      OPC=<label>          
  movl $0x1003babd, %edi                           #  70    0xd6c27  5      OPC=movl_r32_imm32   
  nop                                              #  71    0xd6c2c  1      OPC=nop              
  nop                                              #  72    0xd6c2d  1      OPC=nop              
  nop                                              #  73    0xd6c2e  1      OPC=nop              
  nop                                              #  74    0xd6c2f  1      OPC=nop              
  nop                                              #  75    0xd6c30  1      OPC=nop              
  nop                                              #  76    0xd6c31  1      OPC=nop              
  nop                                              #  77    0xd6c32  1      OPC=nop              
  nop                                              #  78    0xd6c33  1      OPC=nop              
  nop                                              #  79    0xd6c34  1      OPC=nop              
  nop                                              #  80    0xd6c35  1      OPC=nop              
  nop                                              #  81    0xd6c36  1      OPC=nop              
  nop                                              #  82    0xd6c37  1      OPC=nop              
  nop                                              #  83    0xd6c38  1      OPC=nop              
  nop                                              #  84    0xd6c39  1      OPC=nop              
  nop                                              #  85    0xd6c3a  1      OPC=nop              
  nop                                              #  86    0xd6c3b  1      OPC=nop              
  nop                                              #  87    0xd6c3c  1      OPC=nop              
  nop                                              #  88    0xd6c3d  1      OPC=nop              
  nop                                              #  89    0xd6c3e  1      OPC=nop              
  nop                                              #  90    0xd6c3f  1      OPC=nop              
  nop                                              #  91    0xd6c40  1      OPC=nop              
  nop                                              #  92    0xd6c41  1      OPC=nop              
  callq ._ZSt20__throw_out_of_rangePKc             #  93    0xd6c42  5      OPC=callq_label      
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj

