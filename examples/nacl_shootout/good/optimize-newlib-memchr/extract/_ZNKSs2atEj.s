  .text
  .globl _ZNKSs2atEj
  .type _ZNKSs2atEj, @function

#! file-offset 0xeb880
#! rip-offset  0xab880
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs2atEj:                           #        0xab880  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xab880  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xab882  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xab885  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xab888  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xab88a  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                 #  6     0xab88e  3      OPC=leal_r32_m16    
  movl %edx, %edx                       #  7     0xab891  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi              #  8     0xab893  4      OPC=cmpl_r32_m32    
  jae .L_ab8c0                          #  9     0xab897  2      OPC=jae_label       
  addl $0x8, %esp                       #  10    0xab899  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  11    0xab89c  3      OPC=addq_r64_r64    
  nop                                   #  12    0xab89f  1      OPC=nop             
  leal (%rsi,%rax,1), %eax              #  13    0xab8a0  3      OPC=leal_r32_m16    
  popq %r11                             #  14    0xab8a3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  15    0xab8a5  7      OPC=andl_r32_imm32  
  nop                                   #  16    0xab8ac  1      OPC=nop             
  nop                                   #  17    0xab8ad  1      OPC=nop             
  nop                                   #  18    0xab8ae  1      OPC=nop             
  nop                                   #  19    0xab8af  1      OPC=nop             
  addq %r15, %r11                       #  20    0xab8b0  3      OPC=addq_r64_r64    
  jmpq %r11                             #  21    0xab8b3  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  22    0xab8b6  2      OPC=xchgw_ax_r16    
  nop                                   #  23    0xab8b8  1      OPC=nop             
  nop                                   #  24    0xab8b9  1      OPC=nop             
  nop                                   #  25    0xab8ba  1      OPC=nop             
  nop                                   #  26    0xab8bb  1      OPC=nop             
  nop                                   #  27    0xab8bc  1      OPC=nop             
  nop                                   #  28    0xab8bd  1      OPC=nop             
  nop                                   #  29    0xab8be  1      OPC=nop             
  nop                                   #  30    0xab8bf  1      OPC=nop             
  nop                                   #  31    0xab8c0  1      OPC=nop             
  nop                                   #  32    0xab8c1  1      OPC=nop             
  nop                                   #  33    0xab8c2  1      OPC=nop             
  nop                                   #  34    0xab8c3  1      OPC=nop             
  nop                                   #  35    0xab8c4  1      OPC=nop             
  nop                                   #  36    0xab8c5  1      OPC=nop             
  nop                                   #  37    0xab8c6  1      OPC=nop             
.L_ab8c0:                               #        0xab8c7  0      OPC=<label>         
  movl $0x1003baac, %edi                #  38    0xab8c7  5      OPC=movl_r32_imm32  
  nop                                   #  39    0xab8cc  1      OPC=nop             
  nop                                   #  40    0xab8cd  1      OPC=nop             
  nop                                   #  41    0xab8ce  1      OPC=nop             
  nop                                   #  42    0xab8cf  1      OPC=nop             
  nop                                   #  43    0xab8d0  1      OPC=nop             
  nop                                   #  44    0xab8d1  1      OPC=nop             
  nop                                   #  45    0xab8d2  1      OPC=nop             
  nop                                   #  46    0xab8d3  1      OPC=nop             
  nop                                   #  47    0xab8d4  1      OPC=nop             
  nop                                   #  48    0xab8d5  1      OPC=nop             
  nop                                   #  49    0xab8d6  1      OPC=nop             
  nop                                   #  50    0xab8d7  1      OPC=nop             
  nop                                   #  51    0xab8d8  1      OPC=nop             
  nop                                   #  52    0xab8d9  1      OPC=nop             
  nop                                   #  53    0xab8da  1      OPC=nop             
  nop                                   #  54    0xab8db  1      OPC=nop             
  nop                                   #  55    0xab8dc  1      OPC=nop             
  nop                                   #  56    0xab8dd  1      OPC=nop             
  nop                                   #  57    0xab8de  1      OPC=nop             
  nop                                   #  58    0xab8df  1      OPC=nop             
  nop                                   #  59    0xab8e0  1      OPC=nop             
  nop                                   #  60    0xab8e1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  61    0xab8e2  5      OPC=callq_label     
                                                                                     
.size _ZNKSs2atEj, .-_ZNKSs2atEj

