  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv, @function

#! file-offset 0x12acc0
#! rip-offset  0xeacc0
#! capacity    160 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv:  #        0xeacc0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xeacc0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                #  2     0xeacc2  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x70(%r15,%rdi,1)                                   #  3     0xeacc4  6      OPC=cmpb_m8_imm8    
  je .L_ead40                                                    #  4     0xeacca  2      OPC=je_label        
  movl %edi, %edi                                                #  5     0xeaccc  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  6     0xeacce  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  7     0xeacd3  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %eax                                    #  8     0xeacd5  5      OPC=cmpl_r32_m32    
  nop                                                            #  9     0xeacda  1      OPC=nop             
  nop                                                            #  10    0xeacdb  1      OPC=nop             
  nop                                                            #  11    0xeacdc  1      OPC=nop             
  nop                                                            #  12    0xeacdd  1      OPC=nop             
  nop                                                            #  13    0xeacde  1      OPC=nop             
  nop                                                            #  14    0xeacdf  1      OPC=nop             
  movl %edi, %edi                                                #  15    0xeace0  2      OPC=movl_r32_r32    
  movl 0x6c(%r15,%rdi,1), %edx                                   #  16    0xeace2  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  17    0xeace7  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %ecx                                   #  18    0xeace9  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  19    0xeacee  2      OPC=movl_r32_r32    
  movb $0x0, 0x70(%r15,%rdi,1)                                   #  20    0xeacf0  6      OPC=movb_m8_imm8    
  setne %al                                                      #  21    0xeacf6  3      OPC=setne_r8        
  movl %edi, %edi                                                #  22    0xeacf9  2      OPC=movl_r32_r32    
  movl %ecx, 0x4(%r15,%rdi,1)                                    #  23    0xeacfb  5      OPC=movl_m32_r32    
  movzbl %al, %eax                                               #  24    0xead00  3      OPC=movzbl_r32_r8   
  movl %edi, %edi                                                #  25    0xead03  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rdi,1)                                    #  26    0xead05  5      OPC=movl_m32_r32    
  shll $0x2, %eax                                                #  27    0xead0a  3      OPC=shll_r32_imm8   
  movl %edi, %edi                                                #  28    0xead0d  2      OPC=movl_r32_r32    
  addl 0x68(%r15,%rdi,1), %eax                                   #  29    0xead0f  5      OPC=addl_r32_m32    
  movl %edi, %edi                                                #  30    0xead14  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                   #  31    0xead16  5      OPC=movl_m32_r32    
  nop                                                            #  32    0xead1b  1      OPC=nop             
  nop                                                            #  33    0xead1c  1      OPC=nop             
  nop                                                            #  34    0xead1d  1      OPC=nop             
  nop                                                            #  35    0xead1e  1      OPC=nop             
  nop                                                            #  36    0xead1f  1      OPC=nop             
  movl %edi, %edi                                                #  37    0xead20  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                    #  38    0xead22  5      OPC=movl_m32_r32    
  nop                                                            #  39    0xead27  1      OPC=nop             
  nop                                                            #  40    0xead28  1      OPC=nop             
  nop                                                            #  41    0xead29  1      OPC=nop             
  nop                                                            #  42    0xead2a  1      OPC=nop             
  nop                                                            #  43    0xead2b  1      OPC=nop             
  nop                                                            #  44    0xead2c  1      OPC=nop             
  nop                                                            #  45    0xead2d  1      OPC=nop             
  nop                                                            #  46    0xead2e  1      OPC=nop             
  nop                                                            #  47    0xead2f  1      OPC=nop             
  nop                                                            #  48    0xead30  1      OPC=nop             
  nop                                                            #  49    0xead31  1      OPC=nop             
  nop                                                            #  50    0xead32  1      OPC=nop             
  nop                                                            #  51    0xead33  1      OPC=nop             
  nop                                                            #  52    0xead34  1      OPC=nop             
  nop                                                            #  53    0xead35  1      OPC=nop             
  nop                                                            #  54    0xead36  1      OPC=nop             
  nop                                                            #  55    0xead37  1      OPC=nop             
  nop                                                            #  56    0xead38  1      OPC=nop             
  nop                                                            #  57    0xead39  1      OPC=nop             
  nop                                                            #  58    0xead3a  1      OPC=nop             
  nop                                                            #  59    0xead3b  1      OPC=nop             
  nop                                                            #  60    0xead3c  1      OPC=nop             
  nop                                                            #  61    0xead3d  1      OPC=nop             
  nop                                                            #  62    0xead3e  1      OPC=nop             
  nop                                                            #  63    0xead3f  1      OPC=nop             
.L_ead40:                                                        #        0xead40  0      OPC=<label>         
  popq %r11                                                      #  64    0xead40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  65    0xead42  7      OPC=andl_r32_imm32  
  nop                                                            #  66    0xead49  1      OPC=nop             
  nop                                                            #  67    0xead4a  1      OPC=nop             
  nop                                                            #  68    0xead4b  1      OPC=nop             
  nop                                                            #  69    0xead4c  1      OPC=nop             
  addq %r15, %r11                                                #  70    0xead4d  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  71    0xead50  3      OPC=jmpq_r64        
  nop                                                            #  72    0xead53  1      OPC=nop             
  nop                                                            #  73    0xead54  1      OPC=nop             
  nop                                                            #  74    0xead55  1      OPC=nop             
  nop                                                            #  75    0xead56  1      OPC=nop             
  nop                                                            #  76    0xead57  1      OPC=nop             
  nop                                                            #  77    0xead58  1      OPC=nop             
  nop                                                            #  78    0xead59  1      OPC=nop             
  nop                                                            #  79    0xead5a  1      OPC=nop             
  nop                                                            #  80    0xead5b  1      OPC=nop             
  nop                                                            #  81    0xead5c  1      OPC=nop             
  nop                                                            #  82    0xead5d  1      OPC=nop             
  nop                                                            #  83    0xead5e  1      OPC=nop             
  nop                                                            #  84    0xead5f  1      OPC=nop             
  nop                                                            #  85    0xead60  1      OPC=nop             
  nop                                                            #  86    0xead61  1      OPC=nop             
  nop                                                            #  87    0xead62  1      OPC=nop             
  nop                                                            #  88    0xead63  1      OPC=nop             
  nop                                                            #  89    0xead64  1      OPC=nop             
  nop                                                            #  90    0xead65  1      OPC=nop             
  nop                                                            #  91    0xead66  1      OPC=nop             
                                                                                                              
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv

