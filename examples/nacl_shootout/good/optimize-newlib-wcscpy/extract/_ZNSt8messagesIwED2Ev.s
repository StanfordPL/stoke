  .text
  .globl _ZNSt8messagesIwED2Ev
  .type _ZNSt8messagesIwED2Ev, @function

#! file-offset 0xf4600
#! rip-offset  0xb4600
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED2Ev:                               #        0xb4600  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4600  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4601  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4603  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4606  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4609  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb460c  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb460e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4616  1      OPC=nop             
  nop                                                 #  9     0xb4617  1      OPC=nop             
  nop                                                 #  10    0xb4618  1      OPC=nop             
  nop                                                 #  11    0xb4619  1      OPC=nop             
  nop                                                 #  12    0xb461a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb461b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4620  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4622  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4625  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4628  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4629  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb462e  1      OPC=nop             
  nop                                                 #  20    0xb462f  1      OPC=nop             
  nop                                                 #  21    0xb4630  1      OPC=nop             
  nop                                                 #  22    0xb4631  1      OPC=nop             
  nop                                                 #  23    0xb4632  1      OPC=nop             
  nop                                                 #  24    0xb4633  1      OPC=nop             
  nop                                                 #  25    0xb4634  1      OPC=nop             
  nop                                                 #  26    0xb4635  1      OPC=nop             
  nop                                                 #  27    0xb4636  1      OPC=nop             
  nop                                                 #  28    0xb4637  1      OPC=nop             
  nop                                                 #  29    0xb4638  1      OPC=nop             
  nop                                                 #  30    0xb4639  1      OPC=nop             
  nop                                                 #  31    0xb463a  1      OPC=nop             
  nop                                                 #  32    0xb463b  1      OPC=nop             
  nop                                                 #  33    0xb463c  1      OPC=nop             
  nop                                                 #  34    0xb463d  1      OPC=nop             
  nop                                                 #  35    0xb463e  1      OPC=nop             
  nop                                                 #  36    0xb463f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb4640  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb4642  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb4646  1      OPC=nop             
  nop                                                 #  40    0xb4647  1      OPC=nop             
  nop                                                 #  41    0xb4648  1      OPC=nop             
  nop                                                 #  42    0xb4649  1      OPC=nop             
  nop                                                 #  43    0xb464a  1      OPC=nop             
  nop                                                 #  44    0xb464b  1      OPC=nop             
  nop                                                 #  45    0xb464c  1      OPC=nop             
  nop                                                 #  46    0xb464d  1      OPC=nop             
  nop                                                 #  47    0xb464e  1      OPC=nop             
  nop                                                 #  48    0xb464f  1      OPC=nop             
  nop                                                 #  49    0xb4650  1      OPC=nop             
  nop                                                 #  50    0xb4651  1      OPC=nop             
  nop                                                 #  51    0xb4652  1      OPC=nop             
  nop                                                 #  52    0xb4653  1      OPC=nop             
  nop                                                 #  53    0xb4654  1      OPC=nop             
  nop                                                 #  54    0xb4655  1      OPC=nop             
  nop                                                 #  55    0xb4656  1      OPC=nop             
  nop                                                 #  56    0xb4657  1      OPC=nop             
  nop                                                 #  57    0xb4658  1      OPC=nop             
  nop                                                 #  58    0xb4659  1      OPC=nop             
  nop                                                 #  59    0xb465a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb465b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb4660  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb4664  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb4666  1      OPC=nop             
  nop                                                 #  64    0xb4667  1      OPC=nop             
  nop                                                 #  65    0xb4668  1      OPC=nop             
  nop                                                 #  66    0xb4669  1      OPC=nop             
  nop                                                 #  67    0xb466a  1      OPC=nop             
  nop                                                 #  68    0xb466b  1      OPC=nop             
  nop                                                 #  69    0xb466c  1      OPC=nop             
  nop                                                 #  70    0xb466d  1      OPC=nop             
  nop                                                 #  71    0xb466e  1      OPC=nop             
  nop                                                 #  72    0xb466f  1      OPC=nop             
  nop                                                 #  73    0xb4670  1      OPC=nop             
  nop                                                 #  74    0xb4671  1      OPC=nop             
  nop                                                 #  75    0xb4672  1      OPC=nop             
  nop                                                 #  76    0xb4673  1      OPC=nop             
  nop                                                 #  77    0xb4674  1      OPC=nop             
  nop                                                 #  78    0xb4675  1      OPC=nop             
  nop                                                 #  79    0xb4676  1      OPC=nop             
  nop                                                 #  80    0xb4677  1      OPC=nop             
  nop                                                 #  81    0xb4678  1      OPC=nop             
  nop                                                 #  82    0xb4679  1      OPC=nop             
  nop                                                 #  83    0xb467a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb467b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED2Ev, .-_ZNSt8messagesIwED2Ev

