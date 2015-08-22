  .text
  .globl _ZNKSt5ctypeIcE10do_toupperEPcPKc
  .type _ZNKSt5ctypeIcE10do_toupperEPcPKc, @function

#! file-offset 0x125500
#! rip-offset  0xe5500
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_toupperEPcPKc:  #        0xe5500  0      OPC=<label>         
  pushq %r13                         #  1     0xe5500  2      OPC=pushq_r64_1     
  movl %edx, %r13d                   #  2     0xe5502  3      OPC=movl_r32_r32    
  pushq %r12                         #  3     0xe5505  2      OPC=pushq_r64_1     
  movl %edi, %r12d                   #  4     0xe5507  3      OPC=movl_r32_r32    
  pushq %rbx                         #  5     0xe550a  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  6     0xe550b  2      OPC=movl_r32_r32    
  cmpl %r13d, %ebx                   #  7     0xe550d  3      OPC=cmpl_r32_r32    
  jae .L_e5560                       #  8     0xe5510  2      OPC=jae_label       
  nop                                #  9     0xe5512  1      OPC=nop             
  nop                                #  10    0xe5513  1      OPC=nop             
  nop                                #  11    0xe5514  1      OPC=nop             
  nop                                #  12    0xe5515  1      OPC=nop             
  nop                                #  13    0xe5516  1      OPC=nop             
  nop                                #  14    0xe5517  1      OPC=nop             
  nop                                #  15    0xe5518  1      OPC=nop             
  nop                                #  16    0xe5519  1      OPC=nop             
  nop                                #  17    0xe551a  1      OPC=nop             
  nop                                #  18    0xe551b  1      OPC=nop             
  nop                                #  19    0xe551c  1      OPC=nop             
  nop                                #  20    0xe551d  1      OPC=nop             
  nop                                #  21    0xe551e  1      OPC=nop             
  nop                                #  22    0xe551f  1      OPC=nop             
.L_e5520:                            #        0xe5520  0      OPC=<label>         
  movl %r12d, %r12d                  #  23    0xe5520  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax           #  24    0xe5523  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                    #  25    0xe5527  2      OPC=movl_r32_r32    
  movsbl (%r15,%rbx,1), %esi         #  26    0xe5529  5      OPC=movsbl_r32_m8   
  movl %r12d, %edi                   #  27    0xe552e  3      OPC=movl_r32_r32    
  movl %eax, %eax                    #  28    0xe5531  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax        #  29    0xe5533  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax             #  30    0xe5538  6      OPC=andl_r32_imm32  
  nop                                #  31    0xe553e  1      OPC=nop             
  nop                                #  32    0xe553f  1      OPC=nop             
  nop                                #  33    0xe5540  1      OPC=nop             
  addq %r15, %rax                    #  34    0xe5541  3      OPC=addq_r64_r64    
  callq %rax                         #  35    0xe5544  2      OPC=callq_r64       
  movl %ebx, %ebx                    #  36    0xe5546  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rbx,1)            #  37    0xe5548  4      OPC=movb_m8_r8      
  addl $0x1, %ebx                    #  38    0xe554c  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r13d                   #  39    0xe554f  3      OPC=cmpl_r32_r32    
  ja .L_e5520                        #  40    0xe5552  2      OPC=ja_label        
  nop                                #  41    0xe5554  1      OPC=nop             
  nop                                #  42    0xe5555  1      OPC=nop             
  nop                                #  43    0xe5556  1      OPC=nop             
  nop                                #  44    0xe5557  1      OPC=nop             
  nop                                #  45    0xe5558  1      OPC=nop             
  nop                                #  46    0xe5559  1      OPC=nop             
  nop                                #  47    0xe555a  1      OPC=nop             
  nop                                #  48    0xe555b  1      OPC=nop             
  nop                                #  49    0xe555c  1      OPC=nop             
  nop                                #  50    0xe555d  1      OPC=nop             
  nop                                #  51    0xe555e  1      OPC=nop             
  nop                                #  52    0xe555f  1      OPC=nop             
  nop                                #  53    0xe5560  1      OPC=nop             
  nop                                #  54    0xe5561  1      OPC=nop             
  nop                                #  55    0xe5562  1      OPC=nop             
  nop                                #  56    0xe5563  1      OPC=nop             
  nop                                #  57    0xe5564  1      OPC=nop             
  nop                                #  58    0xe5565  1      OPC=nop             
.L_e5560:                            #        0xe5566  0      OPC=<label>         
  popq %rbx                          #  59    0xe5566  1      OPC=popq_r64_1      
  popq %r12                          #  60    0xe5567  2      OPC=popq_r64_1      
  movl %r13d, %eax                   #  61    0xe5569  3      OPC=movl_r32_r32    
  popq %r13                          #  62    0xe556c  2      OPC=popq_r64_1      
  popq %r11                          #  63    0xe556e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  64    0xe5570  7      OPC=andl_r32_imm32  
  nop                                #  65    0xe5577  1      OPC=nop             
  nop                                #  66    0xe5578  1      OPC=nop             
  nop                                #  67    0xe5579  1      OPC=nop             
  nop                                #  68    0xe557a  1      OPC=nop             
  addq %r15, %r11                    #  69    0xe557b  3      OPC=addq_r64_r64    
  jmpq %r11                          #  70    0xe557e  3      OPC=jmpq_r64        
  nop                                #  71    0xe5581  1      OPC=nop             
  nop                                #  72    0xe5582  1      OPC=nop             
  nop                                #  73    0xe5583  1      OPC=nop             
  nop                                #  74    0xe5584  1      OPC=nop             
  nop                                #  75    0xe5585  1      OPC=nop             
  nop                                #  76    0xe5586  1      OPC=nop             
  nop                                #  77    0xe5587  1      OPC=nop             
  nop                                #  78    0xe5588  1      OPC=nop             
  nop                                #  79    0xe5589  1      OPC=nop             
  nop                                #  80    0xe558a  1      OPC=nop             
  nop                                #  81    0xe558b  1      OPC=nop             
  nop                                #  82    0xe558c  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIcE10do_toupperEPcPKc, .-_ZNKSt5ctypeIcE10do_toupperEPcPKc

