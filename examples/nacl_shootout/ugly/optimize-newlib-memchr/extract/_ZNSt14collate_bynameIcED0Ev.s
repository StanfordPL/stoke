  .text
  .globl _ZNSt14collate_bynameIcED0Ev
  .type _ZNSt14collate_bynameIcED0Ev, @function

#! file-offset 0xc0f20
#! rip-offset  0x80f20
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIcED0Ev:                        #        0x80f20  0      OPC=<label>         
  pushq %rbx                                          #  1     0x80f20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x80f21  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x80f23  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x80f26  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x80f29  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x80f2c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x80f2e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x80f36  1      OPC=nop             
  nop                                                 #  9     0x80f37  1      OPC=nop             
  nop                                                 #  10    0x80f38  1      OPC=nop             
  nop                                                 #  11    0x80f39  1      OPC=nop             
  nop                                                 #  12    0x80f3a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x80f3b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x80f40  2      OPC=movl_r32_r32    
  nop                                                 #  15    0x80f42  1      OPC=nop             
  nop                                                 #  16    0x80f43  1      OPC=nop             
  nop                                                 #  17    0x80f44  1      OPC=nop             
  nop                                                 #  18    0x80f45  1      OPC=nop             
  nop                                                 #  19    0x80f46  1      OPC=nop             
  nop                                                 #  20    0x80f47  1      OPC=nop             
  nop                                                 #  21    0x80f48  1      OPC=nop             
  nop                                                 #  22    0x80f49  1      OPC=nop             
  nop                                                 #  23    0x80f4a  1      OPC=nop             
  nop                                                 #  24    0x80f4b  1      OPC=nop             
  nop                                                 #  25    0x80f4c  1      OPC=nop             
  nop                                                 #  26    0x80f4d  1      OPC=nop             
  nop                                                 #  27    0x80f4e  1      OPC=nop             
  nop                                                 #  28    0x80f4f  1      OPC=nop             
  nop                                                 #  29    0x80f50  1      OPC=nop             
  nop                                                 #  30    0x80f51  1      OPC=nop             
  nop                                                 #  31    0x80f52  1      OPC=nop             
  nop                                                 #  32    0x80f53  1      OPC=nop             
  nop                                                 #  33    0x80f54  1      OPC=nop             
  nop                                                 #  34    0x80f55  1      OPC=nop             
  nop                                                 #  35    0x80f56  1      OPC=nop             
  nop                                                 #  36    0x80f57  1      OPC=nop             
  nop                                                 #  37    0x80f58  1      OPC=nop             
  nop                                                 #  38    0x80f59  1      OPC=nop             
  nop                                                 #  39    0x80f5a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0x80f5b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0x80f60  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0x80f62  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0x80f65  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0x80f68  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0x80f69  5      OPC=jmpq_label_1    
  nop                                                 #  46    0x80f6e  1      OPC=nop             
  nop                                                 #  47    0x80f6f  1      OPC=nop             
  nop                                                 #  48    0x80f70  1      OPC=nop             
  nop                                                 #  49    0x80f71  1      OPC=nop             
  nop                                                 #  50    0x80f72  1      OPC=nop             
  nop                                                 #  51    0x80f73  1      OPC=nop             
  nop                                                 #  52    0x80f74  1      OPC=nop             
  nop                                                 #  53    0x80f75  1      OPC=nop             
  nop                                                 #  54    0x80f76  1      OPC=nop             
  nop                                                 #  55    0x80f77  1      OPC=nop             
  nop                                                 #  56    0x80f78  1      OPC=nop             
  nop                                                 #  57    0x80f79  1      OPC=nop             
  nop                                                 #  58    0x80f7a  1      OPC=nop             
  nop                                                 #  59    0x80f7b  1      OPC=nop             
  nop                                                 #  60    0x80f7c  1      OPC=nop             
  nop                                                 #  61    0x80f7d  1      OPC=nop             
  nop                                                 #  62    0x80f7e  1      OPC=nop             
  nop                                                 #  63    0x80f7f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0x80f80  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0x80f82  4      OPC=movl_m32_r32    
  nop                                                 #  66    0x80f86  1      OPC=nop             
  nop                                                 #  67    0x80f87  1      OPC=nop             
  nop                                                 #  68    0x80f88  1      OPC=nop             
  nop                                                 #  69    0x80f89  1      OPC=nop             
  nop                                                 #  70    0x80f8a  1      OPC=nop             
  nop                                                 #  71    0x80f8b  1      OPC=nop             
  nop                                                 #  72    0x80f8c  1      OPC=nop             
  nop                                                 #  73    0x80f8d  1      OPC=nop             
  nop                                                 #  74    0x80f8e  1      OPC=nop             
  nop                                                 #  75    0x80f8f  1      OPC=nop             
  nop                                                 #  76    0x80f90  1      OPC=nop             
  nop                                                 #  77    0x80f91  1      OPC=nop             
  nop                                                 #  78    0x80f92  1      OPC=nop             
  nop                                                 #  79    0x80f93  1      OPC=nop             
  nop                                                 #  80    0x80f94  1      OPC=nop             
  nop                                                 #  81    0x80f95  1      OPC=nop             
  nop                                                 #  82    0x80f96  1      OPC=nop             
  nop                                                 #  83    0x80f97  1      OPC=nop             
  nop                                                 #  84    0x80f98  1      OPC=nop             
  nop                                                 #  85    0x80f99  1      OPC=nop             
  nop                                                 #  86    0x80f9a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0x80f9b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0x80fa0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0x80fa4  2      OPC=movl_r32_r32    
  nop                                                 #  90    0x80fa6  1      OPC=nop             
  nop                                                 #  91    0x80fa7  1      OPC=nop             
  nop                                                 #  92    0x80fa8  1      OPC=nop             
  nop                                                 #  93    0x80fa9  1      OPC=nop             
  nop                                                 #  94    0x80faa  1      OPC=nop             
  nop                                                 #  95    0x80fab  1      OPC=nop             
  nop                                                 #  96    0x80fac  1      OPC=nop             
  nop                                                 #  97    0x80fad  1      OPC=nop             
  nop                                                 #  98    0x80fae  1      OPC=nop             
  nop                                                 #  99    0x80faf  1      OPC=nop             
  nop                                                 #  100   0x80fb0  1      OPC=nop             
  nop                                                 #  101   0x80fb1  1      OPC=nop             
  nop                                                 #  102   0x80fb2  1      OPC=nop             
  nop                                                 #  103   0x80fb3  1      OPC=nop             
  nop                                                 #  104   0x80fb4  1      OPC=nop             
  nop                                                 #  105   0x80fb5  1      OPC=nop             
  nop                                                 #  106   0x80fb6  1      OPC=nop             
  nop                                                 #  107   0x80fb7  1      OPC=nop             
  nop                                                 #  108   0x80fb8  1      OPC=nop             
  nop                                                 #  109   0x80fb9  1      OPC=nop             
  nop                                                 #  110   0x80fba  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0x80fbb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIcED0Ev, .-_ZNSt14collate_bynameIcED0Ev

