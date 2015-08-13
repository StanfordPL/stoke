  .text
  .globl _ZNSt8messagesIwED0Ev
  .type _ZNSt8messagesIwED0Ev, @function

#! file-offset 0xf44e0
#! rip-offset  0xb44e0
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED0Ev:                               #        0xb44e0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb44e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb44e1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb44e3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb44e6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb44e9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb44ec  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb44ee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb44f6  1      OPC=nop             
  nop                                                 #  9     0xb44f7  1      OPC=nop             
  nop                                                 #  10    0xb44f8  1      OPC=nop             
  nop                                                 #  11    0xb44f9  1      OPC=nop             
  nop                                                 #  12    0xb44fa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb44fb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4500  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb4502  1      OPC=nop             
  nop                                                 #  16    0xb4503  1      OPC=nop             
  nop                                                 #  17    0xb4504  1      OPC=nop             
  nop                                                 #  18    0xb4505  1      OPC=nop             
  nop                                                 #  19    0xb4506  1      OPC=nop             
  nop                                                 #  20    0xb4507  1      OPC=nop             
  nop                                                 #  21    0xb4508  1      OPC=nop             
  nop                                                 #  22    0xb4509  1      OPC=nop             
  nop                                                 #  23    0xb450a  1      OPC=nop             
  nop                                                 #  24    0xb450b  1      OPC=nop             
  nop                                                 #  25    0xb450c  1      OPC=nop             
  nop                                                 #  26    0xb450d  1      OPC=nop             
  nop                                                 #  27    0xb450e  1      OPC=nop             
  nop                                                 #  28    0xb450f  1      OPC=nop             
  nop                                                 #  29    0xb4510  1      OPC=nop             
  nop                                                 #  30    0xb4511  1      OPC=nop             
  nop                                                 #  31    0xb4512  1      OPC=nop             
  nop                                                 #  32    0xb4513  1      OPC=nop             
  nop                                                 #  33    0xb4514  1      OPC=nop             
  nop                                                 #  34    0xb4515  1      OPC=nop             
  nop                                                 #  35    0xb4516  1      OPC=nop             
  nop                                                 #  36    0xb4517  1      OPC=nop             
  nop                                                 #  37    0xb4518  1      OPC=nop             
  nop                                                 #  38    0xb4519  1      OPC=nop             
  nop                                                 #  39    0xb451a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb451b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb4520  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb4522  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb4525  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb4528  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb4529  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb452e  1      OPC=nop             
  nop                                                 #  47    0xb452f  1      OPC=nop             
  nop                                                 #  48    0xb4530  1      OPC=nop             
  nop                                                 #  49    0xb4531  1      OPC=nop             
  nop                                                 #  50    0xb4532  1      OPC=nop             
  nop                                                 #  51    0xb4533  1      OPC=nop             
  nop                                                 #  52    0xb4534  1      OPC=nop             
  nop                                                 #  53    0xb4535  1      OPC=nop             
  nop                                                 #  54    0xb4536  1      OPC=nop             
  nop                                                 #  55    0xb4537  1      OPC=nop             
  nop                                                 #  56    0xb4538  1      OPC=nop             
  nop                                                 #  57    0xb4539  1      OPC=nop             
  nop                                                 #  58    0xb453a  1      OPC=nop             
  nop                                                 #  59    0xb453b  1      OPC=nop             
  nop                                                 #  60    0xb453c  1      OPC=nop             
  nop                                                 #  61    0xb453d  1      OPC=nop             
  nop                                                 #  62    0xb453e  1      OPC=nop             
  nop                                                 #  63    0xb453f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb4540  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb4542  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb4546  1      OPC=nop             
  nop                                                 #  67    0xb4547  1      OPC=nop             
  nop                                                 #  68    0xb4548  1      OPC=nop             
  nop                                                 #  69    0xb4549  1      OPC=nop             
  nop                                                 #  70    0xb454a  1      OPC=nop             
  nop                                                 #  71    0xb454b  1      OPC=nop             
  nop                                                 #  72    0xb454c  1      OPC=nop             
  nop                                                 #  73    0xb454d  1      OPC=nop             
  nop                                                 #  74    0xb454e  1      OPC=nop             
  nop                                                 #  75    0xb454f  1      OPC=nop             
  nop                                                 #  76    0xb4550  1      OPC=nop             
  nop                                                 #  77    0xb4551  1      OPC=nop             
  nop                                                 #  78    0xb4552  1      OPC=nop             
  nop                                                 #  79    0xb4553  1      OPC=nop             
  nop                                                 #  80    0xb4554  1      OPC=nop             
  nop                                                 #  81    0xb4555  1      OPC=nop             
  nop                                                 #  82    0xb4556  1      OPC=nop             
  nop                                                 #  83    0xb4557  1      OPC=nop             
  nop                                                 #  84    0xb4558  1      OPC=nop             
  nop                                                 #  85    0xb4559  1      OPC=nop             
  nop                                                 #  86    0xb455a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb455b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb4560  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb4564  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb4566  1      OPC=nop             
  nop                                                 #  91    0xb4567  1      OPC=nop             
  nop                                                 #  92    0xb4568  1      OPC=nop             
  nop                                                 #  93    0xb4569  1      OPC=nop             
  nop                                                 #  94    0xb456a  1      OPC=nop             
  nop                                                 #  95    0xb456b  1      OPC=nop             
  nop                                                 #  96    0xb456c  1      OPC=nop             
  nop                                                 #  97    0xb456d  1      OPC=nop             
  nop                                                 #  98    0xb456e  1      OPC=nop             
  nop                                                 #  99    0xb456f  1      OPC=nop             
  nop                                                 #  100   0xb4570  1      OPC=nop             
  nop                                                 #  101   0xb4571  1      OPC=nop             
  nop                                                 #  102   0xb4572  1      OPC=nop             
  nop                                                 #  103   0xb4573  1      OPC=nop             
  nop                                                 #  104   0xb4574  1      OPC=nop             
  nop                                                 #  105   0xb4575  1      OPC=nop             
  nop                                                 #  106   0xb4576  1      OPC=nop             
  nop                                                 #  107   0xb4577  1      OPC=nop             
  nop                                                 #  108   0xb4578  1      OPC=nop             
  nop                                                 #  109   0xb4579  1      OPC=nop             
  nop                                                 #  110   0xb457a  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb457b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED0Ev, .-_ZNSt8messagesIwED0Ev

