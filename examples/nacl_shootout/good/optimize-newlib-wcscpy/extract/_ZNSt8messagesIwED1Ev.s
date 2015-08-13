  .text
  .globl _ZNSt8messagesIwED1Ev
  .type _ZNSt8messagesIwED1Ev, @function

#! file-offset 0xf4580
#! rip-offset  0xb4580
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED1Ev:                               #        0xb4580  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4580  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4581  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4583  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4586  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4589  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb458c  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb458e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4596  1      OPC=nop             
  nop                                                 #  9     0xb4597  1      OPC=nop             
  nop                                                 #  10    0xb4598  1      OPC=nop             
  nop                                                 #  11    0xb4599  1      OPC=nop             
  nop                                                 #  12    0xb459a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb459b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb45a0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb45a2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb45a5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb45a8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb45a9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb45ae  1      OPC=nop             
  nop                                                 #  20    0xb45af  1      OPC=nop             
  nop                                                 #  21    0xb45b0  1      OPC=nop             
  nop                                                 #  22    0xb45b1  1      OPC=nop             
  nop                                                 #  23    0xb45b2  1      OPC=nop             
  nop                                                 #  24    0xb45b3  1      OPC=nop             
  nop                                                 #  25    0xb45b4  1      OPC=nop             
  nop                                                 #  26    0xb45b5  1      OPC=nop             
  nop                                                 #  27    0xb45b6  1      OPC=nop             
  nop                                                 #  28    0xb45b7  1      OPC=nop             
  nop                                                 #  29    0xb45b8  1      OPC=nop             
  nop                                                 #  30    0xb45b9  1      OPC=nop             
  nop                                                 #  31    0xb45ba  1      OPC=nop             
  nop                                                 #  32    0xb45bb  1      OPC=nop             
  nop                                                 #  33    0xb45bc  1      OPC=nop             
  nop                                                 #  34    0xb45bd  1      OPC=nop             
  nop                                                 #  35    0xb45be  1      OPC=nop             
  nop                                                 #  36    0xb45bf  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb45c0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb45c2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb45c6  1      OPC=nop             
  nop                                                 #  40    0xb45c7  1      OPC=nop             
  nop                                                 #  41    0xb45c8  1      OPC=nop             
  nop                                                 #  42    0xb45c9  1      OPC=nop             
  nop                                                 #  43    0xb45ca  1      OPC=nop             
  nop                                                 #  44    0xb45cb  1      OPC=nop             
  nop                                                 #  45    0xb45cc  1      OPC=nop             
  nop                                                 #  46    0xb45cd  1      OPC=nop             
  nop                                                 #  47    0xb45ce  1      OPC=nop             
  nop                                                 #  48    0xb45cf  1      OPC=nop             
  nop                                                 #  49    0xb45d0  1      OPC=nop             
  nop                                                 #  50    0xb45d1  1      OPC=nop             
  nop                                                 #  51    0xb45d2  1      OPC=nop             
  nop                                                 #  52    0xb45d3  1      OPC=nop             
  nop                                                 #  53    0xb45d4  1      OPC=nop             
  nop                                                 #  54    0xb45d5  1      OPC=nop             
  nop                                                 #  55    0xb45d6  1      OPC=nop             
  nop                                                 #  56    0xb45d7  1      OPC=nop             
  nop                                                 #  57    0xb45d8  1      OPC=nop             
  nop                                                 #  58    0xb45d9  1      OPC=nop             
  nop                                                 #  59    0xb45da  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb45db  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb45e0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb45e4  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb45e6  1      OPC=nop             
  nop                                                 #  64    0xb45e7  1      OPC=nop             
  nop                                                 #  65    0xb45e8  1      OPC=nop             
  nop                                                 #  66    0xb45e9  1      OPC=nop             
  nop                                                 #  67    0xb45ea  1      OPC=nop             
  nop                                                 #  68    0xb45eb  1      OPC=nop             
  nop                                                 #  69    0xb45ec  1      OPC=nop             
  nop                                                 #  70    0xb45ed  1      OPC=nop             
  nop                                                 #  71    0xb45ee  1      OPC=nop             
  nop                                                 #  72    0xb45ef  1      OPC=nop             
  nop                                                 #  73    0xb45f0  1      OPC=nop             
  nop                                                 #  74    0xb45f1  1      OPC=nop             
  nop                                                 #  75    0xb45f2  1      OPC=nop             
  nop                                                 #  76    0xb45f3  1      OPC=nop             
  nop                                                 #  77    0xb45f4  1      OPC=nop             
  nop                                                 #  78    0xb45f5  1      OPC=nop             
  nop                                                 #  79    0xb45f6  1      OPC=nop             
  nop                                                 #  80    0xb45f7  1      OPC=nop             
  nop                                                 #  81    0xb45f8  1      OPC=nop             
  nop                                                 #  82    0xb45f9  1      OPC=nop             
  nop                                                 #  83    0xb45fa  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb45fb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED1Ev, .-_ZNSt8messagesIwED1Ev

