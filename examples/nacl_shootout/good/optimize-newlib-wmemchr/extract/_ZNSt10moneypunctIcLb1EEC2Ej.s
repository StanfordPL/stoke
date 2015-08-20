  .text
  .globl _ZNSt10moneypunctIcLb1EEC2Ej
  .type _ZNSt10moneypunctIcLb1EEC2Ej, @function

#! file-offset 0xbea00
#! rip-offset  0x7ea00
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC2Ej:                                     #        0x7ea00  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7ea00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7ea01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7ea03  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7ea05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7ea07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7ea0a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7ea0d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7ea0f  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  9     0x7ea11  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7ea19  3      OPC=setne_r8        
  nop                                                              #  11    0x7ea1c  1      OPC=nop             
  nop                                                              #  12    0x7ea1d  1      OPC=nop             
  nop                                                              #  13    0x7ea1e  1      OPC=nop             
  nop                                                              #  14    0x7ea1f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7ea20  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7ea22  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7ea2b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7ea2d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7ea2f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7ea34  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7ea36  1      OPC=nop             
  nop                                                              #  22    0x7ea37  1      OPC=nop             
  nop                                                              #  23    0x7ea38  1      OPC=nop             
  nop                                                              #  24    0x7ea39  1      OPC=nop             
  nop                                                              #  25    0x7ea3a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7ea3b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7ea40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7ea43  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7ea46  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7ea47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7ea49  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7ea50  1      OPC=nop             
  nop                                                              #  33    0x7ea51  1      OPC=nop             
  nop                                                              #  34    0x7ea52  1      OPC=nop             
  nop                                                              #  35    0x7ea53  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7ea54  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7ea57  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7ea5a  1      OPC=nop             
  nop                                                              #  39    0x7ea5b  1      OPC=nop             
  nop                                                              #  40    0x7ea5c  1      OPC=nop             
  nop                                                              #  41    0x7ea5d  1      OPC=nop             
  nop                                                              #  42    0x7ea5e  1      OPC=nop             
  nop                                                              #  43    0x7ea5f  1      OPC=nop             
  nop                                                              #  44    0x7ea60  1      OPC=nop             
  nop                                                              #  45    0x7ea61  1      OPC=nop             
  nop                                                              #  46    0x7ea62  1      OPC=nop             
  nop                                                              #  47    0x7ea63  1      OPC=nop             
  nop                                                              #  48    0x7ea64  1      OPC=nop             
  nop                                                              #  49    0x7ea65  1      OPC=nop             
  nop                                                              #  50    0x7ea66  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7ea67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7ea69  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7ea6d  1      OPC=nop             
  nop                                                              #  54    0x7ea6e  1      OPC=nop             
  nop                                                              #  55    0x7ea6f  1      OPC=nop             
  nop                                                              #  56    0x7ea70  1      OPC=nop             
  nop                                                              #  57    0x7ea71  1      OPC=nop             
  nop                                                              #  58    0x7ea72  1      OPC=nop             
  nop                                                              #  59    0x7ea73  1      OPC=nop             
  nop                                                              #  60    0x7ea74  1      OPC=nop             
  nop                                                              #  61    0x7ea75  1      OPC=nop             
  nop                                                              #  62    0x7ea76  1      OPC=nop             
  nop                                                              #  63    0x7ea77  1      OPC=nop             
  nop                                                              #  64    0x7ea78  1      OPC=nop             
  nop                                                              #  65    0x7ea79  1      OPC=nop             
  nop                                                              #  66    0x7ea7a  1      OPC=nop             
  nop                                                              #  67    0x7ea7b  1      OPC=nop             
  nop                                                              #  68    0x7ea7c  1      OPC=nop             
  nop                                                              #  69    0x7ea7d  1      OPC=nop             
  nop                                                              #  70    0x7ea7e  1      OPC=nop             
  nop                                                              #  71    0x7ea7f  1      OPC=nop             
  nop                                                              #  72    0x7ea80  1      OPC=nop             
  nop                                                              #  73    0x7ea81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7ea82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7ea87  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7ea8b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7ea8d  1      OPC=nop             
  nop                                                              #  78    0x7ea8e  1      OPC=nop             
  nop                                                              #  79    0x7ea8f  1      OPC=nop             
  nop                                                              #  80    0x7ea90  1      OPC=nop             
  nop                                                              #  81    0x7ea91  1      OPC=nop             
  nop                                                              #  82    0x7ea92  1      OPC=nop             
  nop                                                              #  83    0x7ea93  1      OPC=nop             
  nop                                                              #  84    0x7ea94  1      OPC=nop             
  nop                                                              #  85    0x7ea95  1      OPC=nop             
  nop                                                              #  86    0x7ea96  1      OPC=nop             
  nop                                                              #  87    0x7ea97  1      OPC=nop             
  nop                                                              #  88    0x7ea98  1      OPC=nop             
  nop                                                              #  89    0x7ea99  1      OPC=nop             
  nop                                                              #  90    0x7ea9a  1      OPC=nop             
  nop                                                              #  91    0x7ea9b  1      OPC=nop             
  nop                                                              #  92    0x7ea9c  1      OPC=nop             
  nop                                                              #  93    0x7ea9d  1      OPC=nop             
  nop                                                              #  94    0x7ea9e  1      OPC=nop             
  nop                                                              #  95    0x7ea9f  1      OPC=nop             
  nop                                                              #  96    0x7eaa0  1      OPC=nop             
  nop                                                              #  97    0x7eaa1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7eaa2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC2Ej, .-_ZNSt10moneypunctIcLb1EEC2Ej

