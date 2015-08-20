  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv, @function

#! file-offset 0x12ae20
#! rip-offset  0xeae20
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv:  #        0xeae20  0      OPC=<label>         
  pushq %rbx                                                               #  1     0xeae20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  2     0xeae21  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                          #  3     0xeae23  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                             #  4     0xeae25  6      OPC=cmpb_m8_imm8    
  je .L_eae60                                                              #  5     0xeae2b  2      OPC=je_label        
  movl %ebx, %ebx                                                          #  6     0xeae2d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edi                                             #  7     0xeae2f  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  8     0xeae34  3      OPC=testq_r64_r64   
  je .L_eae40                                                              #  9     0xeae37  2      OPC=je_label        
  xchgw %ax, %ax                                                           #  10    0xeae39  2      OPC=xchgw_ax_r16    
  callq ._ZdaPv                                                            #  11    0xeae3b  5      OPC=callq_label     
.L_eae40:                                                                  #        0xeae40  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  12    0xeae40  2      OPC=movl_r32_r32    
  movl $0x0, 0x58(%r15,%rbx,1)                                             #  13    0xeae42  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  14    0xeae4b  2      OPC=movl_r32_r32    
  movb $0x0, 0x60(%r15,%rbx,1)                                             #  15    0xeae4d  6      OPC=movb_m8_imm8    
  nop                                                                      #  16    0xeae53  1      OPC=nop             
  nop                                                                      #  17    0xeae54  1      OPC=nop             
  nop                                                                      #  18    0xeae55  1      OPC=nop             
  nop                                                                      #  19    0xeae56  1      OPC=nop             
  nop                                                                      #  20    0xeae57  1      OPC=nop             
  nop                                                                      #  21    0xeae58  1      OPC=nop             
  nop                                                                      #  22    0xeae59  1      OPC=nop             
  nop                                                                      #  23    0xeae5a  1      OPC=nop             
  nop                                                                      #  24    0xeae5b  1      OPC=nop             
  nop                                                                      #  25    0xeae5c  1      OPC=nop             
  nop                                                                      #  26    0xeae5d  1      OPC=nop             
  nop                                                                      #  27    0xeae5e  1      OPC=nop             
  nop                                                                      #  28    0xeae5f  1      OPC=nop             
.L_eae60:                                                                  #        0xeae60  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  29    0xeae60  2      OPC=movl_r32_r32    
  movl 0x74(%r15,%rbx,1), %edi                                             #  30    0xeae62  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  31    0xeae67  3      OPC=testq_r64_r64   
  je .L_eae80                                                              #  32    0xeae6a  2      OPC=je_label        
  nop                                                                      #  33    0xeae6c  1      OPC=nop             
  nop                                                                      #  34    0xeae6d  1      OPC=nop             
  nop                                                                      #  35    0xeae6e  1      OPC=nop             
  nop                                                                      #  36    0xeae6f  1      OPC=nop             
  nop                                                                      #  37    0xeae70  1      OPC=nop             
  nop                                                                      #  38    0xeae71  1      OPC=nop             
  nop                                                                      #  39    0xeae72  1      OPC=nop             
  nop                                                                      #  40    0xeae73  1      OPC=nop             
  nop                                                                      #  41    0xeae74  1      OPC=nop             
  nop                                                                      #  42    0xeae75  1      OPC=nop             
  nop                                                                      #  43    0xeae76  1      OPC=nop             
  nop                                                                      #  44    0xeae77  1      OPC=nop             
  nop                                                                      #  45    0xeae78  1      OPC=nop             
  nop                                                                      #  46    0xeae79  1      OPC=nop             
  nop                                                                      #  47    0xeae7a  1      OPC=nop             
  callq ._ZdaPv                                                            #  48    0xeae7b  5      OPC=callq_label     
.L_eae80:                                                                  #        0xeae80  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  49    0xeae80  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)                                             #  50    0xeae82  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  51    0xeae8b  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                             #  52    0xeae8d  9      OPC=movl_m32_imm32  
  nop                                                                      #  53    0xeae96  1      OPC=nop             
  nop                                                                      #  54    0xeae97  1      OPC=nop             
  nop                                                                      #  55    0xeae98  1      OPC=nop             
  nop                                                                      #  56    0xeae99  1      OPC=nop             
  nop                                                                      #  57    0xeae9a  1      OPC=nop             
  nop                                                                      #  58    0xeae9b  1      OPC=nop             
  nop                                                                      #  59    0xeae9c  1      OPC=nop             
  nop                                                                      #  60    0xeae9d  1      OPC=nop             
  nop                                                                      #  61    0xeae9e  1      OPC=nop             
  nop                                                                      #  62    0xeae9f  1      OPC=nop             
  movl %ebx, %ebx                                                          #  63    0xeaea0  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                             #  64    0xeaea2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  65    0xeaeab  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                             #  66    0xeaead  12     OPC=movl_m32_imm32  
  popq %rbx                                                                #  67    0xeaeb9  1      OPC=popq_r64_1      
  popq %r11                                                                #  68    0xeaeba  2      OPC=popq_r64_1      
  nop                                                                      #  69    0xeaebc  1      OPC=nop             
  nop                                                                      #  70    0xeaebd  1      OPC=nop             
  nop                                                                      #  71    0xeaebe  1      OPC=nop             
  nop                                                                      #  72    0xeaebf  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                  #  73    0xeaec0  7      OPC=andl_r32_imm32  
  nop                                                                      #  74    0xeaec7  1      OPC=nop             
  nop                                                                      #  75    0xeaec8  1      OPC=nop             
  nop                                                                      #  76    0xeaec9  1      OPC=nop             
  nop                                                                      #  77    0xeaeca  1      OPC=nop             
  addq %r15, %r11                                                          #  78    0xeaecb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  79    0xeaece  3      OPC=jmpq_r64        
  nop                                                                      #  80    0xeaed1  1      OPC=nop             
  nop                                                                      #  81    0xeaed2  1      OPC=nop             
  nop                                                                      #  82    0xeaed3  1      OPC=nop             
  nop                                                                      #  83    0xeaed4  1      OPC=nop             
  nop                                                                      #  84    0xeaed5  1      OPC=nop             
  nop                                                                      #  85    0xeaed6  1      OPC=nop             
  nop                                                                      #  86    0xeaed7  1      OPC=nop             
  nop                                                                      #  87    0xeaed8  1      OPC=nop             
  nop                                                                      #  88    0xeaed9  1      OPC=nop             
  nop                                                                      #  89    0xeaeda  1      OPC=nop             
  nop                                                                      #  90    0xeaedb  1      OPC=nop             
  nop                                                                      #  91    0xeaedc  1      OPC=nop             
  nop                                                                      #  92    0xeaedd  1      OPC=nop             
  nop                                                                      #  93    0xeaede  1      OPC=nop             
  nop                                                                      #  94    0xeaedf  1      OPC=nop             
  nop                                                                      #  95    0xeaee0  1      OPC=nop             
  nop                                                                      #  96    0xeaee1  1      OPC=nop             
  nop                                                                      #  97    0xeaee2  1      OPC=nop             
  nop                                                                      #  98    0xeaee3  1      OPC=nop             
  nop                                                                      #  99    0xeaee4  1      OPC=nop             
  nop                                                                      #  100   0xeaee5  1      OPC=nop             
  nop                                                                      #  101   0xeaee6  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv

