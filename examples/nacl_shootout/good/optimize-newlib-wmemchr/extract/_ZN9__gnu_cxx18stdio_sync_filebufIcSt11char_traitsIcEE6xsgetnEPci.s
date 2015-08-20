  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci, @function

#! file-offset 0xdbaa0
#! rip-offset  0x9baa0
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci:  #        0x9baa0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                             #  1     0x9baa0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                    #  2     0x9baa5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                              #  3     0x9baa7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                   #  4     0x9baac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  5     0x9baaf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  6     0x9bab2  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %ecx                                       #  7     0x9bab4  5      OPC=movl_r32_m32    
  movl %esi, %r12d                                                   #  8     0x9bab9  3      OPC=movl_r32_r32    
  movl %r12d, %edi                                                   #  9     0x9babc  3      OPC=movl_r32_r32    
  nop                                                                #  10    0x9babf  1      OPC=nop             
  movl $0x1, %esi                                                    #  11    0x9bac0  5      OPC=movl_r32_imm32  
  nop                                                                #  12    0x9bac5  1      OPC=nop             
  nop                                                                #  13    0x9bac6  1      OPC=nop             
  nop                                                                #  14    0x9bac7  1      OPC=nop             
  nop                                                                #  15    0x9bac8  1      OPC=nop             
  nop                                                                #  16    0x9bac9  1      OPC=nop             
  nop                                                                #  17    0x9baca  1      OPC=nop             
  nop                                                                #  18    0x9bacb  1      OPC=nop             
  nop                                                                #  19    0x9bacc  1      OPC=nop             
  nop                                                                #  20    0x9bacd  1      OPC=nop             
  nop                                                                #  21    0x9bace  1      OPC=nop             
  nop                                                                #  22    0x9bacf  1      OPC=nop             
  nop                                                                #  23    0x9bad0  1      OPC=nop             
  nop                                                                #  24    0x9bad1  1      OPC=nop             
  nop                                                                #  25    0x9bad2  1      OPC=nop             
  nop                                                                #  26    0x9bad3  1      OPC=nop             
  nop                                                                #  27    0x9bad4  1      OPC=nop             
  nop                                                                #  28    0x9bad5  1      OPC=nop             
  nop                                                                #  29    0x9bad6  1      OPC=nop             
  nop                                                                #  30    0x9bad7  1      OPC=nop             
  nop                                                                #  31    0x9bad8  1      OPC=nop             
  nop                                                                #  32    0x9bad9  1      OPC=nop             
  nop                                                                #  33    0x9bada  1      OPC=nop             
  callq .fread                                                       #  34    0x9badb  5      OPC=callq_label     
  testl %eax, %eax                                                   #  35    0x9bae0  2      OPC=testl_r32_r32   
  jle .L_9bb20                                                       #  36    0x9bae2  2      OPC=jle_label       
  leal -0x1(%rax,%r12,1), %r12d                                      #  37    0x9bae4  5      OPC=leal_r32_m16    
  movl %r12d, %r12d                                                  #  38    0x9bae9  3      OPC=movl_r32_r32    
  movzbl (%r15,%r12,1), %edx                                         #  39    0x9baec  5      OPC=movzbl_r32_m8   
  movl %ebx, %ebx                                                    #  40    0x9baf1  2      OPC=movl_r32_r32    
  movl %edx, 0x24(%r15,%rbx,1)                                       #  41    0x9baf3  5      OPC=movl_m32_r32    
  nop                                                                #  42    0x9baf8  1      OPC=nop             
  nop                                                                #  43    0x9baf9  1      OPC=nop             
  nop                                                                #  44    0x9bafa  1      OPC=nop             
  nop                                                                #  45    0x9bafb  1      OPC=nop             
  nop                                                                #  46    0x9bafc  1      OPC=nop             
  nop                                                                #  47    0x9bafd  1      OPC=nop             
  nop                                                                #  48    0x9bafe  1      OPC=nop             
  nop                                                                #  49    0x9baff  1      OPC=nop             
.L_9bb00:                                                            #        0x9bb00  0      OPC=<label>         
  movq 0x8(%rsp), %rbx                                               #  50    0x9bb00  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                              #  51    0x9bb05  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                   #  52    0x9bb0a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  53    0x9bb0d  3      OPC=addq_r64_r64    
  popq %r11                                                          #  54    0x9bb10  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  55    0x9bb12  7      OPC=andl_r32_imm32  
  nop                                                                #  56    0x9bb19  1      OPC=nop             
  nop                                                                #  57    0x9bb1a  1      OPC=nop             
  nop                                                                #  58    0x9bb1b  1      OPC=nop             
  nop                                                                #  59    0x9bb1c  1      OPC=nop             
  addq %r15, %r11                                                    #  60    0x9bb1d  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  61    0x9bb20  3      OPC=jmpq_r64        
  nop                                                                #  62    0x9bb23  1      OPC=nop             
  nop                                                                #  63    0x9bb24  1      OPC=nop             
  nop                                                                #  64    0x9bb25  1      OPC=nop             
  nop                                                                #  65    0x9bb26  1      OPC=nop             
.L_9bb20:                                                            #        0x9bb27  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  66    0x9bb27  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                #  67    0x9bb29  9      OPC=movl_m32_imm32  
  jmpq .L_9bb00                                                      #  68    0x9bb32  2      OPC=jmpq_label      
  nop                                                                #  69    0x9bb34  1      OPC=nop             
  nop                                                                #  70    0x9bb35  1      OPC=nop             
  nop                                                                #  71    0x9bb36  1      OPC=nop             
  nop                                                                #  72    0x9bb37  1      OPC=nop             
  nop                                                                #  73    0x9bb38  1      OPC=nop             
  nop                                                                #  74    0x9bb39  1      OPC=nop             
  nop                                                                #  75    0x9bb3a  1      OPC=nop             
  nop                                                                #  76    0x9bb3b  1      OPC=nop             
  nop                                                                #  77    0x9bb3c  1      OPC=nop             
  nop                                                                #  78    0x9bb3d  1      OPC=nop             
  nop                                                                #  79    0x9bb3e  1      OPC=nop             
  nop                                                                #  80    0x9bb3f  1      OPC=nop             
  nop                                                                #  81    0x9bb40  1      OPC=nop             
  nop                                                                #  82    0x9bb41  1      OPC=nop             
  nop                                                                #  83    0x9bb42  1      OPC=nop             
  nop                                                                #  84    0x9bb43  1      OPC=nop             
  nop                                                                #  85    0x9bb44  1      OPC=nop             
  nop                                                                #  86    0x9bb45  1      OPC=nop             
  nop                                                                #  87    0x9bb46  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci

