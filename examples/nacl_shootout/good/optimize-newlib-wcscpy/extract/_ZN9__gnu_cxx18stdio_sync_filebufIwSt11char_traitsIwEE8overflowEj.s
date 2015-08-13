  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj, @function

#! file-offset 0xdbc20
#! rip-offset  0x9bc20
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj:  #        0x9bc20  0      OPC=<label>         
  subl $0x8, %esp                                                    #  1     0x9bc20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  2     0x9bc23  3      OPC=addq_r64_r64    
  cmpl $0xffffffff, %esi                                             #  3     0x9bc26  6      OPC=cmpl_r32_imm32  
  nop                                                                #  4     0x9bc2c  1      OPC=nop             
  nop                                                                #  5     0x9bc2d  1      OPC=nop             
  nop                                                                #  6     0x9bc2e  1      OPC=nop             
  movl %esi, %eax                                                    #  7     0x9bc2f  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                    #  8     0x9bc31  2      OPC=movl_r32_r32    
  je .L_9bc60                                                        #  9     0x9bc33  2      OPC=je_label        
  movl %edi, %edi                                                    #  10    0x9bc35  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rdi,1), %esi                                       #  11    0x9bc37  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                    #  12    0x9bc3c  2      OPC=movl_r32_r32    
  addl $0x8, %esp                                                    #  13    0x9bc3e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  14    0x9bc41  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                                     #  15    0x9bc44  2      OPC=xchgw_ax_r16    
  jmpq .putwc                                                        #  16    0x9bc46  5      OPC=jmpq_label_1    
  nop                                                                #  17    0x9bc4b  1      OPC=nop             
  nop                                                                #  18    0x9bc4c  1      OPC=nop             
  nop                                                                #  19    0x9bc4d  1      OPC=nop             
  nop                                                                #  20    0x9bc4e  1      OPC=nop             
  nop                                                                #  21    0x9bc4f  1      OPC=nop             
  nop                                                                #  22    0x9bc50  1      OPC=nop             
  nop                                                                #  23    0x9bc51  1      OPC=nop             
  nop                                                                #  24    0x9bc52  1      OPC=nop             
  nop                                                                #  25    0x9bc53  1      OPC=nop             
  nop                                                                #  26    0x9bc54  1      OPC=nop             
  nop                                                                #  27    0x9bc55  1      OPC=nop             
  nop                                                                #  28    0x9bc56  1      OPC=nop             
  nop                                                                #  29    0x9bc57  1      OPC=nop             
  nop                                                                #  30    0x9bc58  1      OPC=nop             
  nop                                                                #  31    0x9bc59  1      OPC=nop             
  nop                                                                #  32    0x9bc5a  1      OPC=nop             
  nop                                                                #  33    0x9bc5b  1      OPC=nop             
  nop                                                                #  34    0x9bc5c  1      OPC=nop             
  nop                                                                #  35    0x9bc5d  1      OPC=nop             
  nop                                                                #  36    0x9bc5e  1      OPC=nop             
  nop                                                                #  37    0x9bc5f  1      OPC=nop             
  nop                                                                #  38    0x9bc60  1      OPC=nop             
  nop                                                                #  39    0x9bc61  1      OPC=nop             
  nop                                                                #  40    0x9bc62  1      OPC=nop             
  nop                                                                #  41    0x9bc63  1      OPC=nop             
  nop                                                                #  42    0x9bc64  1      OPC=nop             
  nop                                                                #  43    0x9bc65  1      OPC=nop             
.L_9bc60:                                                            #        0x9bc66  0      OPC=<label>         
  movl %edi, %edi                                                    #  44    0x9bc66  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rdi,1), %edi                                       #  45    0x9bc68  5      OPC=movl_r32_m32    
  nop                                                                #  46    0x9bc6d  1      OPC=nop             
  nop                                                                #  47    0x9bc6e  1      OPC=nop             
  nop                                                                #  48    0x9bc6f  1      OPC=nop             
  nop                                                                #  49    0x9bc70  1      OPC=nop             
  nop                                                                #  50    0x9bc71  1      OPC=nop             
  nop                                                                #  51    0x9bc72  1      OPC=nop             
  nop                                                                #  52    0x9bc73  1      OPC=nop             
  nop                                                                #  53    0x9bc74  1      OPC=nop             
  nop                                                                #  54    0x9bc75  1      OPC=nop             
  nop                                                                #  55    0x9bc76  1      OPC=nop             
  nop                                                                #  56    0x9bc77  1      OPC=nop             
  nop                                                                #  57    0x9bc78  1      OPC=nop             
  nop                                                                #  58    0x9bc79  1      OPC=nop             
  nop                                                                #  59    0x9bc7a  1      OPC=nop             
  nop                                                                #  60    0x9bc7b  1      OPC=nop             
  nop                                                                #  61    0x9bc7c  1      OPC=nop             
  nop                                                                #  62    0x9bc7d  1      OPC=nop             
  nop                                                                #  63    0x9bc7e  1      OPC=nop             
  nop                                                                #  64    0x9bc7f  1      OPC=nop             
  nop                                                                #  65    0x9bc80  1      OPC=nop             
  callq .fflush                                                      #  66    0x9bc81  5      OPC=callq_label     
  cmpl $0x1, %eax                                                    #  67    0x9bc86  3      OPC=cmpl_r32_imm8   
  sbbl %eax, %eax                                                    #  68    0x9bc89  2      OPC=sbbl_r32_r32    
  addl $0x8, %esp                                                    #  69    0x9bc8b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  70    0x9bc8e  3      OPC=addq_r64_r64    
  popq %r11                                                          #  71    0x9bc91  2      OPC=popq_r64_1      
  notl %eax                                                          #  72    0x9bc93  2      OPC=notl_r32        
  andl $0xffffffe0, %r11d                                            #  73    0x9bc95  7      OPC=andl_r32_imm32  
  nop                                                                #  74    0x9bc9c  1      OPC=nop             
  nop                                                                #  75    0x9bc9d  1      OPC=nop             
  nop                                                                #  76    0x9bc9e  1      OPC=nop             
  nop                                                                #  77    0x9bc9f  1      OPC=nop             
  addq %r15, %r11                                                    #  78    0x9bca0  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  79    0x9bca3  3      OPC=jmpq_r64        
  nop                                                                #  80    0x9bca6  1      OPC=nop             
  nop                                                                #  81    0x9bca7  1      OPC=nop             
  nop                                                                #  82    0x9bca8  1      OPC=nop             
  nop                                                                #  83    0x9bca9  1      OPC=nop             
  nop                                                                #  84    0x9bcaa  1      OPC=nop             
  nop                                                                #  85    0x9bcab  1      OPC=nop             
  nop                                                                #  86    0x9bcac  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj

