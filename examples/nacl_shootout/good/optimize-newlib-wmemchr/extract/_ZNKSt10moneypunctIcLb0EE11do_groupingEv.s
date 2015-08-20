  .text
  .globl _ZNKSt10moneypunctIcLb0EE11do_groupingEv
  .type _ZNKSt10moneypunctIcLb0EE11do_groupingEv, @function

#! file-offset 0xbe5e0
#! rip-offset  0x7e5e0
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE11do_groupingEv:  #        0x7e5e0  0      OPC=<label>         
  pushq %rbx                                #  1     0x7e5e0  1      OPC=pushq_r64_1     
  movl %esi, %esi                           #  2     0x7e5e1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                           #  3     0x7e5e3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  4     0x7e5e5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                          #  5     0x7e5e7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                           #  6     0x7e5ea  3      OPC=addq_r64_r64    
  movl %esi, %esi                           #  7     0x7e5ed  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax               #  8     0x7e5ef  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                      #  9     0x7e5f4  4      OPC=leal_r32_m16    
  movl %eax, %eax                           #  10    0x7e5f8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi               #  11    0x7e5fa  5      OPC=movl_r32_m32    
  nop                                       #  12    0x7e5ff  1      OPC=nop             
  nop                                       #  13    0x7e600  1      OPC=nop             
  nop                                       #  14    0x7e601  1      OPC=nop             
  nop                                       #  15    0x7e602  1      OPC=nop             
  nop                                       #  16    0x7e603  1      OPC=nop             
  nop                                       #  17    0x7e604  1      OPC=nop             
  nop                                       #  18    0x7e605  1      OPC=nop             
  nop                                       #  19    0x7e606  1      OPC=nop             
  nop                                       #  20    0x7e607  1      OPC=nop             
  nop                                       #  21    0x7e608  1      OPC=nop             
  nop                                       #  22    0x7e609  1      OPC=nop             
  nop                                       #  23    0x7e60a  1      OPC=nop             
  nop                                       #  24    0x7e60b  1      OPC=nop             
  nop                                       #  25    0x7e60c  1      OPC=nop             
  nop                                       #  26    0x7e60d  1      OPC=nop             
  nop                                       #  27    0x7e60e  1      OPC=nop             
  nop                                       #  28    0x7e60f  1      OPC=nop             
  nop                                       #  29    0x7e610  1      OPC=nop             
  nop                                       #  30    0x7e611  1      OPC=nop             
  nop                                       #  31    0x7e612  1      OPC=nop             
  nop                                       #  32    0x7e613  1      OPC=nop             
  nop                                       #  33    0x7e614  1      OPC=nop             
  nop                                       #  34    0x7e615  1      OPC=nop             
  nop                                       #  35    0x7e616  1      OPC=nop             
  nop                                       #  36    0x7e617  1      OPC=nop             
  nop                                       #  37    0x7e618  1      OPC=nop             
  nop                                       #  38    0x7e619  1      OPC=nop             
  nop                                       #  39    0x7e61a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                 #  40    0x7e61b  5      OPC=callq_label     
  movl %ebx, %eax                           #  41    0x7e620  2      OPC=movl_r32_r32    
  addl $0x10, %esp                          #  42    0x7e622  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                           #  43    0x7e625  3      OPC=addq_r64_r64    
  popq %rbx                                 #  44    0x7e628  1      OPC=popq_r64_1      
  popq %r11                                 #  45    0x7e629  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  46    0x7e62b  7      OPC=andl_r32_imm32  
  nop                                       #  47    0x7e632  1      OPC=nop             
  nop                                       #  48    0x7e633  1      OPC=nop             
  nop                                       #  49    0x7e634  1      OPC=nop             
  nop                                       #  50    0x7e635  1      OPC=nop             
  addq %r15, %r11                           #  51    0x7e636  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  52    0x7e639  3      OPC=jmpq_r64        
  nop                                       #  53    0x7e63c  1      OPC=nop             
  nop                                       #  54    0x7e63d  1      OPC=nop             
  nop                                       #  55    0x7e63e  1      OPC=nop             
  nop                                       #  56    0x7e63f  1      OPC=nop             
  nop                                       #  57    0x7e640  1      OPC=nop             
  nop                                       #  58    0x7e641  1      OPC=nop             
  nop                                       #  59    0x7e642  1      OPC=nop             
  nop                                       #  60    0x7e643  1      OPC=nop             
  nop                                       #  61    0x7e644  1      OPC=nop             
  nop                                       #  62    0x7e645  1      OPC=nop             
  nop                                       #  63    0x7e646  1      OPC=nop             
  movl %eax, %edi                           #  64    0x7e647  2      OPC=movl_r32_r32    
  nop                                       #  65    0x7e649  1      OPC=nop             
  nop                                       #  66    0x7e64a  1      OPC=nop             
  nop                                       #  67    0x7e64b  1      OPC=nop             
  nop                                       #  68    0x7e64c  1      OPC=nop             
  nop                                       #  69    0x7e64d  1      OPC=nop             
  nop                                       #  70    0x7e64e  1      OPC=nop             
  nop                                       #  71    0x7e64f  1      OPC=nop             
  nop                                       #  72    0x7e650  1      OPC=nop             
  nop                                       #  73    0x7e651  1      OPC=nop             
  nop                                       #  74    0x7e652  1      OPC=nop             
  nop                                       #  75    0x7e653  1      OPC=nop             
  nop                                       #  76    0x7e654  1      OPC=nop             
  nop                                       #  77    0x7e655  1      OPC=nop             
  nop                                       #  78    0x7e656  1      OPC=nop             
  nop                                       #  79    0x7e657  1      OPC=nop             
  nop                                       #  80    0x7e658  1      OPC=nop             
  nop                                       #  81    0x7e659  1      OPC=nop             
  nop                                       #  82    0x7e65a  1      OPC=nop             
  nop                                       #  83    0x7e65b  1      OPC=nop             
  nop                                       #  84    0x7e65c  1      OPC=nop             
  nop                                       #  85    0x7e65d  1      OPC=nop             
  nop                                       #  86    0x7e65e  1      OPC=nop             
  nop                                       #  87    0x7e65f  1      OPC=nop             
  nop                                       #  88    0x7e660  1      OPC=nop             
  nop                                       #  89    0x7e661  1      OPC=nop             
  callq ._Unwind_Resume                     #  90    0x7e662  5      OPC=callq_label     
                                                                                         
.size _ZNKSt10moneypunctIcLb0EE11do_groupingEv, .-_ZNKSt10moneypunctIcLb0EE11do_groupingEv

