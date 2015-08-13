  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv, @function

#! file-offset 0x12aa60
#! rip-offset  0xeaa60
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv:  #        0xeaa60  0      OPC=<label>         
  pushq %rbx                                                               #  1     0xeaa60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  2     0xeaa61  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                          #  3     0xeaa63  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                             #  4     0xeaa65  6      OPC=cmpb_m8_imm8    
  je .L_eaaa0                                                              #  5     0xeaa6b  2      OPC=je_label        
  movl %ebx, %ebx                                                          #  6     0xeaa6d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edi                                             #  7     0xeaa6f  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  8     0xeaa74  3      OPC=testq_r64_r64   
  je .L_eaa80                                                              #  9     0xeaa77  2      OPC=je_label        
  xchgw %ax, %ax                                                           #  10    0xeaa79  2      OPC=xchgw_ax_r16    
  callq ._ZdaPv                                                            #  11    0xeaa7b  5      OPC=callq_label     
.L_eaa80:                                                                  #        0xeaa80  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  12    0xeaa80  2      OPC=movl_r32_r32    
  movl $0x0, 0x58(%r15,%rbx,1)                                             #  13    0xeaa82  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  14    0xeaa8b  2      OPC=movl_r32_r32    
  movb $0x0, 0x60(%r15,%rbx,1)                                             #  15    0xeaa8d  6      OPC=movb_m8_imm8    
  nop                                                                      #  16    0xeaa93  1      OPC=nop             
  nop                                                                      #  17    0xeaa94  1      OPC=nop             
  nop                                                                      #  18    0xeaa95  1      OPC=nop             
  nop                                                                      #  19    0xeaa96  1      OPC=nop             
  nop                                                                      #  20    0xeaa97  1      OPC=nop             
  nop                                                                      #  21    0xeaa98  1      OPC=nop             
  nop                                                                      #  22    0xeaa99  1      OPC=nop             
  nop                                                                      #  23    0xeaa9a  1      OPC=nop             
  nop                                                                      #  24    0xeaa9b  1      OPC=nop             
  nop                                                                      #  25    0xeaa9c  1      OPC=nop             
  nop                                                                      #  26    0xeaa9d  1      OPC=nop             
  nop                                                                      #  27    0xeaa9e  1      OPC=nop             
  nop                                                                      #  28    0xeaa9f  1      OPC=nop             
.L_eaaa0:                                                                  #        0xeaaa0  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  29    0xeaaa0  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rbx,1), %edi                                             #  30    0xeaaa2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  31    0xeaaa7  3      OPC=testq_r64_r64   
  je .L_eaac0                                                              #  32    0xeaaaa  2      OPC=je_label        
  nop                                                                      #  33    0xeaaac  1      OPC=nop             
  nop                                                                      #  34    0xeaaad  1      OPC=nop             
  nop                                                                      #  35    0xeaaae  1      OPC=nop             
  nop                                                                      #  36    0xeaaaf  1      OPC=nop             
  nop                                                                      #  37    0xeaab0  1      OPC=nop             
  nop                                                                      #  38    0xeaab1  1      OPC=nop             
  nop                                                                      #  39    0xeaab2  1      OPC=nop             
  nop                                                                      #  40    0xeaab3  1      OPC=nop             
  nop                                                                      #  41    0xeaab4  1      OPC=nop             
  nop                                                                      #  42    0xeaab5  1      OPC=nop             
  nop                                                                      #  43    0xeaab6  1      OPC=nop             
  nop                                                                      #  44    0xeaab7  1      OPC=nop             
  nop                                                                      #  45    0xeaab8  1      OPC=nop             
  nop                                                                      #  46    0xeaab9  1      OPC=nop             
  nop                                                                      #  47    0xeaaba  1      OPC=nop             
  callq ._ZdaPv                                                            #  48    0xeaabb  5      OPC=callq_label     
.L_eaac0:                                                                  #        0xeaac0  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  49    0xeaac0  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                             #  50    0xeaac2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  51    0xeaacb  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                             #  52    0xeaacd  9      OPC=movl_m32_imm32  
  nop                                                                      #  53    0xeaad6  1      OPC=nop             
  nop                                                                      #  54    0xeaad7  1      OPC=nop             
  nop                                                                      #  55    0xeaad8  1      OPC=nop             
  nop                                                                      #  56    0xeaad9  1      OPC=nop             
  nop                                                                      #  57    0xeaada  1      OPC=nop             
  nop                                                                      #  58    0xeaadb  1      OPC=nop             
  nop                                                                      #  59    0xeaadc  1      OPC=nop             
  nop                                                                      #  60    0xeaadd  1      OPC=nop             
  nop                                                                      #  61    0xeaade  1      OPC=nop             
  nop                                                                      #  62    0xeaadf  1      OPC=nop             
  movl %ebx, %ebx                                                          #  63    0xeaae0  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                             #  64    0xeaae2  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  65    0xeaaee  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                             #  66    0xeaaf0  12     OPC=movl_m32_imm32  
  popq %rbx                                                                #  67    0xeaafc  1      OPC=popq_r64_1      
  popq %r11                                                                #  68    0xeaafd  2      OPC=popq_r64_1      
  nop                                                                      #  69    0xeaaff  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                  #  70    0xeab00  7      OPC=andl_r32_imm32  
  nop                                                                      #  71    0xeab07  1      OPC=nop             
  nop                                                                      #  72    0xeab08  1      OPC=nop             
  nop                                                                      #  73    0xeab09  1      OPC=nop             
  nop                                                                      #  74    0xeab0a  1      OPC=nop             
  addq %r15, %r11                                                          #  75    0xeab0b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  76    0xeab0e  3      OPC=jmpq_r64        
  nop                                                                      #  77    0xeab11  1      OPC=nop             
  nop                                                                      #  78    0xeab12  1      OPC=nop             
  nop                                                                      #  79    0xeab13  1      OPC=nop             
  nop                                                                      #  80    0xeab14  1      OPC=nop             
  nop                                                                      #  81    0xeab15  1      OPC=nop             
  nop                                                                      #  82    0xeab16  1      OPC=nop             
  nop                                                                      #  83    0xeab17  1      OPC=nop             
  nop                                                                      #  84    0xeab18  1      OPC=nop             
  nop                                                                      #  85    0xeab19  1      OPC=nop             
  nop                                                                      #  86    0xeab1a  1      OPC=nop             
  nop                                                                      #  87    0xeab1b  1      OPC=nop             
  nop                                                                      #  88    0xeab1c  1      OPC=nop             
  nop                                                                      #  89    0xeab1d  1      OPC=nop             
  nop                                                                      #  90    0xeab1e  1      OPC=nop             
  nop                                                                      #  91    0xeab1f  1      OPC=nop             
  nop                                                                      #  92    0xeab20  1      OPC=nop             
  nop                                                                      #  93    0xeab21  1      OPC=nop             
  nop                                                                      #  94    0xeab22  1      OPC=nop             
  nop                                                                      #  95    0xeab23  1      OPC=nop             
  nop                                                                      #  96    0xeab24  1      OPC=nop             
  nop                                                                      #  97    0xeab25  1      OPC=nop             
  nop                                                                      #  98    0xeab26  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv

