  .text
  .globl _ZNSt7collateIwED2Ev
  .type _ZNSt7collateIwED2Ev, @function

#! file-offset 0xf4e80
#! rip-offset  0xb4e80
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED2Ev:                                #        0xb4e80  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4e80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4e81  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4e83  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4e86  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4e89  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb4e8c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb4e8e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4e96  1      OPC=nop             
  nop                                                 #  9     0xb4e97  1      OPC=nop             
  nop                                                 #  10    0xb4e98  1      OPC=nop             
  nop                                                 #  11    0xb4e99  1      OPC=nop             
  nop                                                 #  12    0xb4e9a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb4e9b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4ea0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4ea2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4ea5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4ea8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4ea9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb4eae  1      OPC=nop             
  nop                                                 #  20    0xb4eaf  1      OPC=nop             
  nop                                                 #  21    0xb4eb0  1      OPC=nop             
  nop                                                 #  22    0xb4eb1  1      OPC=nop             
  nop                                                 #  23    0xb4eb2  1      OPC=nop             
  nop                                                 #  24    0xb4eb3  1      OPC=nop             
  nop                                                 #  25    0xb4eb4  1      OPC=nop             
  nop                                                 #  26    0xb4eb5  1      OPC=nop             
  nop                                                 #  27    0xb4eb6  1      OPC=nop             
  nop                                                 #  28    0xb4eb7  1      OPC=nop             
  nop                                                 #  29    0xb4eb8  1      OPC=nop             
  nop                                                 #  30    0xb4eb9  1      OPC=nop             
  nop                                                 #  31    0xb4eba  1      OPC=nop             
  nop                                                 #  32    0xb4ebb  1      OPC=nop             
  nop                                                 #  33    0xb4ebc  1      OPC=nop             
  nop                                                 #  34    0xb4ebd  1      OPC=nop             
  nop                                                 #  35    0xb4ebe  1      OPC=nop             
  nop                                                 #  36    0xb4ebf  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb4ec0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb4ec2  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb4ec6  1      OPC=nop             
  nop                                                 #  40    0xb4ec7  1      OPC=nop             
  nop                                                 #  41    0xb4ec8  1      OPC=nop             
  nop                                                 #  42    0xb4ec9  1      OPC=nop             
  nop                                                 #  43    0xb4eca  1      OPC=nop             
  nop                                                 #  44    0xb4ecb  1      OPC=nop             
  nop                                                 #  45    0xb4ecc  1      OPC=nop             
  nop                                                 #  46    0xb4ecd  1      OPC=nop             
  nop                                                 #  47    0xb4ece  1      OPC=nop             
  nop                                                 #  48    0xb4ecf  1      OPC=nop             
  nop                                                 #  49    0xb4ed0  1      OPC=nop             
  nop                                                 #  50    0xb4ed1  1      OPC=nop             
  nop                                                 #  51    0xb4ed2  1      OPC=nop             
  nop                                                 #  52    0xb4ed3  1      OPC=nop             
  nop                                                 #  53    0xb4ed4  1      OPC=nop             
  nop                                                 #  54    0xb4ed5  1      OPC=nop             
  nop                                                 #  55    0xb4ed6  1      OPC=nop             
  nop                                                 #  56    0xb4ed7  1      OPC=nop             
  nop                                                 #  57    0xb4ed8  1      OPC=nop             
  nop                                                 #  58    0xb4ed9  1      OPC=nop             
  nop                                                 #  59    0xb4eda  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb4edb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb4ee0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb4ee4  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb4ee6  1      OPC=nop             
  nop                                                 #  64    0xb4ee7  1      OPC=nop             
  nop                                                 #  65    0xb4ee8  1      OPC=nop             
  nop                                                 #  66    0xb4ee9  1      OPC=nop             
  nop                                                 #  67    0xb4eea  1      OPC=nop             
  nop                                                 #  68    0xb4eeb  1      OPC=nop             
  nop                                                 #  69    0xb4eec  1      OPC=nop             
  nop                                                 #  70    0xb4eed  1      OPC=nop             
  nop                                                 #  71    0xb4eee  1      OPC=nop             
  nop                                                 #  72    0xb4eef  1      OPC=nop             
  nop                                                 #  73    0xb4ef0  1      OPC=nop             
  nop                                                 #  74    0xb4ef1  1      OPC=nop             
  nop                                                 #  75    0xb4ef2  1      OPC=nop             
  nop                                                 #  76    0xb4ef3  1      OPC=nop             
  nop                                                 #  77    0xb4ef4  1      OPC=nop             
  nop                                                 #  78    0xb4ef5  1      OPC=nop             
  nop                                                 #  79    0xb4ef6  1      OPC=nop             
  nop                                                 #  80    0xb4ef7  1      OPC=nop             
  nop                                                 #  81    0xb4ef8  1      OPC=nop             
  nop                                                 #  82    0xb4ef9  1      OPC=nop             
  nop                                                 #  83    0xb4efa  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb4efb  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED2Ev, .-_ZNSt7collateIwED2Ev

