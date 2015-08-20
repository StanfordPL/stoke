  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj, @function

#! file-offset 0x117e80
#! rip-offset  0xd7e80
#! capacity    160 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj:                                                       #        0xd7e80  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7e80  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                                                 #  2     0xd7e81  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                                                 #  3     0xd7e83  2      OPC=movl_r32_r32    
  subl $0x20, %esp                                                                                #  4     0xd7e85  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  5     0xd7e88  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                                                 #  6     0xd7e8b  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                                        #  7     0xd7e8d  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                                           #  8     0xd7e91  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                                                 #  9     0xd7e94  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                                        #  10    0xd7e96  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                                                 #  11    0xd7e9a  2      OPC=cmpl_r32_r32    
  nop                                                                                             #  12    0xd7e9c  1      OPC=nop             
  nop                                                                                             #  13    0xd7e9d  1      OPC=nop             
  nop                                                                                             #  14    0xd7e9e  1      OPC=nop             
  nop                                                                                             #  15    0xd7e9f  1      OPC=nop             
  ja .L_d7ee0                                                                                     #  16    0xd7ea0  2      OPC=ja_label        
  subl %edx, %esi                                                                                 #  17    0xd7ea2  2      OPC=subl_r32_r32    
  leal 0x1f(%rsp), %eax                                                                           #  18    0xd7ea4  4      OPC=leal_r32_m16    
  movb $0x0, (%rsp)                                                                               #  19    0xd7ea8  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                                                 #  20    0xd7eac  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                                               #  21    0xd7eae  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                                                 #  22    0xd7eb1  2      OPC=addl_r32_r32    
  leal (%rdi,%rsi,4), %esi                                                                        #  23    0xd7eb3  3      OPC=leal_r32_m16    
  leal (%rdi,%rdx,4), %edi                                                                        #  24    0xd7eb6  3      OPC=leal_r32_m16    
  movl %eax, %edx                                                                                 #  25    0xd7eb9  2      OPC=movl_r32_r32    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  26    0xd7ebb  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  27    0xd7ec0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  28    0xd7ec2  4      OPC=movl_m32_r32    
  addl $0x20, %esp                                                                                #  29    0xd7ec6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  30    0xd7ec9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  31    0xd7ecc  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  32    0xd7ecd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  33    0xd7ecf  7      OPC=andl_r32_imm32  
  nop                                                                                             #  34    0xd7ed6  1      OPC=nop             
  nop                                                                                             #  35    0xd7ed7  1      OPC=nop             
  nop                                                                                             #  36    0xd7ed8  1      OPC=nop             
  nop                                                                                             #  37    0xd7ed9  1      OPC=nop             
  addq %r15, %r11                                                                                 #  38    0xd7eda  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  39    0xd7edd  3      OPC=jmpq_r64        
  nop                                                                                             #  40    0xd7ee0  1      OPC=nop             
  nop                                                                                             #  41    0xd7ee1  1      OPC=nop             
  nop                                                                                             #  42    0xd7ee2  1      OPC=nop             
  nop                                                                                             #  43    0xd7ee3  1      OPC=nop             
  nop                                                                                             #  44    0xd7ee4  1      OPC=nop             
  nop                                                                                             #  45    0xd7ee5  1      OPC=nop             
  nop                                                                                             #  46    0xd7ee6  1      OPC=nop             
.L_d7ee0:                                                                                         #        0xd7ee7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                                          #  47    0xd7ee7  5      OPC=movl_r32_imm32  
  nop                                                                                             #  48    0xd7eec  1      OPC=nop             
  nop                                                                                             #  49    0xd7eed  1      OPC=nop             
  nop                                                                                             #  50    0xd7eee  1      OPC=nop             
  nop                                                                                             #  51    0xd7eef  1      OPC=nop             
  nop                                                                                             #  52    0xd7ef0  1      OPC=nop             
  nop                                                                                             #  53    0xd7ef1  1      OPC=nop             
  nop                                                                                             #  54    0xd7ef2  1      OPC=nop             
  nop                                                                                             #  55    0xd7ef3  1      OPC=nop             
  nop                                                                                             #  56    0xd7ef4  1      OPC=nop             
  nop                                                                                             #  57    0xd7ef5  1      OPC=nop             
  nop                                                                                             #  58    0xd7ef6  1      OPC=nop             
  nop                                                                                             #  59    0xd7ef7  1      OPC=nop             
  nop                                                                                             #  60    0xd7ef8  1      OPC=nop             
  nop                                                                                             #  61    0xd7ef9  1      OPC=nop             
  nop                                                                                             #  62    0xd7efa  1      OPC=nop             
  nop                                                                                             #  63    0xd7efb  1      OPC=nop             
  nop                                                                                             #  64    0xd7efc  1      OPC=nop             
  nop                                                                                             #  65    0xd7efd  1      OPC=nop             
  nop                                                                                             #  66    0xd7efe  1      OPC=nop             
  nop                                                                                             #  67    0xd7eff  1      OPC=nop             
  nop                                                                                             #  68    0xd7f00  1      OPC=nop             
  nop                                                                                             #  69    0xd7f01  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  70    0xd7f02  5      OPC=callq_label     
  movl %eax, %edi                                                                                 #  71    0xd7f07  2      OPC=movl_r32_r32    
  nop                                                                                             #  72    0xd7f09  1      OPC=nop             
  nop                                                                                             #  73    0xd7f0a  1      OPC=nop             
  nop                                                                                             #  74    0xd7f0b  1      OPC=nop             
  nop                                                                                             #  75    0xd7f0c  1      OPC=nop             
  nop                                                                                             #  76    0xd7f0d  1      OPC=nop             
  nop                                                                                             #  77    0xd7f0e  1      OPC=nop             
  nop                                                                                             #  78    0xd7f0f  1      OPC=nop             
  nop                                                                                             #  79    0xd7f10  1      OPC=nop             
  nop                                                                                             #  80    0xd7f11  1      OPC=nop             
  nop                                                                                             #  81    0xd7f12  1      OPC=nop             
  nop                                                                                             #  82    0xd7f13  1      OPC=nop             
  nop                                                                                             #  83    0xd7f14  1      OPC=nop             
  nop                                                                                             #  84    0xd7f15  1      OPC=nop             
  nop                                                                                             #  85    0xd7f16  1      OPC=nop             
  nop                                                                                             #  86    0xd7f17  1      OPC=nop             
  nop                                                                                             #  87    0xd7f18  1      OPC=nop             
  nop                                                                                             #  88    0xd7f19  1      OPC=nop             
  nop                                                                                             #  89    0xd7f1a  1      OPC=nop             
  nop                                                                                             #  90    0xd7f1b  1      OPC=nop             
  nop                                                                                             #  91    0xd7f1c  1      OPC=nop             
  nop                                                                                             #  92    0xd7f1d  1      OPC=nop             
  nop                                                                                             #  93    0xd7f1e  1      OPC=nop             
  nop                                                                                             #  94    0xd7f1f  1      OPC=nop             
  nop                                                                                             #  95    0xd7f20  1      OPC=nop             
  nop                                                                                             #  96    0xd7f21  1      OPC=nop             
  callq ._Unwind_Resume                                                                           #  97    0xd7f22  5      OPC=callq_label     
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jj

