  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj, @function

#! file-offset 0x119a20
#! rip-offset  0xd9a20
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj:              #        0xd9a20  0      OPC=<label>         
  pushq %rbx                                            #  1     0xd9a20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  2     0xd9a21  2      OPC=movl_r32_r32    
  movl %edx, %ecx                                       #  3     0xd9a23  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  4     0xd9a25  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  5     0xd9a27  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  6     0xd9a2b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                       #  7     0xd9a2e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                              #  8     0xd9a30  4      OPC=movl_r32_m32    
  cmpl %eax, %esi                                       #  9     0xd9a34  2      OPC=cmpl_r32_r32    
  ja .L_d9a80                                           #  10    0xd9a36  2      OPC=ja_label        
  movl %eax, %edx                                       #  11    0xd9a38  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                       #  12    0xd9a3a  2      OPC=movl_r32_r32    
  subl %esi, %edx                                       #  13    0xd9a3c  2      OPC=subl_r32_r32    
  cmpl %ecx, %edx                                       #  14    0xd9a3e  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %edx                                     #  15    0xd9a40  3      OPC=cmoval_r32_r32  
  xorl %ecx, %ecx                                       #  16    0xd9a43  2      OPC=xorl_r32_r32    
  nop                                                   #  17    0xd9a45  1      OPC=nop             
  nop                                                   #  18    0xd9a46  1      OPC=nop             
  nop                                                   #  19    0xd9a47  1      OPC=nop             
  nop                                                   #  20    0xd9a48  1      OPC=nop             
  nop                                                   #  21    0xd9a49  1      OPC=nop             
  nop                                                   #  22    0xd9a4a  1      OPC=nop             
  nop                                                   #  23    0xd9a4b  1      OPC=nop             
  nop                                                   #  24    0xd9a4c  1      OPC=nop             
  nop                                                   #  25    0xd9a4d  1      OPC=nop             
  nop                                                   #  26    0xd9a4e  1      OPC=nop             
  nop                                                   #  27    0xd9a4f  1      OPC=nop             
  nop                                                   #  28    0xd9a50  1      OPC=nop             
  nop                                                   #  29    0xd9a51  1      OPC=nop             
  nop                                                   #  30    0xd9a52  1      OPC=nop             
  nop                                                   #  31    0xd9a53  1      OPC=nop             
  nop                                                   #  32    0xd9a54  1      OPC=nop             
  nop                                                   #  33    0xd9a55  1      OPC=nop             
  nop                                                   #  34    0xd9a56  1      OPC=nop             
  nop                                                   #  35    0xd9a57  1      OPC=nop             
  nop                                                   #  36    0xd9a58  1      OPC=nop             
  nop                                                   #  37    0xd9a59  1      OPC=nop             
  nop                                                   #  38    0xd9a5a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  39    0xd9a5b  5      OPC=callq_label     
  movl %ebx, %eax                                       #  40    0xd9a60  2      OPC=movl_r32_r32    
  popq %rbx                                             #  41    0xd9a62  1      OPC=popq_r64_1      
  popq %r11                                             #  42    0xd9a63  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  43    0xd9a65  7      OPC=andl_r32_imm32  
  nop                                                   #  44    0xd9a6c  1      OPC=nop             
  nop                                                   #  45    0xd9a6d  1      OPC=nop             
  nop                                                   #  46    0xd9a6e  1      OPC=nop             
  nop                                                   #  47    0xd9a6f  1      OPC=nop             
  addq %r15, %r11                                       #  48    0xd9a70  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  49    0xd9a73  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                        #  50    0xd9a76  2      OPC=xchgw_ax_r16    
  nop                                                   #  51    0xd9a78  1      OPC=nop             
  nop                                                   #  52    0xd9a79  1      OPC=nop             
  nop                                                   #  53    0xd9a7a  1      OPC=nop             
  nop                                                   #  54    0xd9a7b  1      OPC=nop             
  nop                                                   #  55    0xd9a7c  1      OPC=nop             
  nop                                                   #  56    0xd9a7d  1      OPC=nop             
  nop                                                   #  57    0xd9a7e  1      OPC=nop             
  nop                                                   #  58    0xd9a7f  1      OPC=nop             
  nop                                                   #  59    0xd9a80  1      OPC=nop             
  nop                                                   #  60    0xd9a81  1      OPC=nop             
  nop                                                   #  61    0xd9a82  1      OPC=nop             
  nop                                                   #  62    0xd9a83  1      OPC=nop             
  nop                                                   #  63    0xd9a84  1      OPC=nop             
  nop                                                   #  64    0xd9a85  1      OPC=nop             
  nop                                                   #  65    0xd9a86  1      OPC=nop             
.L_d9a80:                                               #        0xd9a87  0      OPC=<label>         
  movl $0x1003a8e6, %edi                                #  66    0xd9a87  5      OPC=movl_r32_imm32  
  nop                                                   #  67    0xd9a8c  1      OPC=nop             
  nop                                                   #  68    0xd9a8d  1      OPC=nop             
  nop                                                   #  69    0xd9a8e  1      OPC=nop             
  nop                                                   #  70    0xd9a8f  1      OPC=nop             
  nop                                                   #  71    0xd9a90  1      OPC=nop             
  nop                                                   #  72    0xd9a91  1      OPC=nop             
  nop                                                   #  73    0xd9a92  1      OPC=nop             
  nop                                                   #  74    0xd9a93  1      OPC=nop             
  nop                                                   #  75    0xd9a94  1      OPC=nop             
  nop                                                   #  76    0xd9a95  1      OPC=nop             
  nop                                                   #  77    0xd9a96  1      OPC=nop             
  nop                                                   #  78    0xd9a97  1      OPC=nop             
  nop                                                   #  79    0xd9a98  1      OPC=nop             
  nop                                                   #  80    0xd9a99  1      OPC=nop             
  nop                                                   #  81    0xd9a9a  1      OPC=nop             
  nop                                                   #  82    0xd9a9b  1      OPC=nop             
  nop                                                   #  83    0xd9a9c  1      OPC=nop             
  nop                                                   #  84    0xd9a9d  1      OPC=nop             
  nop                                                   #  85    0xd9a9e  1      OPC=nop             
  nop                                                   #  86    0xd9a9f  1      OPC=nop             
  nop                                                   #  87    0xd9aa0  1      OPC=nop             
  nop                                                   #  88    0xd9aa1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                  #  89    0xd9aa2  5      OPC=callq_label     
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEjj

