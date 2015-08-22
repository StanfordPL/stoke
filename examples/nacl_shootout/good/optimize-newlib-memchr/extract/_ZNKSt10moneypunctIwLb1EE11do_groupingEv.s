  .text
  .globl _ZNKSt10moneypunctIwLb1EE11do_groupingEv
  .type _ZNKSt10moneypunctIwLb1EE11do_groupingEv, @function

#! file-offset 0xf77a0
#! rip-offset  0xb77a0
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11do_groupingEv:  #        0xb77a0  0      OPC=<label>         
  pushq %rbx                                #  1     0xb77a0  1      OPC=pushq_r64_1     
  movl %esi, %esi                           #  2     0xb77a1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                           #  3     0xb77a3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  4     0xb77a5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                          #  5     0xb77a7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                           #  6     0xb77aa  3      OPC=addq_r64_r64    
  movl %esi, %esi                           #  7     0xb77ad  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax               #  8     0xb77af  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                      #  9     0xb77b4  4      OPC=leal_r32_m16    
  movl %eax, %eax                           #  10    0xb77b8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi               #  11    0xb77ba  5      OPC=movl_r32_m32    
  nop                                       #  12    0xb77bf  1      OPC=nop             
  nop                                       #  13    0xb77c0  1      OPC=nop             
  nop                                       #  14    0xb77c1  1      OPC=nop             
  nop                                       #  15    0xb77c2  1      OPC=nop             
  nop                                       #  16    0xb77c3  1      OPC=nop             
  nop                                       #  17    0xb77c4  1      OPC=nop             
  nop                                       #  18    0xb77c5  1      OPC=nop             
  nop                                       #  19    0xb77c6  1      OPC=nop             
  nop                                       #  20    0xb77c7  1      OPC=nop             
  nop                                       #  21    0xb77c8  1      OPC=nop             
  nop                                       #  22    0xb77c9  1      OPC=nop             
  nop                                       #  23    0xb77ca  1      OPC=nop             
  nop                                       #  24    0xb77cb  1      OPC=nop             
  nop                                       #  25    0xb77cc  1      OPC=nop             
  nop                                       #  26    0xb77cd  1      OPC=nop             
  nop                                       #  27    0xb77ce  1      OPC=nop             
  nop                                       #  28    0xb77cf  1      OPC=nop             
  nop                                       #  29    0xb77d0  1      OPC=nop             
  nop                                       #  30    0xb77d1  1      OPC=nop             
  nop                                       #  31    0xb77d2  1      OPC=nop             
  nop                                       #  32    0xb77d3  1      OPC=nop             
  nop                                       #  33    0xb77d4  1      OPC=nop             
  nop                                       #  34    0xb77d5  1      OPC=nop             
  nop                                       #  35    0xb77d6  1      OPC=nop             
  nop                                       #  36    0xb77d7  1      OPC=nop             
  nop                                       #  37    0xb77d8  1      OPC=nop             
  nop                                       #  38    0xb77d9  1      OPC=nop             
  nop                                       #  39    0xb77da  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                 #  40    0xb77db  5      OPC=callq_label     
  movl %ebx, %eax                           #  41    0xb77e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                          #  42    0xb77e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                           #  43    0xb77e5  3      OPC=addq_r64_r64    
  popq %rbx                                 #  44    0xb77e8  1      OPC=popq_r64_1      
  popq %r11                                 #  45    0xb77e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  46    0xb77eb  7      OPC=andl_r32_imm32  
  nop                                       #  47    0xb77f2  1      OPC=nop             
  nop                                       #  48    0xb77f3  1      OPC=nop             
  nop                                       #  49    0xb77f4  1      OPC=nop             
  nop                                       #  50    0xb77f5  1      OPC=nop             
  addq %r15, %r11                           #  51    0xb77f6  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  52    0xb77f9  3      OPC=jmpq_r64        
  nop                                       #  53    0xb77fc  1      OPC=nop             
  nop                                       #  54    0xb77fd  1      OPC=nop             
  nop                                       #  55    0xb77fe  1      OPC=nop             
  nop                                       #  56    0xb77ff  1      OPC=nop             
  nop                                       #  57    0xb7800  1      OPC=nop             
  nop                                       #  58    0xb7801  1      OPC=nop             
  nop                                       #  59    0xb7802  1      OPC=nop             
  nop                                       #  60    0xb7803  1      OPC=nop             
  nop                                       #  61    0xb7804  1      OPC=nop             
  nop                                       #  62    0xb7805  1      OPC=nop             
  nop                                       #  63    0xb7806  1      OPC=nop             
  movl %eax, %edi                           #  64    0xb7807  2      OPC=movl_r32_r32    
  nop                                       #  65    0xb7809  1      OPC=nop             
  nop                                       #  66    0xb780a  1      OPC=nop             
  nop                                       #  67    0xb780b  1      OPC=nop             
  nop                                       #  68    0xb780c  1      OPC=nop             
  nop                                       #  69    0xb780d  1      OPC=nop             
  nop                                       #  70    0xb780e  1      OPC=nop             
  nop                                       #  71    0xb780f  1      OPC=nop             
  nop                                       #  72    0xb7810  1      OPC=nop             
  nop                                       #  73    0xb7811  1      OPC=nop             
  nop                                       #  74    0xb7812  1      OPC=nop             
  nop                                       #  75    0xb7813  1      OPC=nop             
  nop                                       #  76    0xb7814  1      OPC=nop             
  nop                                       #  77    0xb7815  1      OPC=nop             
  nop                                       #  78    0xb7816  1      OPC=nop             
  nop                                       #  79    0xb7817  1      OPC=nop             
  nop                                       #  80    0xb7818  1      OPC=nop             
  nop                                       #  81    0xb7819  1      OPC=nop             
  nop                                       #  82    0xb781a  1      OPC=nop             
  nop                                       #  83    0xb781b  1      OPC=nop             
  nop                                       #  84    0xb781c  1      OPC=nop             
  nop                                       #  85    0xb781d  1      OPC=nop             
  nop                                       #  86    0xb781e  1      OPC=nop             
  nop                                       #  87    0xb781f  1      OPC=nop             
  nop                                       #  88    0xb7820  1      OPC=nop             
  nop                                       #  89    0xb7821  1      OPC=nop             
  callq ._Unwind_Resume                     #  90    0xb7822  5      OPC=callq_label     
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11do_groupingEv, .-_ZNKSt10moneypunctIwLb1EE11do_groupingEv

