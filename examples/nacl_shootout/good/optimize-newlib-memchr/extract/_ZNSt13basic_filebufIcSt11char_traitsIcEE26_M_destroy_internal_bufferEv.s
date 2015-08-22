  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv, @function

#! file-offset 0x12b540
#! rip-offset  0xeb540
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv:  #        0xeb540  0      OPC=<label>         
  pushq %rbx                                                               #  1     0xeb540  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  2     0xeb541  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                          #  3     0xeb543  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                             #  4     0xeb545  6      OPC=cmpb_m8_imm8    
  je .L_eb580                                                              #  5     0xeb54b  2      OPC=je_label        
  movl %ebx, %ebx                                                          #  6     0xeb54d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edi                                             #  7     0xeb54f  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  8     0xeb554  3      OPC=testq_r64_r64   
  je .L_eb560                                                              #  9     0xeb557  2      OPC=je_label        
  xchgw %ax, %ax                                                           #  10    0xeb559  2      OPC=xchgw_ax_r16    
  callq ._ZdaPv                                                            #  11    0xeb55b  5      OPC=callq_label     
.L_eb560:                                                                  #        0xeb560  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  12    0xeb560  2      OPC=movl_r32_r32    
  movl $0x0, 0x58(%r15,%rbx,1)                                             #  13    0xeb562  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  14    0xeb56b  2      OPC=movl_r32_r32    
  movb $0x0, 0x60(%r15,%rbx,1)                                             #  15    0xeb56d  6      OPC=movb_m8_imm8    
  nop                                                                      #  16    0xeb573  1      OPC=nop             
  nop                                                                      #  17    0xeb574  1      OPC=nop             
  nop                                                                      #  18    0xeb575  1      OPC=nop             
  nop                                                                      #  19    0xeb576  1      OPC=nop             
  nop                                                                      #  20    0xeb577  1      OPC=nop             
  nop                                                                      #  21    0xeb578  1      OPC=nop             
  nop                                                                      #  22    0xeb579  1      OPC=nop             
  nop                                                                      #  23    0xeb57a  1      OPC=nop             
  nop                                                                      #  24    0xeb57b  1      OPC=nop             
  nop                                                                      #  25    0xeb57c  1      OPC=nop             
  nop                                                                      #  26    0xeb57d  1      OPC=nop             
  nop                                                                      #  27    0xeb57e  1      OPC=nop             
  nop                                                                      #  28    0xeb57f  1      OPC=nop             
.L_eb580:                                                                  #        0xeb580  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  29    0xeb580  2      OPC=movl_r32_r32    
  movl 0x74(%r15,%rbx,1), %edi                                             #  30    0xeb582  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  31    0xeb587  3      OPC=testq_r64_r64   
  je .L_eb5a0                                                              #  32    0xeb58a  2      OPC=je_label        
  nop                                                                      #  33    0xeb58c  1      OPC=nop             
  nop                                                                      #  34    0xeb58d  1      OPC=nop             
  nop                                                                      #  35    0xeb58e  1      OPC=nop             
  nop                                                                      #  36    0xeb58f  1      OPC=nop             
  nop                                                                      #  37    0xeb590  1      OPC=nop             
  nop                                                                      #  38    0xeb591  1      OPC=nop             
  nop                                                                      #  39    0xeb592  1      OPC=nop             
  nop                                                                      #  40    0xeb593  1      OPC=nop             
  nop                                                                      #  41    0xeb594  1      OPC=nop             
  nop                                                                      #  42    0xeb595  1      OPC=nop             
  nop                                                                      #  43    0xeb596  1      OPC=nop             
  nop                                                                      #  44    0xeb597  1      OPC=nop             
  nop                                                                      #  45    0xeb598  1      OPC=nop             
  nop                                                                      #  46    0xeb599  1      OPC=nop             
  nop                                                                      #  47    0xeb59a  1      OPC=nop             
  callq ._ZdaPv                                                            #  48    0xeb59b  5      OPC=callq_label     
