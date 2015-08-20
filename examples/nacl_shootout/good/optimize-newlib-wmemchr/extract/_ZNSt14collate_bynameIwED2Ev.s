  .text
  .globl _ZNSt14collate_bynameIwED2Ev
  .type _ZNSt14collate_bynameIwED2Ev, @function

#! file-offset 0xf95c0
#! rip-offset  0xb95c0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIwED2Ev:                        #        0xb95c0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb95c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb95c1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb95c3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb95c6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb95c9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb95cc  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb95ce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb95d6  1      OPC=nop             
  nop                                                 #  9     0xb95d7  1      OPC=nop             
  nop                                                 #  10    0xb95d8  1      OPC=nop             
  nop                                                 #  11    0xb95d9  1      OPC=nop             
  nop                                                 #  12    0xb95da  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb95db  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb95e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb95e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb95e5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb95e8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb95e9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb95ee  1      OPC=nop             
  nop                                                 #  20    0xb95ef  1      OPC=nop             
  nop                                                 #  21    0xb95f0  1      OPC=nop             
  nop                                                 #  22    0xb95f1  1      OPC=nop             
  nop                                                 #  23    0xb95f2  1      OPC=nop             
  nop                                                 #  24    0xb95f3  1      OPC=nop             
  nop                                                 #  25    0xb95f4  1      OPC=nop             
  nop                                                 #  26    0xb95f5  1      OPC=nop             
  nop                                                 #  27    0xb95f6  1      OPC=nop             
  nop                                                 #  28    0xb95f7  1      OPC=nop             
  nop                                                 #  29    0xb95f8  1      OPC=nop             
  nop                                                 #  30    0xb95f9  1      OPC=nop             
  nop                                                 #  31    0xb95fa  1      OPC=nop             
  nop                                                 #  32    0xb95fb  1      OPC=nop             
  nop                                                 #  33    0xb95fc  1      OPC=nop             
  nop                                                 #  34    0xb95fd  1      OPC=nop             
  nop                                                 #  35    0xb95fe  1      OPC=nop             
  nop                                                 #  36    0xb95ff  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb9600  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb9602  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb9606  1      OPC=nop             
  nop                                                 #  40    0xb9607  1      OPC=nop             
  nop                                                 #  41    0xb9608  1      OPC=nop             
  nop                                                 #  42    0xb9609  1      OPC=nop             
  nop                                                 #  43    0xb960a  1      OPC=nop             
  nop                                                 #  44    0xb960b  1      OPC=nop             
  nop                                                 #  45    0xb960c  1      OPC=nop             
  nop                                                 #  46    0xb960d  1      OPC=nop             
  nop                                                 #  47    0xb960e  1      OPC=nop             
  nop                                                 #  48    0xb960f  1      OPC=nop             
  nop                                                 #  49    0xb9610  1      OPC=nop             
  nop                                                 #  50    0xb9611  1      OPC=nop             
  nop                                                 #  51    0xb9612  1      OPC=nop             
  nop                                                 #  52    0xb9613  1      OPC=nop             
  nop                                                 #  53    0xb9614  1      OPC=nop             
  nop                                                 #  54    0xb9615  1      OPC=nop             
  nop                                                 #  55    0xb9616  1      OPC=nop             
  nop                                                 #  56    0xb9617  1      OPC=nop             
  nop                                                 #  57    0xb9618  1      OPC=nop             
  nop                                                 #  58    0xb9619  1      OPC=nop             
  nop                                                 #  59    0xb961a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb961b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb9620  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb9624  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb9626  1      OPC=nop             
  nop                                                 #  64    0xb9627  1      OPC=nop             
  nop                                                 #  65    0xb9628  1      OPC=nop             
  nop                                                 #  66    0xb9629  1      OPC=nop             
  nop                                                 #  67    0xb962a  1      OPC=nop             
  nop                                                 #  68    0xb962b  1      OPC=nop             
  nop                                                 #  69    0xb962c  1      OPC=nop             
  nop                                                 #  70    0xb962d  1      OPC=nop             
  nop                                                 #  71    0xb962e  1      OPC=nop             
  nop                                                 #  72    0xb962f  1      OPC=nop             
  nop                                                 #  73    0xb9630  1      OPC=nop             
  nop                                                 #  74    0xb9631  1      OPC=nop             
  nop                                                 #  75    0xb9632  1      OPC=nop             
  nop                                                 #  76    0xb9633  1      OPC=nop             
  nop                                                 #  77    0xb9634  1      OPC=nop             
  nop                                                 #  78    0xb9635  1      OPC=nop             
  nop                                                 #  79    0xb9636  1      OPC=nop             
  nop                                                 #  80    0xb9637  1      OPC=nop             
  nop                                                 #  81    0xb9638  1      OPC=nop             
  nop                                                 #  82    0xb9639  1      OPC=nop             
  nop                                                 #  83    0xb963a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb963b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIwED2Ev, .-_ZNSt14collate_bynameIwED2Ev

