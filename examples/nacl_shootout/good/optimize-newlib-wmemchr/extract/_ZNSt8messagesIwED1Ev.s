  .text
  .globl _ZNSt8messagesIwED1Ev
  .type _ZNSt8messagesIwED1Ev, @function

#! file-offset 0xf4880
#! rip-offset  0xb4880
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED1Ev:                               #        0xb4880  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4880  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4881  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4883  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4886  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4889  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb488c  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb488e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4896  1      OPC=nop             
  nop                                                 #  9     0xb4897  1      OPC=nop             
  nop                                                 #  10    0xb4898  1      OPC=nop             
  nop                                                 #  11    0xb4899  1      OPC=nop             
  nop                                                 #  12    0xb489a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb489b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb48a0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb48a2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb48a5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb48a8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb48a9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb48ae  1      OPC=nop             
  nop                                                 #  20    0xb48af  1      OPC=nop             
  nop                                                 #  21    0xb48b0  1      OPC=nop             
  nop                                                 #  22    0xb48b1  1      OPC=nop             
  nop                                                 #  23    0xb48b2  1      OPC=nop             
  nop                                                 #  24    0xb48b3  1      OPC=nop             
  nop                                                 #  25    0xb48b4  1      OPC=nop             
  nop                                                 #  26    0xb48b5  1      OPC=nop             
  nop                                                 #  27    0xb48b6  1      OPC=nop             
  nop                                                 #  28    0xb48b7  1      OPC=nop             
  nop                                                 #  29    0xb48b8  1      OPC=nop             
  nop                                                 #  30    0xb48b9  1      OPC=nop             
  nop                                                 #  31    0xb48ba  1      OPC=nop             
  nop                                                 #  32    0xb48bb  1      OPC=nop             
  nop                                                 #  33    0xb48bc  1      OPC=nop             
  nop                                                 #  34    0xb48bd  1      OPC=nop             
  nop                                                 #  35    0xb48be  1      OPC=nop             
  nop                                                 #  36    0xb48bf  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb48c0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb48c2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb48c6  1      OPC=nop             
  nop                                                 #  40    0xb48c7  1      OPC=nop             
  nop                                                 #  41    0xb48c8  1      OPC=nop             
  nop                                                 #  42    0xb48c9  1      OPC=nop             
  nop                                                 #  43    0xb48ca  1      OPC=nop             
  nop                                                 #  44    0xb48cb  1      OPC=nop             
  nop                                                 #  45    0xb48cc  1      OPC=nop             
  nop                                                 #  46    0xb48cd  1      OPC=nop             
  nop                                                 #  47    0xb48ce  1      OPC=nop             
  nop                                                 #  48    0xb48cf  1      OPC=nop             
  nop                                                 #  49    0xb48d0  1      OPC=nop             
  nop                                                 #  50    0xb48d1  1      OPC=nop             
  nop                                                 #  51    0xb48d2  1      OPC=nop             
  nop                                                 #  52    0xb48d3  1      OPC=nop             
  nop                                                 #  53    0xb48d4  1      OPC=nop             
  nop                                                 #  54    0xb48d5  1      OPC=nop             
  nop                                                 #  55    0xb48d6  1      OPC=nop             
  nop                                                 #  56    0xb48d7  1      OPC=nop             
  nop                                                 #  57    0xb48d8  1      OPC=nop             
  nop                                                 #  58    0xb48d9  1      OPC=nop             
  nop                                                 #  59    0xb48da  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb48db  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb48e0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb48e4  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb48e6  1      OPC=nop             
  nop                                                 #  64    0xb48e7  1      OPC=nop             
  nop                                                 #  65    0xb48e8  1      OPC=nop             
  nop                                                 #  66    0xb48e9  1      OPC=nop             
  nop                                                 #  67    0xb48ea  1      OPC=nop             
  nop                                                 #  68    0xb48eb  1      OPC=nop             
  nop                                                 #  69    0xb48ec  1      OPC=nop             
  nop                                                 #  70    0xb48ed  1      OPC=nop             
  nop                                                 #  71    0xb48ee  1      OPC=nop             
  nop                                                 #  72    0xb48ef  1      OPC=nop             
  nop                                                 #  73    0xb48f0  1      OPC=nop             
  nop                                                 #  74    0xb48f1  1      OPC=nop             
  nop                                                 #  75    0xb48f2  1      OPC=nop             
  nop                                                 #  76    0xb48f3  1      OPC=nop             
  nop                                                 #  77    0xb48f4  1      OPC=nop             
  nop                                                 #  78    0xb48f5  1      OPC=nop             
  nop                                                 #  79    0xb48f6  1      OPC=nop             
  nop                                                 #  80    0xb48f7  1      OPC=nop             
  nop                                                 #  81    0xb48f8  1      OPC=nop             
  nop                                                 #  82    0xb48f9  1      OPC=nop             
  nop                                                 #  83    0xb48fa  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb48fb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED1Ev, .-_ZNSt8messagesIwED1Ev

