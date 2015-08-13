  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv, @function

#! file-offset 0x12ab20
#! rip-offset  0xeab20
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv:  #        0xeab20  0      OPC=<label>         
  pushq %rbx                                                               #  1     0xeab20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  2     0xeab21  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                          #  3     0xeab23  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                             #  4     0xeab25  6      OPC=cmpb_m8_imm8    
  je .L_eab60                                                              #  5     0xeab2b  2      OPC=je_label        
  movl %ebx, %ebx                                                          #  6     0xeab2d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edi                                             #  7     0xeab2f  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  8     0xeab34  3      OPC=testq_r64_r64   
  je .L_eab40                                                              #  9     0xeab37  2      OPC=je_label        
  xchgw %ax, %ax                                                           #  10    0xeab39  2      OPC=xchgw_ax_r16    
  callq ._ZdaPv                                                            #  11    0xeab3b  5      OPC=callq_label     
.L_eab40:                                                                  #        0xeab40  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  12    0xeab40  2      OPC=movl_r32_r32    
  movl $0x0, 0x58(%r15,%rbx,1)                                             #  13    0xeab42  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  14    0xeab4b  2      OPC=movl_r32_r32    
  movb $0x0, 0x60(%r15,%rbx,1)                                             #  15    0xeab4d  6      OPC=movb_m8_imm8    
  nop                                                                      #  16    0xeab53  1      OPC=nop             
  nop                                                                      #  17    0xeab54  1      OPC=nop             
  nop                                                                      #  18    0xeab55  1      OPC=nop             
  nop                                                                      #  19    0xeab56  1      OPC=nop             
  nop                                                                      #  20    0xeab57  1      OPC=nop             
  nop                                                                      #  21    0xeab58  1      OPC=nop             
  nop                                                                      #  22    0xeab59  1      OPC=nop             
  nop                                                                      #  23    0xeab5a  1      OPC=nop             
  nop                                                                      #  24    0xeab5b  1      OPC=nop             
  nop                                                                      #  25    0xeab5c  1      OPC=nop             
  nop                                                                      #  26    0xeab5d  1      OPC=nop             
  nop                                                                      #  27    0xeab5e  1      OPC=nop             
  nop                                                                      #  28    0xeab5f  1      OPC=nop             
.L_eab60:                                                                  #        0xeab60  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  29    0xeab60  2      OPC=movl_r32_r32    
  movl 0x74(%r15,%rbx,1), %edi                                             #  30    0xeab62  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  31    0xeab67  3      OPC=testq_r64_r64   
  je .L_eab80                                                              #  32    0xeab6a  2      OPC=je_label        
  nop                                                                      #  33    0xeab6c  1      OPC=nop             
  nop                                                                      #  34    0xeab6d  1      OPC=nop             
  nop                                                                      #  35    0xeab6e  1      OPC=nop             
  nop                                                                      #  36    0xeab6f  1      OPC=nop             
  nop                                                                      #  37    0xeab70  1      OPC=nop             
  nop                                                                      #  38    0xeab71  1      OPC=nop             
  nop                                                                      #  39    0xeab72  1      OPC=nop             
  nop                                                                      #  40    0xeab73  1      OPC=nop             
  nop                                                                      #  41    0xeab74  1      OPC=nop             
  nop                                                                      #  42    0xeab75  1      OPC=nop             
  nop                                                                      #  43    0xeab76  1      OPC=nop             
  nop                                                                      #  44    0xeab77  1      OPC=nop             
  nop                                                                      #  45    0xeab78  1      OPC=nop             
  nop                                                                      #  46    0xeab79  1      OPC=nop             
  nop                                                                      #  47    0xeab7a  1      OPC=nop             
  callq ._ZdaPv                                                            #  48    0xeab7b  5      OPC=callq_label     
.L_eab80:                                                                  #        0xeab80  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  49    0xeab80  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)                                             #  50    0xeab82  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  51    0xeab8b  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                             #  52    0xeab8d  9      OPC=movl_m32_imm32  
  nop                                                                      #  53    0xeab96  1      OPC=nop             
  nop                                                                      #  54    0xeab97  1      OPC=nop             
  nop                                                                      #  55    0xeab98  1      OPC=nop             
  nop                                                                      #  56    0xeab99  1      OPC=nop             
  nop                                                                      #  57    0xeab9a  1      OPC=nop             
  nop                                                                      #  58    0xeab9b  1      OPC=nop             
  nop                                                                      #  59    0xeab9c  1      OPC=nop             
  nop                                                                      #  60    0xeab9d  1      OPC=nop             
  nop                                                                      #  61    0xeab9e  1      OPC=nop             
  nop                                                                      #  62    0xeab9f  1      OPC=nop             
  movl %ebx, %ebx                                                          #  63    0xeaba0  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                             #  64    0xeaba2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  65    0xeabab  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                             #  66    0xeabad  12     OPC=movl_m32_imm32  
  popq %rbx                                                                #  67    0xeabb9  1      OPC=popq_r64_1      
  popq %r11                                                                #  68    0xeabba  2      OPC=popq_r64_1      
  nop                                                                      #  69    0xeabbc  1      OPC=nop             
  nop                                                                      #  70    0xeabbd  1      OPC=nop             
  nop                                                                      #  71    0xeabbe  1      OPC=nop             
  nop                                                                      #  72    0xeabbf  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                  #  73    0xeabc0  7      OPC=andl_r32_imm32  
  nop                                                                      #  74    0xeabc7  1      OPC=nop             
  nop                                                                      #  75    0xeabc8  1      OPC=nop             
  nop                                                                      #  76    0xeabc9  1      OPC=nop             
  nop                                                                      #  77    0xeabca  1      OPC=nop             
  addq %r15, %r11                                                          #  78    0xeabcb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  79    0xeabce  3      OPC=jmpq_r64        
  nop                                                                      #  80    0xeabd1  1      OPC=nop             
  nop                                                                      #  81    0xeabd2  1      OPC=nop             
  nop                                                                      #  82    0xeabd3  1      OPC=nop             
  nop                                                                      #  83    0xeabd4  1      OPC=nop             
  nop                                                                      #  84    0xeabd5  1      OPC=nop             
  nop                                                                      #  85    0xeabd6  1      OPC=nop             
  nop                                                                      #  86    0xeabd7  1      OPC=nop             
  nop                                                                      #  87    0xeabd8  1      OPC=nop             
  nop                                                                      #  88    0xeabd9  1      OPC=nop             
  nop                                                                      #  89    0xeabda  1      OPC=nop             
  nop                                                                      #  90    0xeabdb  1      OPC=nop             
  nop                                                                      #  91    0xeabdc  1      OPC=nop             
  nop                                                                      #  92    0xeabdd  1      OPC=nop             
  nop                                                                      #  93    0xeabde  1      OPC=nop             
  nop                                                                      #  94    0xeabdf  1      OPC=nop             
  nop                                                                      #  95    0xeabe0  1      OPC=nop             
  nop                                                                      #  96    0xeabe1  1      OPC=nop             
  nop                                                                      #  97    0xeabe2  1      OPC=nop             
  nop                                                                      #  98    0xeabe3  1      OPC=nop             
  nop                                                                      #  99    0xeabe4  1      OPC=nop             
  nop                                                                      #  100   0xeabe5  1      OPC=nop             
  nop                                                                      #  101   0xeabe6  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv

