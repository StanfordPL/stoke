  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi, @function

#! file-offset 0xdc200
#! rip-offset  0x9c200
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi:  #        0x9c200  0      OPC=<label>         
  movl %edi, %eax                                                    #  1     0x9c200  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                    #  2     0x9c202  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  3     0x9c205  3      OPC=addq_r64_r64    
  cmpl $0xffffffff, %esi                                             #  4     0x9c208  6      OPC=cmpl_r32_imm32  
  nop                                                                #  5     0x9c20e  1      OPC=nop             
  nop                                                                #  6     0x9c20f  1      OPC=nop             
  nop                                                                #  7     0x9c210  1      OPC=nop             
  movl %esi, %edi                                                    #  8     0x9c211  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                    #  9     0x9c213  2      OPC=movl_r32_r32    
  je .L_9c240                                                        #  10    0x9c215  2      OPC=je_label        
  movl %eax, %eax                                                    #  11    0x9c217  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %esi                                       #  12    0x9c219  5      OPC=movl_r32_m32    
  addl $0x8, %esp                                                    #  13    0x9c21e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  14    0x9c221  3      OPC=addq_r64_r64    
  xchgw %ax, %ax                                                     #  15    0x9c224  2      OPC=xchgw_ax_r16    
  jmpq .putc                                                         #  16    0x9c226  5      OPC=jmpq_label_1    
  nop                                                                #  17    0x9c22b  1      OPC=nop             
  nop                                                                #  18    0x9c22c  1      OPC=nop             
  nop                                                                #  19    0x9c22d  1      OPC=nop             
  nop                                                                #  20    0x9c22e  1      OPC=nop             
  nop                                                                #  21    0x9c22f  1      OPC=nop             
  nop                                                                #  22    0x9c230  1      OPC=nop             
  nop                                                                #  23    0x9c231  1      OPC=nop             
  nop                                                                #  24    0x9c232  1      OPC=nop             
  nop                                                                #  25    0x9c233  1      OPC=nop             
  nop                                                                #  26    0x9c234  1      OPC=nop             
  nop                                                                #  27    0x9c235  1      OPC=nop             
  nop                                                                #  28    0x9c236  1      OPC=nop             
  nop                                                                #  29    0x9c237  1      OPC=nop             
  nop                                                                #  30    0x9c238  1      OPC=nop             
  nop                                                                #  31    0x9c239  1      OPC=nop             
  nop                                                                #  32    0x9c23a  1      OPC=nop             
  nop                                                                #  33    0x9c23b  1      OPC=nop             
  nop                                                                #  34    0x9c23c  1      OPC=nop             
  nop                                                                #  35    0x9c23d  1      OPC=nop             
  nop                                                                #  36    0x9c23e  1      OPC=nop             
  nop                                                                #  37    0x9c23f  1      OPC=nop             
  nop                                                                #  38    0x9c240  1      OPC=nop             
  nop                                                                #  39    0x9c241  1      OPC=nop             
  nop                                                                #  40    0x9c242  1      OPC=nop             
  nop                                                                #  41    0x9c243  1      OPC=nop             
  nop                                                                #  42    0x9c244  1      OPC=nop             
  nop                                                                #  43    0x9c245  1      OPC=nop             
.L_9c240:                                                            #        0x9c246  0      OPC=<label>         
  movl %eax, %eax                                                    #  44    0x9c246  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %edi                                       #  45    0x9c248  5      OPC=movl_r32_m32    
  nop                                                                #  46    0x9c24d  1      OPC=nop             
  nop                                                                #  47    0x9c24e  1      OPC=nop             
  nop                                                                #  48    0x9c24f  1      OPC=nop             
  nop                                                                #  49    0x9c250  1      OPC=nop             
  nop                                                                #  50    0x9c251  1      OPC=nop             
  nop                                                                #  51    0x9c252  1      OPC=nop             
  nop                                                                #  52    0x9c253  1      OPC=nop             
  nop                                                                #  53    0x9c254  1      OPC=nop             
  nop                                                                #  54    0x9c255  1      OPC=nop             
  nop                                                                #  55    0x9c256  1      OPC=nop             
  nop                                                                #  56    0x9c257  1      OPC=nop             
  nop                                                                #  57    0x9c258  1      OPC=nop             
  nop                                                                #  58    0x9c259  1      OPC=nop             
  nop                                                                #  59    0x9c25a  1      OPC=nop             
  nop                                                                #  60    0x9c25b  1      OPC=nop             
  nop                                                                #  61    0x9c25c  1      OPC=nop             
  nop                                                                #  62    0x9c25d  1      OPC=nop             
  nop                                                                #  63    0x9c25e  1      OPC=nop             
  nop                                                                #  64    0x9c25f  1      OPC=nop             
  nop                                                                #  65    0x9c260  1      OPC=nop             
  callq .fflush                                                      #  66    0x9c261  5      OPC=callq_label     
  cmpl $0x1, %eax                                                    #  67    0x9c266  3      OPC=cmpl_r32_imm8   
  sbbl %eax, %eax                                                    #  68    0x9c269  2      OPC=sbbl_r32_r32    
  addl $0x8, %esp                                                    #  69    0x9c26b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  70    0x9c26e  3      OPC=addq_r64_r64    
  popq %r11                                                          #  71    0x9c271  2      OPC=popq_r64_1      
  notl %eax                                                          #  72    0x9c273  2      OPC=notl_r32        
  andl $0xffffffe0, %r11d                                            #  73    0x9c275  7      OPC=andl_r32_imm32  
  nop                                                                #  74    0x9c27c  1      OPC=nop             
  nop                                                                #  75    0x9c27d  1      OPC=nop             
  nop                                                                #  76    0x9c27e  1      OPC=nop             
  nop                                                                #  77    0x9c27f  1      OPC=nop             
  addq %r15, %r11                                                    #  78    0x9c280  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  79    0x9c283  3      OPC=jmpq_r64        
  nop                                                                #  80    0x9c286  1      OPC=nop             
  nop                                                                #  81    0x9c287  1      OPC=nop             
  nop                                                                #  82    0x9c288  1      OPC=nop             
  nop                                                                #  83    0x9c289  1      OPC=nop             
  nop                                                                #  84    0x9c28a  1      OPC=nop             
  nop                                                                #  85    0x9c28b  1      OPC=nop             
  nop                                                                #  86    0x9c28c  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE8overflowEi

