  .text
  .globl _ZNSt8messagesIcED2Ev
  .type _ZNSt8messagesIcED2Ev, @function

#! file-offset 0xbbb40
#! rip-offset  0x7bb40
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIcED2Ev:                               #        0x7bb40  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7bb40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7bb41  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7bb43  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7bb46  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7bb49  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7bb4c  2      OPC=movl_r32_r32    
  movl $0x1003ae18, (%r15,%rbx,1)                     #  7     0x7bb4e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7bb56  1      OPC=nop             
  nop                                                 #  9     0x7bb57  1      OPC=nop             
  nop                                                 #  10    0x7bb58  1      OPC=nop             
  nop                                                 #  11    0x7bb59  1      OPC=nop             
  nop                                                 #  12    0x7bb5a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7bb5b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7bb60  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7bb62  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7bb65  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7bb68  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7bb69  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7bb6e  1      OPC=nop             
  nop                                                 #  20    0x7bb6f  1      OPC=nop             
  nop                                                 #  21    0x7bb70  1      OPC=nop             
  nop                                                 #  22    0x7bb71  1      OPC=nop             
  nop                                                 #  23    0x7bb72  1      OPC=nop             
  nop                                                 #  24    0x7bb73  1      OPC=nop             
  nop                                                 #  25    0x7bb74  1      OPC=nop             
  nop                                                 #  26    0x7bb75  1      OPC=nop             
  nop                                                 #  27    0x7bb76  1      OPC=nop             
  nop                                                 #  28    0x7bb77  1      OPC=nop             
  nop                                                 #  29    0x7bb78  1      OPC=nop             
  nop                                                 #  30    0x7bb79  1      OPC=nop             
  nop                                                 #  31    0x7bb7a  1      OPC=nop             
  nop                                                 #  32    0x7bb7b  1      OPC=nop             
  nop                                                 #  33    0x7bb7c  1      OPC=nop             
  nop                                                 #  34    0x7bb7d  1      OPC=nop             
  nop                                                 #  35    0x7bb7e  1      OPC=nop             
  nop                                                 #  36    0x7bb7f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7bb80  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7bb82  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7bb86  1      OPC=nop             
  nop                                                 #  40    0x7bb87  1      OPC=nop             
  nop                                                 #  41    0x7bb88  1      OPC=nop             
  nop                                                 #  42    0x7bb89  1      OPC=nop             
  nop                                                 #  43    0x7bb8a  1      OPC=nop             
  nop                                                 #  44    0x7bb8b  1      OPC=nop             
  nop                                                 #  45    0x7bb8c  1      OPC=nop             
  nop                                                 #  46    0x7bb8d  1      OPC=nop             
  nop                                                 #  47    0x7bb8e  1      OPC=nop             
  nop                                                 #  48    0x7bb8f  1      OPC=nop             
  nop                                                 #  49    0x7bb90  1      OPC=nop             
  nop                                                 #  50    0x7bb91  1      OPC=nop             
  nop                                                 #  51    0x7bb92  1      OPC=nop             
  nop                                                 #  52    0x7bb93  1      OPC=nop             
  nop                                                 #  53    0x7bb94  1      OPC=nop             
  nop                                                 #  54    0x7bb95  1      OPC=nop             
  nop                                                 #  55    0x7bb96  1      OPC=nop             
  nop                                                 #  56    0x7bb97  1      OPC=nop             
  nop                                                 #  57    0x7bb98  1      OPC=nop             
  nop                                                 #  58    0x7bb99  1      OPC=nop             
  nop                                                 #  59    0x7bb9a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7bb9b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7bba0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7bba4  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7bba6  1      OPC=nop             
  nop                                                 #  64    0x7bba7  1      OPC=nop             
  nop                                                 #  65    0x7bba8  1      OPC=nop             
  nop                                                 #  66    0x7bba9  1      OPC=nop             
  nop                                                 #  67    0x7bbaa  1      OPC=nop             
  nop                                                 #  68    0x7bbab  1      OPC=nop             
  nop                                                 #  69    0x7bbac  1      OPC=nop             
  nop                                                 #  70    0x7bbad  1      OPC=nop             
  nop                                                 #  71    0x7bbae  1      OPC=nop             
  nop                                                 #  72    0x7bbaf  1      OPC=nop             
  nop                                                 #  73    0x7bbb0  1      OPC=nop             
  nop                                                 #  74    0x7bbb1  1      OPC=nop             
  nop                                                 #  75    0x7bbb2  1      OPC=nop             
  nop                                                 #  76    0x7bbb3  1      OPC=nop             
  nop                                                 #  77    0x7bbb4  1      OPC=nop             
  nop                                                 #  78    0x7bbb5  1      OPC=nop             
  nop                                                 #  79    0x7bbb6  1      OPC=nop             
  nop                                                 #  80    0x7bbb7  1      OPC=nop             
  nop                                                 #  81    0x7bbb8  1      OPC=nop             
  nop                                                 #  82    0x7bbb9  1      OPC=nop             
  nop                                                 #  83    0x7bbba  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7bbbb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIcED2Ev, .-_ZNSt8messagesIcED2Ev