.L_eb5a0:                                                                  #        0xeb5a0  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  49    0xeb5a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)                                             #  50    0xeb5a2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  51    0xeb5ab  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                             #  52    0xeb5ad  9      OPC=movl_m32_imm32  
  nop                                                                      #  53    0xeb5b6  1      OPC=nop             
  nop                                                                      #  54    0xeb5b7  1      OPC=nop             
  nop                                                                      #  55    0xeb5b8  1      OPC=nop             
  nop                                                                      #  56    0xeb5b9  1      OPC=nop             
  nop                                                                      #  57    0xeb5ba  1      OPC=nop             
  nop                                                                      #  58    0xeb5bb  1      OPC=nop             
  nop                                                                      #  59    0xeb5bc  1      OPC=nop             
  nop                                                                      #  60    0xeb5bd  1      OPC=nop             
  nop                                                                      #  61    0xeb5be  1      OPC=nop             
  nop                                                                      #  62    0xeb5bf  1      OPC=nop             
  movl %ebx, %ebx                                                          #  63    0xeb5c0  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                             #  64    0xeb5c2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  65    0xeb5cb  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                             #  66    0xeb5cd  12     OPC=movl_m32_imm32  
  popq %rbx                                                                #  67    0xeb5d9  1      OPC=popq_r64_1      
  popq %r11                                                                #  68    0xeb5da  2      OPC=popq_r64_1      
  nop                                                                      #  69    0xeb5dc  1      OPC=nop             
  nop                                                                      #  70    0xeb5dd  1      OPC=nop             
  nop                                                                      #  71    0xeb5de  1      OPC=nop             
  nop                                                                      #  72    0xeb5df  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                  #  73    0xeb5e0  7      OPC=andl_r32_imm32  
  nop                                                                      #  74    0xeb5e7  1      OPC=nop             
  nop                                                                      #  75    0xeb5e8  1      OPC=nop             
  nop                                                                      #  76    0xeb5e9  1      OPC=nop             
  nop                                                                      #  77    0xeb5ea  1      OPC=nop             
  addq %r15, %r11                                                          #  78    0xeb5eb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  79    0xeb5ee  3      OPC=jmpq_r64        
  nop                                                                      #  80    0xeb5f1  1      OPC=nop             
  nop                                                                      #  81    0xeb5f2  1      OPC=nop             
  nop                                                                      #  82    0xeb5f3  1      OPC=nop             
  nop                                                                      #  83    0xeb5f4  1      OPC=nop             
  nop                                                                      #  84    0xeb5f5  1      OPC=nop             
  nop                                                                      #  85    0xeb5f6  1      OPC=nop             
  nop                                                                      #  86    0xeb5f7  1      OPC=nop             
  nop                                                                      #  87    0xeb5f8  1      OPC=nop             
  nop                                                                      #  88    0xeb5f9  1      OPC=nop             
  nop                                                                      #  89    0xeb5fa  1      OPC=nop             
  nop                                                                      #  90    0xeb5fb  1      OPC=nop             
  nop                                                                      #  91    0xeb5fc  1      OPC=nop             
  nop                                                                      #  92    0xeb5fd  1      OPC=nop             
  nop                                                                      #  93    0xeb5fe  1      OPC=nop             
  nop                                                                      #  94    0xeb5ff  1      OPC=nop             
  nop                                                                      #  95    0xeb600  1      OPC=nop             
  nop                                                                      #  96    0xeb601  1      OPC=nop             
  nop                                                                      #  97    0xeb602  1      OPC=nop             
  nop                                                                      #  98    0xeb603  1      OPC=nop             
  nop                                                                      #  99    0xeb604  1      OPC=nop             
  nop                                                                      #  100   0xeb605  1      OPC=nop             
  nop                                                                      #  101   0xeb606  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv

