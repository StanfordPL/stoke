  .text
  .globl _ZNSt7collateIwED1Ev
  .type _ZNSt7collateIwED1Ev, @function

#! file-offset 0xf46e0
#! rip-offset  0xb46e0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED1Ev:                                #        0xb46e0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb46e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb46e1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb46e3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb46e6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb46e9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb46ec  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb46ee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb46f6  1      OPC=nop             
  nop                                                 #  9     0xb46f7  1      OPC=nop             
  nop                                                 #  10    0xb46f8  1      OPC=nop             
  nop                                                 #  11    0xb46f9  1      OPC=nop             
  nop                                                 #  12    0xb46fa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb46fb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4700  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4702  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4705  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4708  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4709  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb470e  1      OPC=nop             
  nop                                                 #  20    0xb470f  1      OPC=nop             
  nop                                                 #  21    0xb4710  1      OPC=nop             
  nop                                                 #  22    0xb4711  1      OPC=nop             
  nop                                                 #  23    0xb4712  1      OPC=nop             
  nop                                                 #  24    0xb4713  1      OPC=nop             
  nop                                                 #  25    0xb4714  1      OPC=nop             
  nop                                                 #  26    0xb4715  1      OPC=nop             
  nop                                                 #  27    0xb4716  1      OPC=nop             
  nop                                                 #  28    0xb4717  1      OPC=nop             
  nop                                                 #  29    0xb4718  1      OPC=nop             
  nop                                                 #  30    0xb4719  1      OPC=nop             
  nop                                                 #  31    0xb471a  1      OPC=nop             
  nop                                                 #  32    0xb471b  1      OPC=nop             
  nop                                                 #  33    0xb471c  1      OPC=nop             
  nop                                                 #  34    0xb471d  1      OPC=nop             
  nop                                                 #  35    0xb471e  1      OPC=nop             
  nop                                                 #  36    0xb471f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb4720  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb4722  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb4726  1      OPC=nop             
  nop                                                 #  40    0xb4727  1      OPC=nop             
  nop                                                 #  41    0xb4728  1      OPC=nop             
  nop                                                 #  42    0xb4729  1      OPC=nop             
  nop                                                 #  43    0xb472a  1      OPC=nop             
  nop                                                 #  44    0xb472b  1      OPC=nop             
  nop                                                 #  45    0xb472c  1      OPC=nop             
  nop                                                 #  46    0xb472d  1      OPC=nop             
  nop                                                 #  47    0xb472e  1      OPC=nop             
  nop                                                 #  48    0xb472f  1      OPC=nop             
  nop                                                 #  49    0xb4730  1      OPC=nop             
  nop                                                 #  50    0xb4731  1      OPC=nop             
  nop                                                 #  51    0xb4732  1      OPC=nop             
  nop                                                 #  52    0xb4733  1      OPC=nop             
  nop                                                 #  53    0xb4734  1      OPC=nop             
  nop                                                 #  54    0xb4735  1      OPC=nop             
  nop                                                 #  55    0xb4736  1      OPC=nop             
  nop                                                 #  56    0xb4737  1      OPC=nop             
  nop                                                 #  57    0xb4738  1      OPC=nop             
  nop                                                 #  58    0xb4739  1      OPC=nop             
  nop                                                 #  59    0xb473a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb473b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb4740  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb4744  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb4746  1      OPC=nop             
  nop                                                 #  64    0xb4747  1      OPC=nop             
  nop                                                 #  65    0xb4748  1      OPC=nop             
  nop                                                 #  66    0xb4749  1      OPC=nop             
  nop                                                 #  67    0xb474a  1      OPC=nop             
  nop                                                 #  68    0xb474b  1      OPC=nop             
  nop                                                 #  69    0xb474c  1      OPC=nop             
  nop                                                 #  70    0xb474d  1      OPC=nop             
  nop                                                 #  71    0xb474e  1      OPC=nop             
  nop                                                 #  72    0xb474f  1      OPC=nop             
  nop                                                 #  73    0xb4750  1      OPC=nop             
  nop                                                 #  74    0xb4751  1      OPC=nop             
  nop                                                 #  75    0xb4752  1      OPC=nop             
  nop                                                 #  76    0xb4753  1      OPC=nop             
  nop                                                 #  77    0xb4754  1      OPC=nop             
  nop                                                 #  78    0xb4755  1      OPC=nop             
  nop                                                 #  79    0xb4756  1      OPC=nop             
  nop                                                 #  80    0xb4757  1      OPC=nop             
  nop                                                 #  81    0xb4758  1      OPC=nop             
  nop                                                 #  82    0xb4759  1      OPC=nop             
  nop                                                 #  83    0xb475a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb475b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED1Ev, .-_ZNSt7collateIwED1Ev

