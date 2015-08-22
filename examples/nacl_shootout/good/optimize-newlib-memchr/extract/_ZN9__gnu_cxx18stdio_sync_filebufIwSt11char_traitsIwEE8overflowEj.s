  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj, @function

#! file-offset 0xdc640
#! rip-offset  0x9c640
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj:  #        0x9c640  0      OPC=<label>         
  subl $0x8, %esp                                                    #  1     0x9c640  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  2     0x9c643  3      OPC=addq_r64_r64    
  cmpl $0xffffffff, %esi                                             #  3     0x9c646  6      OPC=cmpl_r32_imm32  
  nop                                                                #  4     0x9c64c  1      OPC=nop             
  nop                                                                #  5     0x9c64d  1      OPC=nop             
  nop                                                                #  6     0x9c64e  1      OPC=nop             
  movl %esi, %eax                                                    #  7     0x9c64f  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                    #  8     0x9c651  2      OPC=movl_r32_r32    
  je .L_9c680                                                        #  9     0x9c653  2      OPC=je_label        
  movl %edi, %edi                                                    #  10    0x9c655  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rdi,1), %esi                                       #  11    0x9c657  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                    #  12    0x9c65c  2      OPC=movl_r32_r32    
  addl $0x8, %esp                                                    #  13    0x9c65e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  14    0x9c661  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                                     #  15    0x9c664  2      OPC=xchgw_ax_r16    
  jmpq .putwc                                                        #  16    0x9c666  5      OPC=jmpq_label_1    
  nop                                                                #  17    0x9c66b  1      OPC=nop             
  nop                                                                #  18    0x9c66c  1      OPC=nop             
  nop                                                                #  19    0x9c66d  1      OPC=nop             
  nop                                                                #  20    0x9c66e  1      OPC=nop             
  nop                                                                #  21    0x9c66f  1      OPC=nop             
  nop                                                                #  22    0x9c670  1      OPC=nop             
  nop                                                                #  23    0x9c671  1      OPC=nop             
  nop                                                                #  24    0x9c672  1      OPC=nop             
  nop                                                                #  25    0x9c673  1      OPC=nop             
  nop                                                                #  26    0x9c674  1      OPC=nop             
  nop                                                                #  27    0x9c675  1      OPC=nop             
  nop                                                                #  28    0x9c676  1      OPC=nop             
  nop                                                                #  29    0x9c677  1      OPC=nop             
  nop                                                                #  30    0x9c678  1      OPC=nop             
  nop                                                                #  31    0x9c679  1      OPC=nop             
  nop                                                                #  32    0x9c67a  1      OPC=nop             
  nop                                                                #  33    0x9c67b  1      OPC=nop             
  nop                                                                #  34    0x9c67c  1      OPC=nop             
  nop                                                                #  35    0x9c67d  1      OPC=nop             
  nop                                                                #  36    0x9c67e  1      OPC=nop             
  nop                                                                #  37    0x9c67f  1      OPC=nop             
  nop                                                                #  38    0x9c680  1      OPC=nop             
  nop                                                                #  39    0x9c681  1      OPC=nop             
  nop                                                                #  40    0x9c682  1      OPC=nop             
  nop                                                                #  41    0x9c683  1      OPC=nop             
  nop                                                                #  42    0x9c684  1      OPC=nop             
  nop                                                                #  43    0x9c685  1      OPC=nop             
.L_9c680:                                                            #        0x9c686  0      OPC=<label>         
  movl %edi, %edi                                                    #  44    0x9c686  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rdi,1), %edi                                       #  45    0x9c688  5      OPC=movl_r32_m32    
  nop                                                                #  46    0x9c68d  1      OPC=nop             
  nop                                                                #  47    0x9c68e  1      OPC=nop             
  nop                                                                #  48    0x9c68f  1      OPC=nop             
  nop                                                                #  49    0x9c690  1      OPC=nop             
  nop                                                                #  50    0x9c691  1      OPC=nop             
  nop                                                                #  51    0x9c692  1      OPC=nop             
  nop                                                                #  52    0x9c693  1      OPC=nop             
  nop                                                                #  53    0x9c694  1      OPC=nop             
  nop                                                                #  54    0x9c695  1      OPC=nop             
  nop                                                                #  55    0x9c696  1      OPC=nop             
  nop                                                                #  56    0x9c697  1      OPC=nop             
  nop                                                                #  57    0x9c698  1      OPC=nop             
  nop                                                                #  58    0x9c699  1      OPC=nop             
  nop                                                                #  59    0x9c69a  1      OPC=nop             
  nop                                                                #  60    0x9c69b  1      OPC=nop             
  nop                                                                #  61    0x9c69c  1      OPC=nop             
  nop                                                                #  62    0x9c69d  1      OPC=nop             
  nop                                                                #  63    0x9c69e  1      OPC=nop             
  nop                                                                #  64    0x9c69f  1      OPC=nop             
  nop                                                                #  65    0x9c6a0  1      OPC=nop             
  callq .fflush                                                      #  66    0x9c6a1  5      OPC=callq_label     
  cmpl $0x1, %eax                                                    #  67    0x9c6a6  3      OPC=cmpl_r32_imm8   
  sbbl %eax, %eax                                                    #  68    0x9c6a9  2      OPC=sbbl_r32_r32    
  addl $0x8, %esp                                                    #  69    0x9c6ab  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  70    0x9c6ae  3      OPC=addq_r64_r64    
  popq %r11                                                          #  71    0x9c6b1  2      OPC=popq_r64_1      
  notl %eax                                                          #  72    0x9c6b3  2      OPC=notl_r32        
  andl $0xffffffe0, %r11d                                            #  73    0x9c6b5  7      OPC=andl_r32_imm32  
  nop                                                                #  74    0x9c6bc  1      OPC=nop             
  nop                                                                #  75    0x9c6bd  1      OPC=nop             
  nop                                                                #  76    0x9c6be  1      OPC=nop             
  nop                                                                #  77    0x9c6bf  1      OPC=nop             
  addq %r15, %r11                                                    #  78    0x9c6c0  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  79    0x9c6c3  3      OPC=jmpq_r64        
  nop                                                                #  80    0x9c6c6  1      OPC=nop             
  nop                                                                #  81    0x9c6c7  1      OPC=nop             
  nop                                                                #  82    0x9c6c8  1      OPC=nop             
  nop                                                                #  83    0x9c6c9  1      OPC=nop             
  nop                                                                #  84    0x9c6ca  1      OPC=nop             
  nop                                                                #  85    0x9c6cb  1      OPC=nop             
  nop                                                                #  86    0x9c6cc  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj

