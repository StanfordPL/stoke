  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj, @function

#! file-offset 0x119d20
#! rip-offset  0xd9d20
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj:              #        0xd9d20  0      OPC=<label>         
  pushq %rbx                                            #  1     0xd9d20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  2     0xd9d21  2      OPC=movl_r32_r32    
  movl %edx, %ecx                                       #  3     0xd9d23  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  4     0xd9d25  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  5     0xd9d27  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  6     0xd9d2b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                       #  7     0xd9d2e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  8     0xd9d30  4      OPC=movl_r32_m32    
  cmpl %eax, %esi                                       #  9     0xd9d34  2      OPC=cmpl_r32_r32    
  ja .L_d9d80                                           #  10    0xd9d36  2      OPC=ja_label        
  movl %eax, %edx                                       #  11    0xd9d38  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                       #  12    0xd9d3a  2      OPC=movl_r32_r32    
  subl %esi, %edx                                       #  13    0xd9d3c  2      OPC=subl_r32_r32    
  cmpl %ecx, %edx                                       #  14    0xd9d3e  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %edx                                     #  15    0xd9d40  3      OPC=cmoval_r32_r32  
  xorl %ecx, %ecx                                       #  16    0xd9d43  2      OPC=xorl_r32_r32    
  nop                                                   #  17    0xd9d45  1      OPC=nop             
  nop                                                   #  18    0xd9d46  1      OPC=nop             
  nop                                                   #  19    0xd9d47  1      OPC=nop             
  nop                                                   #  20    0xd9d48  1      OPC=nop             
  nop                                                   #  21    0xd9d49  1      OPC=nop             
  nop                                                   #  22    0xd9d4a  1      OPC=nop             
  nop                                                   #  23    0xd9d4b  1      OPC=nop             
  nop                                                   #  24    0xd9d4c  1      OPC=nop             
  nop                                                   #  25    0xd9d4d  1      OPC=nop             
  nop                                                   #  26    0xd9d4e  1      OPC=nop             
  nop                                                   #  27    0xd9d4f  1      OPC=nop             
  nop                                                   #  28    0xd9d50  1      OPC=nop             
  nop                                                   #  29    0xd9d51  1      OPC=nop             
  nop                                                   #  30    0xd9d52  1      OPC=nop             
  nop                                                   #  31    0xd9d53  1      OPC=nop             
  nop                                                   #  32    0xd9d54  1      OPC=nop             
  nop                                                   #  33    0xd9d55  1      OPC=nop             
  nop                                                   #  34    0xd9d56  1      OPC=nop             
  nop                                                   #  35    0xd9d57  1      OPC=nop             
  nop                                                   #  36    0xd9d58  1      OPC=nop             
  nop                                                   #  37    0xd9d59  1      OPC=nop             
  nop                                                   #  38    0xd9d5a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  39    0xd9d5b  5      OPC=callq_label     
  movl %ebx, %eax                                       #  40    0xd9d60  2      OPC=movl_r32_r32    
  popq %rbx                                             #  41    0xd9d62  1      OPC=popq_r64_1      
  popq %r11                                             #  42    0xd9d63  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  43    0xd9d65  7      OPC=andl_r32_imm32  
  nop                                                   #  44    0xd9d6c  1      OPC=nop             
  nop                                                   #  45    0xd9d6d  1      OPC=nop             
  nop                                                   #  46    0xd9d6e  1      OPC=nop             
  nop                                                   #  47    0xd9d6f  1      OPC=nop             
  addq %r15, %r11                                       #  48    0xd9d70  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  49    0xd9d73  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                        #  50    0xd9d76  2      OPC=xchgw_ax_r16    
  nop                                                   #  51    0xd9d78  1      OPC=nop             
  nop                                                   #  52    0xd9d79  1      OPC=nop             
  nop                                                   #  53    0xd9d7a  1      OPC=nop             
  nop                                                   #  54    0xd9d7b  1      OPC=nop             
  nop                                                   #  55    0xd9d7c  1      OPC=nop             
  nop                                                   #  56    0xd9d7d  1      OPC=nop             
  nop                                                   #  57    0xd9d7e  1      OPC=nop             
  nop                                                   #  58    0xd9d7f  1      OPC=nop             
  nop                                                   #  59    0xd9d80  1      OPC=nop             
  nop                                                   #  60    0xd9d81  1      OPC=nop             
  nop                                                   #  61    0xd9d82  1      OPC=nop             
  nop                                                   #  62    0xd9d83  1      OPC=nop             
  nop                                                   #  63    0xd9d84  1      OPC=nop             
  nop                                                   #  64    0xd9d85  1      OPC=nop             
  nop                                                   #  65    0xd9d86  1      OPC=nop             
.L_d9d80:                                               #        0xd9d87  0      OPC=<label>         
  movl $0x1003a8e6, %edi                                #  66    0xd9d87  5      OPC=movl_r32_imm32  
  nop                                                   #  67    0xd9d8c  1      OPC=nop             
  nop                                                   #  68    0xd9d8d  1      OPC=nop             
  nop                                                   #  69    0xd9d8e  1      OPC=nop             
  nop                                                   #  70    0xd9d8f  1      OPC=nop             
  nop                                                   #  71    0xd9d90  1      OPC=nop             
  nop                                                   #  72    0xd9d91  1      OPC=nop             
  nop                                                   #  73    0xd9d92  1      OPC=nop             
  nop                                                   #  74    0xd9d93  1      OPC=nop             
  nop                                                   #  75    0xd9d94  1      OPC=nop             
  nop                                                   #  76    0xd9d95  1      OPC=nop             
  nop                                                   #  77    0xd9d96  1      OPC=nop             
  nop                                                   #  78    0xd9d97  1      OPC=nop             
  nop                                                   #  79    0xd9d98  1      OPC=nop             
  nop                                                   #  80    0xd9d99  1      OPC=nop             
  nop                                                   #  81    0xd9d9a  1      OPC=nop             
  nop                                                   #  82    0xd9d9b  1      OPC=nop             
  nop                                                   #  83    0xd9d9c  1      OPC=nop             
  nop                                                   #  84    0xd9d9d  1      OPC=nop             
  nop                                                   #  85    0xd9d9e  1      OPC=nop             
  nop                                                   #  86    0xd9d9f  1      OPC=nop             
  nop                                                   #  87    0xd9da0  1      OPC=nop             
  nop                                                   #  88    0xd9da1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                  #  89    0xd9da2  5      OPC=callq_label     
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj

