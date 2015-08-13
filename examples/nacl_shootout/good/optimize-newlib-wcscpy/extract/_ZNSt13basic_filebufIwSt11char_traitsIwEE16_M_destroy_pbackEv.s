  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv, @function

#! file-offset 0x12a2a0
#! rip-offset  0xea2a0
#! capacity    160 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv:  #        0xea2a0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xea2a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                #  2     0xea2a2  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x70(%r15,%rdi,1)                                   #  3     0xea2a4  6      OPC=cmpb_m8_imm8    
  je .L_ea320                                                    #  4     0xea2aa  2      OPC=je_label        
  movl %edi, %edi                                                #  5     0xea2ac  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  6     0xea2ae  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  7     0xea2b3  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %eax                                    #  8     0xea2b5  5      OPC=cmpl_r32_m32    
  nop                                                            #  9     0xea2ba  1      OPC=nop             
  nop                                                            #  10    0xea2bb  1      OPC=nop             
  nop                                                            #  11    0xea2bc  1      OPC=nop             
  nop                                                            #  12    0xea2bd  1      OPC=nop             
  nop                                                            #  13    0xea2be  1      OPC=nop             
  nop                                                            #  14    0xea2bf  1      OPC=nop             
  movl %edi, %edi                                                #  15    0xea2c0  2      OPC=movl_r32_r32    
  movl 0x6c(%r15,%rdi,1), %edx                                   #  16    0xea2c2  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  17    0xea2c7  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %ecx                                   #  18    0xea2c9  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                #  19    0xea2ce  2      OPC=movl_r32_r32    
  movb $0x0, 0x70(%r15,%rdi,1)                                   #  20    0xea2d0  6      OPC=movb_m8_imm8    
  setne %al                                                      #  21    0xea2d6  3      OPC=setne_r8        
  movl %edi, %edi                                                #  22    0xea2d9  2      OPC=movl_r32_r32    
  movl %ecx, 0x4(%r15,%rdi,1)                                    #  23    0xea2db  5      OPC=movl_m32_r32    
  movzbl %al, %eax                                               #  24    0xea2e0  3      OPC=movzbl_r32_r8   
  movl %edi, %edi                                                #  25    0xea2e3  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rdi,1)                                    #  26    0xea2e5  5      OPC=movl_m32_r32    
  shll $0x2, %eax                                                #  27    0xea2ea  3      OPC=shll_r32_imm8   
  movl %edi, %edi                                                #  28    0xea2ed  2      OPC=movl_r32_r32    
  addl 0x68(%r15,%rdi,1), %eax                                   #  29    0xea2ef  5      OPC=addl_r32_m32    
  movl %edi, %edi                                                #  30    0xea2f4  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                   #  31    0xea2f6  5      OPC=movl_m32_r32    
  nop                                                            #  32    0xea2fb  1      OPC=nop             
  nop                                                            #  33    0xea2fc  1      OPC=nop             
  nop                                                            #  34    0xea2fd  1      OPC=nop             
  nop                                                            #  35    0xea2fe  1      OPC=nop             
  nop                                                            #  36    0xea2ff  1      OPC=nop             
  movl %edi, %edi                                                #  37    0xea300  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                    #  38    0xea302  5      OPC=movl_m32_r32    
  nop                                                            #  39    0xea307  1      OPC=nop             
  nop                                                            #  40    0xea308  1      OPC=nop             
  nop                                                            #  41    0xea309  1      OPC=nop             
  nop                                                            #  42    0xea30a  1      OPC=nop             
  nop                                                            #  43    0xea30b  1      OPC=nop             
  nop                                                            #  44    0xea30c  1      OPC=nop             
  nop                                                            #  45    0xea30d  1      OPC=nop             
  nop                                                            #  46    0xea30e  1      OPC=nop             
  nop                                                            #  47    0xea30f  1      OPC=nop             
  nop                                                            #  48    0xea310  1      OPC=nop             
  nop                                                            #  49    0xea311  1      OPC=nop             
  nop                                                            #  50    0xea312  1      OPC=nop             
  nop                                                            #  51    0xea313  1      OPC=nop             
  nop                                                            #  52    0xea314  1      OPC=nop             
  nop                                                            #  53    0xea315  1      OPC=nop             
  nop                                                            #  54    0xea316  1      OPC=nop             
  nop                                                            #  55    0xea317  1      OPC=nop             
  nop                                                            #  56    0xea318  1      OPC=nop             
  nop                                                            #  57    0xea319  1      OPC=nop             
  nop                                                            #  58    0xea31a  1      OPC=nop             
  nop                                                            #  59    0xea31b  1      OPC=nop             
  nop                                                            #  60    0xea31c  1      OPC=nop             
  nop                                                            #  61    0xea31d  1      OPC=nop             
  nop                                                            #  62    0xea31e  1      OPC=nop             
  nop                                                            #  63    0xea31f  1      OPC=nop             
.L_ea320:                                                        #        0xea320  0      OPC=<label>         
  popq %r11                                                      #  64    0xea320  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  65    0xea322  7      OPC=andl_r32_imm32  
  nop                                                            #  66    0xea329  1      OPC=nop             
  nop                                                            #  67    0xea32a  1      OPC=nop             
  nop                                                            #  68    0xea32b  1      OPC=nop             
  nop                                                            #  69    0xea32c  1      OPC=nop             
  addq %r15, %r11                                                #  70    0xea32d  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  71    0xea330  3      OPC=jmpq_r64        
  nop                                                            #  72    0xea333  1      OPC=nop             
  nop                                                            #  73    0xea334  1      OPC=nop             
  nop                                                            #  74    0xea335  1      OPC=nop             
  nop                                                            #  75    0xea336  1      OPC=nop             
  nop                                                            #  76    0xea337  1      OPC=nop             
  nop                                                            #  77    0xea338  1      OPC=nop             
  nop                                                            #  78    0xea339  1      OPC=nop             
  nop                                                            #  79    0xea33a  1      OPC=nop             
  nop                                                            #  80    0xea33b  1      OPC=nop             
  nop                                                            #  81    0xea33c  1      OPC=nop             
  nop                                                            #  82    0xea33d  1      OPC=nop             
  nop                                                            #  83    0xea33e  1      OPC=nop             
  nop                                                            #  84    0xea33f  1      OPC=nop             
  nop                                                            #  85    0xea340  1      OPC=nop             
  nop                                                            #  86    0xea341  1      OPC=nop             
  nop                                                            #  87    0xea342  1      OPC=nop             
  nop                                                            #  88    0xea343  1      OPC=nop             
  nop                                                            #  89    0xea344  1      OPC=nop             
  nop                                                            #  90    0xea345  1      OPC=nop             
  nop                                                            #  91    0xea346  1      OPC=nop             
                                                                                                              
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE16_M_destroy_pbackEv

