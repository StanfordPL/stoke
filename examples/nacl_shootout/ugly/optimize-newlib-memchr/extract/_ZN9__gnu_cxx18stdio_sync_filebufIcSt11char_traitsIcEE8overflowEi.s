  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi, @function

#! file-offset 0xdc920
#! rip-offset  0x9c920
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi:  #        0x9c920  0      OPC=<label>         
  movl %edi, %eax                                                    #  1     0x9c920  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                    #  2     0x9c922  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  3     0x9c925  3      OPC=addq_r64_r64    
  cmpl $0xffffffff, %esi                                             #  4     0x9c928  6      OPC=cmpl_r32_imm32  
  nop                                                                #  5     0x9c92e  1      OPC=nop             
  nop                                                                #  6     0x9c92f  1      OPC=nop             
  nop                                                                #  7     0x9c930  1      OPC=nop             
  movl %esi, %edi                                                    #  8     0x9c931  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                    #  9     0x9c933  2      OPC=movl_r32_r32    
  je .L_9c960                                                        #  10    0x9c935  2      OPC=je_label        
  movl %eax, %eax                                                    #  11    0x9c937  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %esi                                       #  12    0x9c939  5      OPC=movl_r32_m32    
  addl $0x8, %esp                                                    #  13    0x9c93e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  14    0x9c941  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                                     #  15    0x9c944  2      OPC=xchgw_ax_r16    
  jmpq .putc                                                         #  16    0x9c946  5      OPC=jmpq_label_1    
  nop                                                                #  17    0x9c94b  1      OPC=nop             
  nop                                                                #  18    0x9c94c  1      OPC=nop             
  nop                                                                #  19    0x9c94d  1      OPC=nop             
  nop                                                                #  20    0x9c94e  1      OPC=nop             
  nop                                                                #  21    0x9c94f  1      OPC=nop             
  nop                                                                #  22    0x9c950  1      OPC=nop             
  nop                                                                #  23    0x9c951  1      OPC=nop             
  nop                                                                #  24    0x9c952  1      OPC=nop             
  nop                                                                #  25    0x9c953  1      OPC=nop             
  nop                                                                #  26    0x9c954  1      OPC=nop             
  nop                                                                #  27    0x9c955  1      OPC=nop             
  nop                                                                #  28    0x9c956  1      OPC=nop             
  nop                                                                #  29    0x9c957  1      OPC=nop             
  nop                                                                #  30    0x9c958  1      OPC=nop             
  nop                                                                #  31    0x9c959  1      OPC=nop             
  nop                                                                #  32    0x9c95a  1      OPC=nop             
  nop                                                                #  33    0x9c95b  1      OPC=nop             
  nop                                                                #  34    0x9c95c  1      OPC=nop             
  nop                                                                #  35    0x9c95d  1      OPC=nop             
  nop                                                                #  36    0x9c95e  1      OPC=nop             
  nop                                                                #  37    0x9c95f  1      OPC=nop             
  nop                                                                #  38    0x9c960  1      OPC=nop             
  nop                                                                #  39    0x9c961  1      OPC=nop             
  nop                                                                #  40    0x9c962  1      OPC=nop             
  nop                                                                #  41    0x9c963  1      OPC=nop             
  nop                                                                #  42    0x9c964  1      OPC=nop             
  nop                                                                #  43    0x9c965  1      OPC=nop             
.L_9c960:                                                            #        0x9c966  0      OPC=<label>         
  movl %eax, %eax                                                    #  44    0x9c966  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %edi                                       #  45    0x9c968  5      OPC=movl_r32_m32    
  nop                                                                #  46    0x9c96d  1      OPC=nop             
  nop                                                                #  47    0x9c96e  1      OPC=nop             
  nop                                                                #  48    0x9c96f  1      OPC=nop             
  nop                                                                #  49    0x9c970  1      OPC=nop             
  nop                                                                #  50    0x9c971  1      OPC=nop             
  nop                                                                #  51    0x9c972  1      OPC=nop             
  nop                                                                #  52    0x9c973  1      OPC=nop             
  nop                                                                #  53    0x9c974  1      OPC=nop             
  nop                                                                #  54    0x9c975  1      OPC=nop             
  nop                                                                #  55    0x9c976  1      OPC=nop             
  nop                                                                #  56    0x9c977  1      OPC=nop             
  nop                                                                #  57    0x9c978  1      OPC=nop             
  nop                                                                #  58    0x9c979  1      OPC=nop             
  nop                                                                #  59    0x9c97a  1      OPC=nop             
  nop                                                                #  60    0x9c97b  1      OPC=nop             
  nop                                                                #  61    0x9c97c  1      OPC=nop             
  nop                                                                #  62    0x9c97d  1      OPC=nop             
  nop                                                                #  63    0x9c97e  1      OPC=nop             
  nop                                                                #  64    0x9c97f  1      OPC=nop             
  nop                                                                #  65    0x9c980  1      OPC=nop             
  callq .fflush                                                      #  66    0x9c981  5      OPC=callq_label     
  cmpl $0x1, %eax                                                    #  67    0x9c986  3      OPC=cmpl_r32_imm8   
  sbbl %eax, %eax                                                    #  68    0x9c989  2      OPC=sbbl_r32_r32    
  addl $0x8, %esp                                                    #  69    0x9c98b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  70    0x9c98e  3      OPC=addq_r64_r64    
  popq %r11                                                          #  71    0x9c991  2      OPC=popq_r64_1      
  notl %eax                                                          #  72    0x9c993  2      OPC=notl_r32        
  andl $0xffffffe0, %r11d                                            #  73    0x9c995  7      OPC=andl_r32_imm32  
  nop                                                                #  74    0x9c99c  1      OPC=nop             
  nop                                                                #  75    0x9c99d  1      OPC=nop             
  nop                                                                #  76    0x9c99e  1      OPC=nop             
  nop                                                                #  77    0x9c99f  1      OPC=nop             
  addq %r15, %r11                                                    #  78    0x9c9a0  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  79    0x9c9a3  3      OPC=jmpq_r64        
  nop                                                                #  80    0x9c9a6  1      OPC=nop             
  nop                                                                #  81    0x9c9a7  1      OPC=nop             
  nop                                                                #  82    0x9c9a8  1      OPC=nop             
  nop                                                                #  83    0x9c9a9  1      OPC=nop             
  nop                                                                #  84    0x9c9aa  1      OPC=nop             
  nop                                                                #  85    0x9c9ab  1      OPC=nop             
  nop                                                                #  86    0x9c9ac  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi

