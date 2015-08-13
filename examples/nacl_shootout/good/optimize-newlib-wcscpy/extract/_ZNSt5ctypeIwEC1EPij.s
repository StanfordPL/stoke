  .text
  .globl _ZNSt5ctypeIwEC1EPij
  .type _ZNSt5ctypeIwEC1EPij, @function

#! file-offset 0x124ee0
#! rip-offset  0xe4ee0
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwEC1EPij:                              #        0xe4ee0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe4ee0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe4ee1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe4ee3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe4ee5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe4ee8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe4eeb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe4eed  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                   #  8     0xe4eef  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe4ef7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe4efa  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe4efe  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe4f00  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe4f04  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe4f06  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe4f0b  1      OPC=nop             
  nop                                               #  16    0xe4f0c  1      OPC=nop             
  nop                                               #  17    0xe4f0d  1      OPC=nop             
  nop                                               #  18    0xe4f0e  1      OPC=nop             
  nop                                               #  19    0xe4f0f  1      OPC=nop             
  nop                                               #  20    0xe4f10  1      OPC=nop             
  nop                                               #  21    0xe4f11  1      OPC=nop             
  nop                                               #  22    0xe4f12  1      OPC=nop             
  nop                                               #  23    0xe4f13  1      OPC=nop             
  nop                                               #  24    0xe4f14  1      OPC=nop             
  nop                                               #  25    0xe4f15  1      OPC=nop             
  nop                                               #  26    0xe4f16  1      OPC=nop             
  nop                                               #  27    0xe4f17  1      OPC=nop             
  nop                                               #  28    0xe4f18  1      OPC=nop             
  nop                                               #  29    0xe4f19  1      OPC=nop             
  nop                                               #  30    0xe4f1a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe4f1b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe4f20  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe4f22  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  34    0xe4f27  2      OPC=movl_r32_r32    
  movb $0x0, 0xc(%r15,%rbx,1)                       #  35    0xe4f29  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                   #  36    0xe4f2f  2      OPC=movl_r32_r32    
  nop                                               #  37    0xe4f31  1      OPC=nop             
  nop                                               #  38    0xe4f32  1      OPC=nop             
  nop                                               #  39    0xe4f33  1      OPC=nop             
  nop                                               #  40    0xe4f34  1      OPC=nop             
  nop                                               #  41    0xe4f35  1      OPC=nop             
  nop                                               #  42    0xe4f36  1      OPC=nop             
  nop                                               #  43    0xe4f37  1      OPC=nop             
  nop                                               #  44    0xe4f38  1      OPC=nop             
  nop                                               #  45    0xe4f39  1      OPC=nop             
  nop                                               #  46    0xe4f3a  1      OPC=nop             
  callq ._ZNSt5ctypeIwE19_M_initialize_ctypeEv      #  47    0xe4f3b  5      OPC=callq_label     
  addl $0x10, %esp                                  #  48    0xe4f40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  49    0xe4f43  3      OPC=addq_r64_r64    
  popq %rbx                                         #  50    0xe4f46  1      OPC=popq_r64_1      
  popq %r11                                         #  51    0xe4f47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  52    0xe4f49  7      OPC=andl_r32_imm32  
  nop                                               #  53    0xe4f50  1      OPC=nop             
  nop                                               #  54    0xe4f51  1      OPC=nop             
  nop                                               #  55    0xe4f52  1      OPC=nop             
  nop                                               #  56    0xe4f53  1      OPC=nop             
  addq %r15, %r11                                   #  57    0xe4f54  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  58    0xe4f57  3      OPC=jmpq_r64        
  nop                                               #  59    0xe4f5a  1      OPC=nop             
  nop                                               #  60    0xe4f5b  1      OPC=nop             
  nop                                               #  61    0xe4f5c  1      OPC=nop             
  nop                                               #  62    0xe4f5d  1      OPC=nop             
  nop                                               #  63    0xe4f5e  1      OPC=nop             
  nop                                               #  64    0xe4f5f  1      OPC=nop             
  nop                                               #  65    0xe4f60  1      OPC=nop             
  nop                                               #  66    0xe4f61  1      OPC=nop             
  nop                                               #  67    0xe4f62  1      OPC=nop             
  nop                                               #  68    0xe4f63  1      OPC=nop             
  nop                                               #  69    0xe4f64  1      OPC=nop             
  nop                                               #  70    0xe4f65  1      OPC=nop             
  nop                                               #  71    0xe4f66  1      OPC=nop             
  movl %ebx, %edi                                   #  72    0xe4f67  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  73    0xe4f69  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                   #  74    0xe4f6b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  75    0xe4f73  3      OPC=movl_m32_r32    
  nop                                               #  76    0xe4f76  1      OPC=nop             
  nop                                               #  77    0xe4f77  1      OPC=nop             
  nop                                               #  78    0xe4f78  1      OPC=nop             
  nop                                               #  79    0xe4f79  1      OPC=nop             
  nop                                               #  80    0xe4f7a  1      OPC=nop             
  nop                                               #  81    0xe4f7b  1      OPC=nop             
  nop                                               #  82    0xe4f7c  1      OPC=nop             
  nop                                               #  83    0xe4f7d  1      OPC=nop             
  nop                                               #  84    0xe4f7e  1      OPC=nop             
  nop                                               #  85    0xe4f7f  1      OPC=nop             
  nop                                               #  86    0xe4f80  1      OPC=nop             
  nop                                               #  87    0xe4f81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  88    0xe4f82  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  89    0xe4f87  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  90    0xe4f8a  2      OPC=movl_r32_r32    
  nop                                               #  91    0xe4f8c  1      OPC=nop             
  nop                                               #  92    0xe4f8d  1      OPC=nop             
  nop                                               #  93    0xe4f8e  1      OPC=nop             
  nop                                               #  94    0xe4f8f  1      OPC=nop             
  nop                                               #  95    0xe4f90  1      OPC=nop             
  nop                                               #  96    0xe4f91  1      OPC=nop             
  nop                                               #  97    0xe4f92  1      OPC=nop             
  nop                                               #  98    0xe4f93  1      OPC=nop             
  nop                                               #  99    0xe4f94  1      OPC=nop             
  nop                                               #  100   0xe4f95  1      OPC=nop             
  nop                                               #  101   0xe4f96  1      OPC=nop             
  nop                                               #  102   0xe4f97  1      OPC=nop             
  nop                                               #  103   0xe4f98  1      OPC=nop             
  nop                                               #  104   0xe4f99  1      OPC=nop             
  nop                                               #  105   0xe4f9a  1      OPC=nop             
  nop                                               #  106   0xe4f9b  1      OPC=nop             
  nop                                               #  107   0xe4f9c  1      OPC=nop             
  nop                                               #  108   0xe4f9d  1      OPC=nop             
  nop                                               #  109   0xe4f9e  1      OPC=nop             
  nop                                               #  110   0xe4f9f  1      OPC=nop             
  nop                                               #  111   0xe4fa0  1      OPC=nop             
  nop                                               #  112   0xe4fa1  1      OPC=nop             
  callq ._Unwind_Resume                             #  113   0xe4fa2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt5ctypeIwEC1EPij, .-_ZNSt5ctypeIwEC1EPij

