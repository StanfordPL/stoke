  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv, @function

#! file-offset 0x12ad60
#! rip-offset  0xead60
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv:  #        0xead60  0      OPC=<label>         
  pushq %rbx                                                               #  1     0xead60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  2     0xead61  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                          #  3     0xead63  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                             #  4     0xead65  6      OPC=cmpb_m8_imm8    
  je .L_eada0                                                              #  5     0xead6b  2      OPC=je_label        
  movl %ebx, %ebx                                                          #  6     0xead6d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edi                                             #  7     0xead6f  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  8     0xead74  3      OPC=testq_r64_r64   
  je .L_ead80                                                              #  9     0xead77  2      OPC=je_label        
  xchgw %ax, %ax                                                           #  10    0xead79  2      OPC=xchgw_ax_r16    
  callq ._ZdaPv                                                            #  11    0xead7b  5      OPC=callq_label     
.L_ead80:                                                                  #        0xead80  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  12    0xead80  2      OPC=movl_r32_r32    
  movl $0x0, 0x58(%r15,%rbx,1)                                             #  13    0xead82  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  14    0xead8b  2      OPC=movl_r32_r32    
  movb $0x0, 0x60(%r15,%rbx,1)                                             #  15    0xead8d  6      OPC=movb_m8_imm8    
  nop                                                                      #  16    0xead93  1      OPC=nop             
  nop                                                                      #  17    0xead94  1      OPC=nop             
  nop                                                                      #  18    0xead95  1      OPC=nop             
  nop                                                                      #  19    0xead96  1      OPC=nop             
  nop                                                                      #  20    0xead97  1      OPC=nop             
  nop                                                                      #  21    0xead98  1      OPC=nop             
  nop                                                                      #  22    0xead99  1      OPC=nop             
  nop                                                                      #  23    0xead9a  1      OPC=nop             
  nop                                                                      #  24    0xead9b  1      OPC=nop             
  nop                                                                      #  25    0xead9c  1      OPC=nop             
  nop                                                                      #  26    0xead9d  1      OPC=nop             
  nop                                                                      #  27    0xead9e  1      OPC=nop             
  nop                                                                      #  28    0xead9f  1      OPC=nop             
.L_eada0:                                                                  #        0xeada0  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  29    0xeada0  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rbx,1), %edi                                             #  30    0xeada2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                                                         #  31    0xeada7  3      OPC=testq_r64_r64   
  je .L_eadc0                                                              #  32    0xeadaa  2      OPC=je_label        
  nop                                                                      #  33    0xeadac  1      OPC=nop             
  nop                                                                      #  34    0xeadad  1      OPC=nop             
  nop                                                                      #  35    0xeadae  1      OPC=nop             
  nop                                                                      #  36    0xeadaf  1      OPC=nop             
  nop                                                                      #  37    0xeadb0  1      OPC=nop             
  nop                                                                      #  38    0xeadb1  1      OPC=nop             
  nop                                                                      #  39    0xeadb2  1      OPC=nop             
  nop                                                                      #  40    0xeadb3  1      OPC=nop             
  nop                                                                      #  41    0xeadb4  1      OPC=nop             
  nop                                                                      #  42    0xeadb5  1      OPC=nop             
  nop                                                                      #  43    0xeadb6  1      OPC=nop             
  nop                                                                      #  44    0xeadb7  1      OPC=nop             
  nop                                                                      #  45    0xeadb8  1      OPC=nop             
  nop                                                                      #  46    0xeadb9  1      OPC=nop             
  nop                                                                      #  47    0xeadba  1      OPC=nop             
  callq ._ZdaPv                                                            #  48    0xeadbb  5      OPC=callq_label     
.L_eadc0:                                                                  #        0xeadc0  0      OPC=<label>         
  movl %ebx, %ebx                                                          #  49    0xeadc0  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                             #  50    0xeadc2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  51    0xeadcb  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                             #  52    0xeadcd  9      OPC=movl_m32_imm32  
  nop                                                                      #  53    0xeadd6  1      OPC=nop             
  nop                                                                      #  54    0xeadd7  1      OPC=nop             
  nop                                                                      #  55    0xeadd8  1      OPC=nop             
  nop                                                                      #  56    0xeadd9  1      OPC=nop             
  nop                                                                      #  57    0xeadda  1      OPC=nop             
  nop                                                                      #  58    0xeaddb  1      OPC=nop             
  nop                                                                      #  59    0xeaddc  1      OPC=nop             
  nop                                                                      #  60    0xeaddd  1      OPC=nop             
  nop                                                                      #  61    0xeadde  1      OPC=nop             
  nop                                                                      #  62    0xeaddf  1      OPC=nop             
  movl %ebx, %ebx                                                          #  63    0xeade0  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                             #  64    0xeade2  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                          #  65    0xeadee  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                             #  66    0xeadf0  12     OPC=movl_m32_imm32  
  popq %rbx                                                                #  67    0xeadfc  1      OPC=popq_r64_1      
  popq %r11                                                                #  68    0xeadfd  2      OPC=popq_r64_1      
  nop                                                                      #  69    0xeadff  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                  #  70    0xeae00  7      OPC=andl_r32_imm32  
  nop                                                                      #  71    0xeae07  1      OPC=nop             
  nop                                                                      #  72    0xeae08  1      OPC=nop             
  nop                                                                      #  73    0xeae09  1      OPC=nop             
  nop                                                                      #  74    0xeae0a  1      OPC=nop             
  addq %r15, %r11                                                          #  75    0xeae0b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  76    0xeae0e  3      OPC=jmpq_r64        
  nop                                                                      #  77    0xeae11  1      OPC=nop             
  nop                                                                      #  78    0xeae12  1      OPC=nop             
  nop                                                                      #  79    0xeae13  1      OPC=nop             
  nop                                                                      #  80    0xeae14  1      OPC=nop             
  nop                                                                      #  81    0xeae15  1      OPC=nop             
  nop                                                                      #  82    0xeae16  1      OPC=nop             
  nop                                                                      #  83    0xeae17  1      OPC=nop             
  nop                                                                      #  84    0xeae18  1      OPC=nop             
  nop                                                                      #  85    0xeae19  1      OPC=nop             
  nop                                                                      #  86    0xeae1a  1      OPC=nop             
  nop                                                                      #  87    0xeae1b  1      OPC=nop             
  nop                                                                      #  88    0xeae1c  1      OPC=nop             
  nop                                                                      #  89    0xeae1d  1      OPC=nop             
  nop                                                                      #  90    0xeae1e  1      OPC=nop             
  nop                                                                      #  91    0xeae1f  1      OPC=nop             
  nop                                                                      #  92    0xeae20  1      OPC=nop             
  nop                                                                      #  93    0xeae21  1      OPC=nop             
  nop                                                                      #  94    0xeae22  1      OPC=nop             
  nop                                                                      #  95    0xeae23  1      OPC=nop             
  nop                                                                      #  96    0xeae24  1      OPC=nop             
  nop                                                                      #  97    0xeae25  1      OPC=nop             
  nop                                                                      #  98    0xeae26  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE26_M_destroy_internal_bufferEv

