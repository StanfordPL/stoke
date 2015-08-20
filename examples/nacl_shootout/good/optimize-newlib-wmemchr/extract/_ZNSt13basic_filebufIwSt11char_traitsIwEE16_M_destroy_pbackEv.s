  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv, @function

#! file-offset 0x12a5a0
#! rip-offset  0xea5a0
#! capacity    160 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv:  #        0xea5a0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xea5a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                #  2     0xea5a2  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x70(%r15,%rdi,1)                                   #  3     0xea5a4  6      OPC=cmpb_m8_imm8    
  je .L_ea620                                                    #  4     0xea5aa  2      OPC=je_label        
  movl %edi, %edi                                                #  5     0xea5ac  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  6     0xea5ae  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  7     0xea5b3  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %eax                                    #  8     0xea5b5  5      OPC=cmpl_r32_m32    
  nop                                                            #  9     0xea5ba  1      OPC=nop             
  nop                                                            #  10    0xea5bb  1      OPC=nop             
  nop                                                            #  11    0xea5bc  1      OPC=nop             
  nop                                                            #  12    0xea5bd  1      OPC=nop             
  nop                                                            #  13    0xea5be  1      OPC=nop             
  nop                                                            #  14    0xea5bf  1      OPC=nop             
  movl %edi, %edi                                                #  15    0xea5c0  2      OPC=movl_r32_r32    
  movl 0x6c(%r15,%rdi,1), %edx                                   #  16    0xea5c2  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  17    0xea5c7  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %ecx                                   #  18    0xea5c9  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  19    0xea5ce  2      OPC=movl_r32_r32    
  movb $0x0, 0x70(%r15,%rdi,1)                                   #  20    0xea5d0  6      OPC=movb_m8_imm8    
  setne %al                                                      #  21    0xea5d6  3      OPC=setne_r8        
  movl %edi, %edi                                                #  22    0xea5d9  2      OPC=movl_r32_r32    
  movl %ecx, 0x4(%r15,%rdi,1)                                    #  23    0xea5db  5      OPC=movl_m32_r32    
  movzbl %al, %eax                                               #  24    0xea5e0  3      OPC=movzbl_r32_r8   
  movl %edi, %edi                                                #  25    0xea5e3  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rdi,1)                                    #  26    0xea5e5  5      OPC=movl_m32_r32    
  shll $0x2, %eax                                                #  27    0xea5ea  3      OPC=shll_r32_imm8   
  movl %edi, %edi                                                #  28    0xea5ed  2      OPC=movl_r32_r32    
  addl 0x68(%r15,%rdi,1), %eax                                   #  29    0xea5ef  5      OPC=addl_r32_m32    
  movl %edi, %edi                                                #  30    0xea5f4  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                   #  31    0xea5f6  5      OPC=movl_m32_r32    
  nop                                                            #  32    0xea5fb  1      OPC=nop             
  nop                                                            #  33    0xea5fc  1      OPC=nop             
  nop                                                            #  34    0xea5fd  1      OPC=nop             
  nop                                                            #  35    0xea5fe  1      OPC=nop             
  nop                                                            #  36    0xea5ff  1      OPC=nop             
  movl %edi, %edi                                                #  37    0xea600  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                    #  38    0xea602  5      OPC=movl_m32_r32    
  nop                                                            #  39    0xea607  1      OPC=nop             
  nop                                                            #  40    0xea608  1      OPC=nop             
  nop                                                            #  41    0xea609  1      OPC=nop             
  nop                                                            #  42    0xea60a  1      OPC=nop             
  nop                                                            #  43    0xea60b  1      OPC=nop             
  nop                                                            #  44    0xea60c  1      OPC=nop             
  nop                                                            #  45    0xea60d  1      OPC=nop             
  nop                                                            #  46    0xea60e  1      OPC=nop             
  nop                                                            #  47    0xea60f  1      OPC=nop             
  nop                                                            #  48    0xea610  1      OPC=nop             
  nop                                                            #  49    0xea611  1      OPC=nop             
  nop                                                            #  50    0xea612  1      OPC=nop             
  nop                                                            #  51    0xea613  1      OPC=nop             
  nop                                                            #  52    0xea614  1      OPC=nop             
  nop                                                            #  53    0xea615  1      OPC=nop             
  nop                                                            #  54    0xea616  1      OPC=nop             
  nop                                                            #  55    0xea617  1      OPC=nop             
  nop                                                            #  56    0xea618  1      OPC=nop             
  nop                                                            #  57    0xea619  1      OPC=nop             
  nop                                                            #  58    0xea61a  1      OPC=nop             
  nop                                                            #  59    0xea61b  1      OPC=nop             
  nop                                                            #  60    0xea61c  1      OPC=nop             
  nop                                                            #  61    0xea61d  1      OPC=nop             
  nop                                                            #  62    0xea61e  1      OPC=nop             
  nop                                                            #  63    0xea61f  1      OPC=nop             
.L_ea620:                                                        #        0xea620  0      OPC=<label>         
  popq %r11                                                      #  64    0xea620  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  65    0xea622  7      OPC=andl_r32_imm32  
  nop                                                            #  66    0xea629  1      OPC=nop             
  nop                                                            #  67    0xea62a  1      OPC=nop             
  nop                                                            #  68    0xea62b  1      OPC=nop             
  nop                                                            #  69    0xea62c  1      OPC=nop             
  addq %r15, %r11                                                #  70    0xea62d  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  71    0xea630  3      OPC=jmpq_r64        
  nop                                                            #  72    0xea633  1      OPC=nop             
  nop                                                            #  73    0xea634  1      OPC=nop             
  nop                                                            #  74    0xea635  1      OPC=nop             
  nop                                                            #  75    0xea636  1      OPC=nop             
  nop                                                            #  76    0xea637  1      OPC=nop             
  nop                                                            #  77    0xea638  1      OPC=nop             
  nop                                                            #  78    0xea639  1      OPC=nop             
  nop                                                            #  79    0xea63a  1      OPC=nop             
  nop                                                            #  80    0xea63b  1      OPC=nop             
  nop                                                            #  81    0xea63c  1      OPC=nop             
  nop                                                            #  82    0xea63d  1      OPC=nop             
  nop                                                            #  83    0xea63e  1      OPC=nop             
  nop                                                            #  84    0xea63f  1      OPC=nop             
  nop                                                            #  85    0xea640  1      OPC=nop             
  nop                                                            #  86    0xea641  1      OPC=nop             
  nop                                                            #  87    0xea642  1      OPC=nop             
  nop                                                            #  88    0xea643  1      OPC=nop             
  nop                                                            #  89    0xea644  1      OPC=nop             
  nop                                                            #  90    0xea645  1      OPC=nop             
  nop                                                            #  91    0xea646  1      OPC=nop             
                                                                                                              
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv

