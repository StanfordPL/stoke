  .text
  .globl _ZNSsC1ERKSsjjRKSaIcE
  .type _ZNSsC1ERKSsjjRKSaIcE, @function

#! file-offset 0xed860
#! rip-offset  0xad860
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1ERKSsjjRKSaIcE:                                                   #        0xad860  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad860  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xad861  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xad863  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                         #  4     0xad865  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  5     0xad868  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  6     0xad86b  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  7     0xad86e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  8     0xad870  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  9     0xad874  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  10    0xad877  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  11    0xad879  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  12    0xad87d  2      OPC=cmpl_r32_r32    
  nop                                                                     #  13    0xad87f  1      OPC=nop             
  ja .L_ad8c0                                                             #  14    0xad880  2      OPC=ja_label        
  subl %edx, %esi                                                         #  15    0xad882  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                       #  16    0xad884  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  17    0xad888  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  18    0xad88a  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  19    0xad88d  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  20    0xad88f  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  21    0xad891  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                         #  22    0xad894  3      OPC=movl_r32_r32    
  nop                                                                     #  23    0xad897  1      OPC=nop             
  nop                                                                     #  24    0xad898  1      OPC=nop             
  nop                                                                     #  25    0xad899  1      OPC=nop             
  nop                                                                     #  26    0xad89a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xad89b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xad8a0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xad8a2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  30    0xad8a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xad8a9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xad8ac  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xad8ad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xad8af  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xad8b6  1      OPC=nop             
  nop                                                                     #  36    0xad8b7  1      OPC=nop             
  nop                                                                     #  37    0xad8b8  1      OPC=nop             
  nop                                                                     #  38    0xad8b9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xad8ba  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xad8bd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xad8c0  1      OPC=nop             
  nop                                                                     #  42    0xad8c1  1      OPC=nop             
  nop                                                                     #  43    0xad8c2  1      OPC=nop             
  nop                                                                     #  44    0xad8c3  1      OPC=nop             
  nop                                                                     #  45    0xad8c4  1      OPC=nop             
  nop                                                                     #  46    0xad8c5  1      OPC=nop             
  nop                                                                     #  47    0xad8c6  1      OPC=nop             
.L_ad8c0:                                                                 #        0xad8c7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xad8c7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xad8cc  1      OPC=nop             
  nop                                                                     #  50    0xad8cd  1      OPC=nop             
  nop                                                                     #  51    0xad8ce  1      OPC=nop             
  nop                                                                     #  52    0xad8cf  1      OPC=nop             
  nop                                                                     #  53    0xad8d0  1      OPC=nop             
  nop                                                                     #  54    0xad8d1  1      OPC=nop             
  nop                                                                     #  55    0xad8d2  1      OPC=nop             
  nop                                                                     #  56    0xad8d3  1      OPC=nop             
  nop                                                                     #  57    0xad8d4  1      OPC=nop             
  nop                                                                     #  58    0xad8d5  1      OPC=nop             
  nop                                                                     #  59    0xad8d6  1      OPC=nop             
  nop                                                                     #  60    0xad8d7  1      OPC=nop             
  nop                                                                     #  61    0xad8d8  1      OPC=nop             
  nop                                                                     #  62    0xad8d9  1      OPC=nop             
  nop                                                                     #  63    0xad8da  1      OPC=nop             
  nop                                                                     #  64    0xad8db  1      OPC=nop             
  nop                                                                     #  65    0xad8dc  1      OPC=nop             
  nop                                                                     #  66    0xad8dd  1      OPC=nop             
  nop                                                                     #  67    0xad8de  1      OPC=nop             
  nop                                                                     #  68    0xad8df  1      OPC=nop             
  nop                                                                     #  69    0xad8e0  1      OPC=nop             
  nop                                                                     #  70    0xad8e1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xad8e2  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC1ERKSsjjRKSaIcE, .-_ZNSsC1ERKSsjjRKSaIcE

