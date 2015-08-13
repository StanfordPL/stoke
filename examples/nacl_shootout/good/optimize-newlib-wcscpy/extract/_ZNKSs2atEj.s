  .text
  .globl _ZNKSs2atEj
  .type _ZNKSs2atEj, @function

#! file-offset 0xeae60
#! rip-offset  0xaae60
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs2atEj:                           #        0xaae60  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaae60  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaae62  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaae65  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xaae68  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xaae6a  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                 #  6     0xaae6e  3      OPC=leal_r32_m16    
  movl %edx, %edx                       #  7     0xaae71  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi              #  8     0xaae73  4      OPC=cmpl_r32_m32    
  jae .L_aaea0                          #  9     0xaae77  2      OPC=jae_label       
  addl $0x8, %esp                       #  10    0xaae79  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  11    0xaae7c  3      OPC=addq_r64_r64    
  nop                                   #  12    0xaae7f  1      OPC=nop             
  leal (%rsi,%rax,1), %eax              #  13    0xaae80  3      OPC=leal_r32_m16    
  popq %r11                             #  14    0xaae83  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  15    0xaae85  7      OPC=andl_r32_imm32  
  nop                                   #  16    0xaae8c  1      OPC=nop             
  nop                                   #  17    0xaae8d  1      OPC=nop             
  nop                                   #  18    0xaae8e  1      OPC=nop             
  nop                                   #  19    0xaae8f  1      OPC=nop             
  addq %r15, %r11                       #  20    0xaae90  3      OPC=addq_r64_r64    
  jmpq %r11                             #  21    0xaae93  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  22    0xaae96  2      OPC=xchgw_ax_r16    
  nop                                   #  23    0xaae98  1      OPC=nop             
  nop                                   #  24    0xaae99  1      OPC=nop             
  nop                                   #  25    0xaae9a  1      OPC=nop             
  nop                                   #  26    0xaae9b  1      OPC=nop             
  nop                                   #  27    0xaae9c  1      OPC=nop             
  nop                                   #  28    0xaae9d  1      OPC=nop             
  nop                                   #  29    0xaae9e  1      OPC=nop             
  nop                                   #  30    0xaae9f  1      OPC=nop             
  nop                                   #  31    0xaaea0  1      OPC=nop             
  nop                                   #  32    0xaaea1  1      OPC=nop             
  nop                                   #  33    0xaaea2  1      OPC=nop             
  nop                                   #  34    0xaaea3  1      OPC=nop             
  nop                                   #  35    0xaaea4  1      OPC=nop             
  nop                                   #  36    0xaaea5  1      OPC=nop             
  nop                                   #  37    0xaaea6  1      OPC=nop             
.L_aaea0:                               #        0xaaea7  0      OPC=<label>         
  movl $0x1003baac, %edi                #  38    0xaaea7  5      OPC=movl_r32_imm32  
  nop                                   #  39    0xaaeac  1      OPC=nop             
  nop                                   #  40    0xaaead  1      OPC=nop             
  nop                                   #  41    0xaaeae  1      OPC=nop             
  nop                                   #  42    0xaaeaf  1      OPC=nop             
  nop                                   #  43    0xaaeb0  1      OPC=nop             
  nop                                   #  44    0xaaeb1  1      OPC=nop             
  nop                                   #  45    0xaaeb2  1      OPC=nop             
  nop                                   #  46    0xaaeb3  1      OPC=nop             
  nop                                   #  47    0xaaeb4  1      OPC=nop             
  nop                                   #  48    0xaaeb5  1      OPC=nop             
  nop                                   #  49    0xaaeb6  1      OPC=nop             
  nop                                   #  50    0xaaeb7  1      OPC=nop             
  nop                                   #  51    0xaaeb8  1      OPC=nop             
  nop                                   #  52    0xaaeb9  1      OPC=nop             
  nop                                   #  53    0xaaeba  1      OPC=nop             
  nop                                   #  54    0xaaebb  1      OPC=nop             
  nop                                   #  55    0xaaebc  1      OPC=nop             
  nop                                   #  56    0xaaebd  1      OPC=nop             
  nop                                   #  57    0xaaebe  1      OPC=nop             
  nop                                   #  58    0xaaebf  1      OPC=nop             
  nop                                   #  59    0xaaec0  1      OPC=nop             
  nop                                   #  60    0xaaec1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  61    0xaaec2  5      OPC=callq_label     
                                                                                     
.size _ZNKSs2atEj, .-_ZNKSs2atEj

