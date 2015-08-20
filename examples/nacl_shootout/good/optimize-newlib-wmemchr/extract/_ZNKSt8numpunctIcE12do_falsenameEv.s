  .text
  .globl _ZNKSt8numpunctIcE12do_falsenameEv
  .type _ZNKSt8numpunctIcE12do_falsenameEv, @function

#! file-offset 0xbe0e0
#! rip-offset  0x7e0e0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE12do_falsenameEv:  #        0x7e0e0  0      OPC=<label>         
  pushq %rbx                          #  1     0x7e0e0  1      OPC=pushq_r64_1     
  movl %esi, %esi                     #  2     0x7e0e1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                     #  3     0x7e0e3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0x7e0e5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                    #  5     0x7e0e7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  6     0x7e0ea  3      OPC=addq_r64_r64    
  movl %esi, %esi                     #  7     0x7e0ed  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax         #  8     0x7e0ef  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                #  9     0x7e0f4  4      OPC=leal_r32_m16    
  movl %eax, %eax                     #  10    0x7e0f8  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi        #  11    0x7e0fa  5      OPC=movl_r32_m32    
  nop                                 #  12    0x7e0ff  1      OPC=nop             
  nop                                 #  13    0x7e100  1      OPC=nop             
  nop                                 #  14    0x7e101  1      OPC=nop             
  nop                                 #  15    0x7e102  1      OPC=nop             
  nop                                 #  16    0x7e103  1      OPC=nop             
  nop                                 #  17    0x7e104  1      OPC=nop             
  nop                                 #  18    0x7e105  1      OPC=nop             
  nop                                 #  19    0x7e106  1      OPC=nop             
  nop                                 #  20    0x7e107  1      OPC=nop             
  nop                                 #  21    0x7e108  1      OPC=nop             
  nop                                 #  22    0x7e109  1      OPC=nop             
  nop                                 #  23    0x7e10a  1      OPC=nop             
  nop                                 #  24    0x7e10b  1      OPC=nop             
  nop                                 #  25    0x7e10c  1      OPC=nop             
  nop                                 #  26    0x7e10d  1      OPC=nop             
  nop                                 #  27    0x7e10e  1      OPC=nop             
  nop                                 #  28    0x7e10f  1      OPC=nop             
  nop                                 #  29    0x7e110  1      OPC=nop             
  nop                                 #  30    0x7e111  1      OPC=nop             
  nop                                 #  31    0x7e112  1      OPC=nop             
  nop                                 #  32    0x7e113  1      OPC=nop             
  nop                                 #  33    0x7e114  1      OPC=nop             
  nop                                 #  34    0x7e115  1      OPC=nop             
  nop                                 #  35    0x7e116  1      OPC=nop             
  nop                                 #  36    0x7e117  1      OPC=nop             
  nop                                 #  37    0x7e118  1      OPC=nop             
  nop                                 #  38    0x7e119  1      OPC=nop             
  nop                                 #  39    0x7e11a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE           #  40    0x7e11b  5      OPC=callq_label     
  movl %ebx, %eax                     #  41    0x7e120  2      OPC=movl_r32_r32    
  addl $0x10, %esp                    #  42    0x7e122  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  43    0x7e125  3      OPC=addq_r64_r64    
  popq %rbx                           #  44    0x7e128  1      OPC=popq_r64_1      
  popq %r11                           #  45    0x7e129  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  46    0x7e12b  7      OPC=andl_r32_imm32  
  nop                                 #  47    0x7e132  1      OPC=nop             
  nop                                 #  48    0x7e133  1      OPC=nop             
  nop                                 #  49    0x7e134  1      OPC=nop             
  nop                                 #  50    0x7e135  1      OPC=nop             
  addq %r15, %r11                     #  51    0x7e136  3      OPC=addq_r64_r64    
  jmpq %r11                           #  52    0x7e139  3      OPC=jmpq_r64        
  nop                                 #  53    0x7e13c  1      OPC=nop             
  nop                                 #  54    0x7e13d  1      OPC=nop             
  nop                                 #  55    0x7e13e  1      OPC=nop             
  nop                                 #  56    0x7e13f  1      OPC=nop             
  nop                                 #  57    0x7e140  1      OPC=nop             
  nop                                 #  58    0x7e141  1      OPC=nop             
  nop                                 #  59    0x7e142  1      OPC=nop             
  nop                                 #  60    0x7e143  1      OPC=nop             
  nop                                 #  61    0x7e144  1      OPC=nop             
  nop                                 #  62    0x7e145  1      OPC=nop             
  nop                                 #  63    0x7e146  1      OPC=nop             
  movl %eax, %edi                     #  64    0x7e147  2      OPC=movl_r32_r32    
  nop                                 #  65    0x7e149  1      OPC=nop             
  nop                                 #  66    0x7e14a  1      OPC=nop             
  nop                                 #  67    0x7e14b  1      OPC=nop             
  nop                                 #  68    0x7e14c  1      OPC=nop             
  nop                                 #  69    0x7e14d  1      OPC=nop             
  nop                                 #  70    0x7e14e  1      OPC=nop             
  nop                                 #  71    0x7e14f  1      OPC=nop             
  nop                                 #  72    0x7e150  1      OPC=nop             
  nop                                 #  73    0x7e151  1      OPC=nop             
  nop                                 #  74    0x7e152  1      OPC=nop             
  nop                                 #  75    0x7e153  1      OPC=nop             
  nop                                 #  76    0x7e154  1      OPC=nop             
  nop                                 #  77    0x7e155  1      OPC=nop             
  nop                                 #  78    0x7e156  1      OPC=nop             
  nop                                 #  79    0x7e157  1      OPC=nop             
  nop                                 #  80    0x7e158  1      OPC=nop             
  nop                                 #  81    0x7e159  1      OPC=nop             
  nop                                 #  82    0x7e15a  1      OPC=nop             
  nop                                 #  83    0x7e15b  1      OPC=nop             
  nop                                 #  84    0x7e15c  1      OPC=nop             
  nop                                 #  85    0x7e15d  1      OPC=nop             
  nop                                 #  86    0x7e15e  1      OPC=nop             
  nop                                 #  87    0x7e15f  1      OPC=nop             
  nop                                 #  88    0x7e160  1      OPC=nop             
  nop                                 #  89    0x7e161  1      OPC=nop             
  callq ._Unwind_Resume               #  90    0x7e162  5      OPC=callq_label     
                                                                                   
.size _ZNKSt8numpunctIcE12do_falsenameEv, .-_ZNKSt8numpunctIcE12do_falsenameEv

