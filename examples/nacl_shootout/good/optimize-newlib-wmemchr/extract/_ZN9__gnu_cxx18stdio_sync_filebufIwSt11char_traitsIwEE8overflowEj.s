  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj, @function

#! file-offset 0xdbf20
#! rip-offset  0x9bf20
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj:  #        0x9bf20  0      OPC=<label>         
  subl $0x8, %esp                                                    #  1     0x9bf20  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  2     0x9bf23  3      OPC=addq_r64_r64    
  cmpl $0xffffffff, %esi                                             #  3     0x9bf26  6      OPC=cmpl_r32_imm32  
  nop                                                                #  4     0x9bf2c  1      OPC=nop             
  nop                                                                #  5     0x9bf2d  1      OPC=nop             
  nop                                                                #  6     0x9bf2e  1      OPC=nop             
  movl %esi, %eax                                                    #  7     0x9bf2f  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                    #  8     0x9bf31  2      OPC=movl_r32_r32    
  je .L_9bf60                                                        #  9     0x9bf33  2      OPC=je_label        
  movl %edi, %edi                                                    #  10    0x9bf35  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rdi,1), %esi                                       #  11    0x9bf37  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                    #  12    0x9bf3c  2      OPC=movl_r32_r32    
  addl $0x8, %esp                                                    #  13    0x9bf3e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  14    0x9bf41  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                                     #  15    0x9bf44  2      OPC=xchgw_ax_r16    
  jmpq .putwc                                                        #  16    0x9bf46  5      OPC=jmpq_label_1    
  nop                                                                #  17    0x9bf4b  1      OPC=nop             
  nop                                                                #  18    0x9bf4c  1      OPC=nop             
  nop                                                                #  19    0x9bf4d  1      OPC=nop             
  nop                                                                #  20    0x9bf4e  1      OPC=nop             
  nop                                                                #  21    0x9bf4f  1      OPC=nop             
  nop                                                                #  22    0x9bf50  1      OPC=nop             
  nop                                                                #  23    0x9bf51  1      OPC=nop             
  nop                                                                #  24    0x9bf52  1      OPC=nop             
  nop                                                                #  25    0x9bf53  1      OPC=nop             
  nop                                                                #  26    0x9bf54  1      OPC=nop             
  nop                                                                #  27    0x9bf55  1      OPC=nop             
  nop                                                                #  28    0x9bf56  1      OPC=nop             
  nop                                                                #  29    0x9bf57  1      OPC=nop             
  nop                                                                #  30    0x9bf58  1      OPC=nop             
  nop                                                                #  31    0x9bf59  1      OPC=nop             
  nop                                                                #  32    0x9bf5a  1      OPC=nop             
  nop                                                                #  33    0x9bf5b  1      OPC=nop             
  nop                                                                #  34    0x9bf5c  1      OPC=nop             
  nop                                                                #  35    0x9bf5d  1      OPC=nop             
  nop                                                                #  36    0x9bf5e  1      OPC=nop             
  nop                                                                #  37    0x9bf5f  1      OPC=nop             
  nop                                                                #  38    0x9bf60  1      OPC=nop             
  nop                                                                #  39    0x9bf61  1      OPC=nop             
  nop                                                                #  40    0x9bf62  1      OPC=nop             
  nop                                                                #  41    0x9bf63  1      OPC=nop             
  nop                                                                #  42    0x9bf64  1      OPC=nop             
  nop                                                                #  43    0x9bf65  1      OPC=nop             
.L_9bf60:                                                            #        0x9bf66  0      OPC=<label>         
  movl %edi, %edi                                                    #  44    0x9bf66  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rdi,1), %edi                                       #  45    0x9bf68  5      OPC=movl_r32_m32    
  nop                                                                #  46    0x9bf6d  1      OPC=nop             
  nop                                                                #  47    0x9bf6e  1      OPC=nop             
  nop                                                                #  48    0x9bf6f  1      OPC=nop             
  nop                                                                #  49    0x9bf70  1      OPC=nop             
  nop                                                                #  50    0x9bf71  1      OPC=nop             
  nop                                                                #  51    0x9bf72  1      OPC=nop             
  nop                                                                #  52    0x9bf73  1      OPC=nop             
  nop                                                                #  53    0x9bf74  1      OPC=nop             
  nop                                                                #  54    0x9bf75  1      OPC=nop             
  nop                                                                #  55    0x9bf76  1      OPC=nop             
  nop                                                                #  56    0x9bf77  1      OPC=nop             
  nop                                                                #  57    0x9bf78  1      OPC=nop             
  nop                                                                #  58    0x9bf79  1      OPC=nop             
  nop                                                                #  59    0x9bf7a  1      OPC=nop             
  nop                                                                #  60    0x9bf7b  1      OPC=nop             
  nop                                                                #  61    0x9bf7c  1      OPC=nop             
  nop                                                                #  62    0x9bf7d  1      OPC=nop             
  nop                                                                #  63    0x9bf7e  1      OPC=nop             
  nop                                                                #  64    0x9bf7f  1      OPC=nop             
  nop                                                                #  65    0x9bf80  1      OPC=nop             
  callq .fflush                                                      #  66    0x9bf81  5      OPC=callq_label     
  cmpl $0x1, %eax                                                    #  67    0x9bf86  3      OPC=cmpl_r32_imm8   
  sbbl %eax, %eax                                                    #  68    0x9bf89  2      OPC=sbbl_r32_r32    
  addl $0x8, %esp                                                    #  69    0x9bf8b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  70    0x9bf8e  3      OPC=addq_r64_r64    
  popq %r11                                                          #  71    0x9bf91  2      OPC=popq_r64_1      
  notl %eax                                                          #  72    0x9bf93  2      OPC=notl_r32        
  andl $0xffffffe0, %r11d                                            #  73    0x9bf95  7      OPC=andl_r32_imm32  
  nop                                                                #  74    0x9bf9c  1      OPC=nop             
  nop                                                                #  75    0x9bf9d  1      OPC=nop             
  nop                                                                #  76    0x9bf9e  1      OPC=nop             
  nop                                                                #  77    0x9bf9f  1      OPC=nop             
  addq %r15, %r11                                                    #  78    0x9bfa0  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  79    0x9bfa3  3      OPC=jmpq_r64        
  nop                                                                #  80    0x9bfa6  1      OPC=nop             
  nop                                                                #  81    0x9bfa7  1      OPC=nop             
  nop                                                                #  82    0x9bfa8  1      OPC=nop             
  nop                                                                #  83    0x9bfa9  1      OPC=nop             
  nop                                                                #  84    0x9bfaa  1      OPC=nop             
  nop                                                                #  85    0x9bfab  1      OPC=nop             
  nop                                                                #  86    0x9bfac  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE8overflowEj

