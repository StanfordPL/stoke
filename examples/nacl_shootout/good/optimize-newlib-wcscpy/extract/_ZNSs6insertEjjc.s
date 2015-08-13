  .text
  .globl _ZNSs6insertEjjc
  .type _ZNSs6insertEjjc, @function

#! file-offset 0xee740
#! rip-offset  0xae740
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEjjc:                      #        0xae740  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xae740  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xae742  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xae745  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xae748  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xae74a  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xae74e  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xae751  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi              #  8     0xae753  4      OPC=cmpl_r32_m32    
  ja .L_ae780                           #  9     0xae757  2      OPC=ja_label        
  movsbl %cl, %r8d                      #  10    0xae759  4      OPC=movsbl_r32_r8   
  nop                                   #  11    0xae75d  1      OPC=nop             
  nop                                   #  12    0xae75e  1      OPC=nop             
  nop                                   #  13    0xae75f  1      OPC=nop             
  addl $0x8, %esp                       #  14    0xae760  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  15    0xae763  3      OPC=addq_r64_r64    
  movl %edx, %ecx                       #  16    0xae766  2      OPC=movl_r32_r32    
  xorl %edx, %edx                       #  17    0xae768  2      OPC=xorl_r32_r32    
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  18    0xae76a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                        #  19    0xae76f  2      OPC=xchgw_ax_r16    
  nop                                   #  20    0xae771  1      OPC=nop             
  nop                                   #  21    0xae772  1      OPC=nop             
  nop                                   #  22    0xae773  1      OPC=nop             
  nop                                   #  23    0xae774  1      OPC=nop             
  nop                                   #  24    0xae775  1      OPC=nop             
  nop                                   #  25    0xae776  1      OPC=nop             
  nop                                   #  26    0xae777  1      OPC=nop             
  nop                                   #  27    0xae778  1      OPC=nop             
  nop                                   #  28    0xae779  1      OPC=nop             
  nop                                   #  29    0xae77a  1      OPC=nop             
  nop                                   #  30    0xae77b  1      OPC=nop             
  nop                                   #  31    0xae77c  1      OPC=nop             
  nop                                   #  32    0xae77d  1      OPC=nop             
  nop                                   #  33    0xae77e  1      OPC=nop             
  nop                                   #  34    0xae77f  1      OPC=nop             
.L_ae780:                               #        0xae780  0      OPC=<label>         
  movl $0x1003bb73, %edi                #  35    0xae780  5      OPC=movl_r32_imm32  
  nop                                   #  36    0xae785  1      OPC=nop             
  nop                                   #  37    0xae786  1      OPC=nop             
  nop                                   #  38    0xae787  1      OPC=nop             
  nop                                   #  39    0xae788  1      OPC=nop             
  nop                                   #  40    0xae789  1      OPC=nop             
  nop                                   #  41    0xae78a  1      OPC=nop             
  nop                                   #  42    0xae78b  1      OPC=nop             
  nop                                   #  43    0xae78c  1      OPC=nop             
  nop                                   #  44    0xae78d  1      OPC=nop             
  nop                                   #  45    0xae78e  1      OPC=nop             
  nop                                   #  46    0xae78f  1      OPC=nop             
  nop                                   #  47    0xae790  1      OPC=nop             
  nop                                   #  48    0xae791  1      OPC=nop             
  nop                                   #  49    0xae792  1      OPC=nop             
  nop                                   #  50    0xae793  1      OPC=nop             
  nop                                   #  51    0xae794  1      OPC=nop             
  nop                                   #  52    0xae795  1      OPC=nop             
  nop                                   #  53    0xae796  1      OPC=nop             
  nop                                   #  54    0xae797  1      OPC=nop             
  nop                                   #  55    0xae798  1      OPC=nop             
  nop                                   #  56    0xae799  1      OPC=nop             
  nop                                   #  57    0xae79a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  58    0xae79b  5      OPC=callq_label     
                                                                                     
.size _ZNSs6insertEjjc, .-_ZNSs6insertEjjc

